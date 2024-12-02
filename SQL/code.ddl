--FRONT END

--Create a DB User with restricted IP to only Metabase

CREATE USER 'metabase'@'34.73.154.41' IDENTIFIED BY 'P@$$w0rd';

--Update Packages

sudo apt update
sudo apt upgrade

--Install OpenJDK FOR JAVA

sudo apt install openjdk-8-jdk

--CREATING COMPUTE INSTANCE

gcloud compute instances create metabase \
--image-family ubuntu-2204-lts \
--image-project ubuntu-os-cloud \
--machine-type n1-standard-1 \
--description metabase \
--zone us-east1-b \
--metadata=startup-script='#! /bin/bash
  apt update -y
  apt install default-jre -y
  cd /opt
  curl -L https://downloads.metabase.com/v0.47.9/metabase.jar -o metabase.jar


wget https://downloads.metabase.com/v0.47.9metabase.jar



--Creating a Firewall rule to allow the metabase connection through 3000 port

gcloud compute \
--project="double-rigging-404816" firewall-rules create default-allow-metabase \
--direction=INGRESS \
--priority=1000 \
--network=default \
--action=ALLOW \
--rules=tcp:3000 \
--source-ranges="10.142.0.3, 34.70.200.13, 174.204.132.41, 34.139.17.33, 72.229.230.164, 146.111.144.170, 148.75.50.173, 34.73.154.41" \
--target-tags=allow-metabase

--Connecting to the metabase

java -jar /opt/metabase.jar

http://34.73.154.41/:3000/setup



/* Creating View for the total goals scored by each team */

CREATE VIEW total_goals_by_team_view AS
SELECT
    team,
    COALESCE(SUM(goals_team1), 0) + COALESCE(SUM(goals_team2), 0) AS total_goals
FROM (
    SELECT team1 AS team, goals_team1 AS goals_team1, NULL AS goals_team2
    FROM Fifa
    UNION ALL
    SELECT team2 AS team, NULL AS goals_team1, goals_team2 AS goals_team2
    FROM Fifa
) AS subquery
GROUP BY team
ORDER BY total_goals DESC;

/* Creating View for average possession for each team */

CREATE VIEW possession_analysis_view AS
SELECT
    team,
    AVG(possession) AS avg_possession
FROM (
    SELECT
        team1 AS team,
        possession_team1 AS possession
    FROM
        Fifa
    UNION
    SELECT
        team2 AS team,
        possession_team2 AS possession
    FROM
        Fifa
) AS subquery
GROUP BY
    team
ORDER BY
    avg_possession DESC;

/* Creating a View which shows the average goals per each matches played by each team */

CREATE VIEW average_goals_per_match_view AS
SELECT
    team,
    COALESCE(SUM(goals_team1), 0) + COALESCE(SUM(goals_team2), 0) AS total_goals,
    COALESCE((SUM(goals_team1) + SUM(goals_team2)) / COUNT(*), 0) AS average_goals_per_match
FROM (
    SELECT team1 AS team, goals_team1, NULL AS goals_team2
    FROM Fifa
    UNION ALL
    SELECT team2 AS team, NULL AS goals_team1, goals_team2
    FROM Fifa
) AS subquery
GROUP BY team
ORDER BY average_goals_per_match DESC;



/* Creating a view which shows the comparison of shots made and goals scored by each team */

CREATE VIEW shots_vs_goals_comparison AS
SELECT
    team,
    COALESCE(SUM(on_target_attempts), 0) AS total_shots_on_target,
    COALESCE(SUM(total_goals), 0) AS total_goals
FROM (
    SELECT team1 AS team, on_target_attempts_team1 AS on_target_attempts, goals_team1 AS total_goals
    FROM Fifa
    UNION ALL
    SELECT team2 AS team, on_target_attempts_team2 AS on_target_attempts, goals_team2 AS total_goals
    FROM Fifa
) AS subquery
GROUP BY team
ORDER BY total_shots_on_target DESC, team; 



/* Creating a view to show the conversion rate bases on the last view */

CREATE VIEW conversion_rate_view AS
SELECT
    team,
    COALESCE(SUM(total_goals) / NULLIF(SUM(on_target_attempts), 0), 0) AS conversion_rate
FROM (
    SELECT team1 AS team, on_target_attempts_team1 AS on_target_attempts, goals_team1 AS total_goals
    FROM Fifa
    UNION ALL
    SELECT team2 AS team, on_target_attempts_team2 AS on_target_attempts, goals_team2 AS total_goals
    FROM Fifa
) AS subquery
GROUP BY team
ORDER BY conversion_rate DESC, team;

/* Creating a view to show the passing accuracy for each team based on team passes and team completed passes */


CREATE VIEW passing_accuracy_view AS
SELECT
    team,
    AVG(passing_accuracy) AS avg_passing_accuracy
FROM (
    SELECT
        team1 AS team,
        (SUM(passes_completed_team1) / NULLIF(SUM(passes_team1), 0)) * 100.0 AS passing_accuracy
    FROM
        Fifa
    GROUP BY
        team1
    UNION
    SELECT
        team2 AS team,
        (SUM(passes_completed_team2) / NULLIF(SUM(passes_team2), 0)) * 100.0 AS passing_accuracy
    FROM
        Fifa
    GROUP BY
        team2
) AS subquery
GROUP BY
    team
ORDER BY
    avg_passing_accuracy DESC
LIMIT 32;





/* BACKEND */


/* Create the database system */
gcloud sql instances create final-project3 \
--database-version MYSQL_8_0 \
--root-password 'P@$$w0rd' \
--authorized-networks 148.75.50.173 \
--storage-type SSD \
--storage-size 10GB \U
--tier=db-n1-standard-1 \
--region=us-east1




/* Used for connection, and including the local-infile which allows us to upload csv file*/
mysql \
--user=root \
--host=34.23.225.89 \
--ssl-ca=server-ca.pem \
--ssl-cert=client-cert.pem \
--ssl-key=client-key.pem \
--password \
--local-infile=1




/*Import the data from a comma separated values file (csv) SQL Mode*/
LOAD DATA LOCAL INFILE 'Fifa.csv' 
INTO TABLE finals.Fifa
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;




/* Creating the Fifa table with all the fields from the CSV files */

CREATE TABLE Fifa(
    team1 VARCHAR(255),
    team2 VARCHAR(255),
    possession_team1 DECIMAL(5,2),
    possession_team2 DECIMAL(5,2),
    possession_in_contest DECIMAL(5,2),
    goals_team1 INT,
    goals_team2 INT,
    date DATE,
    hour TIME,
    category VARCHAR(255),
    total_attempts_team1 INT,
    total_attempts_team2 INT,
    conceded_team1 INT,
    conceded_team2 INT,
    goal_inside_penalty_area_team1 INT,
    goal_inside_penalty_area_team2 INT,
    goal_outside_penalty_area_team1 INT,
    goal_outside_penalty_area_team2 INT,
    assists_team1 INT,
    assists_team2 INT,
    on_target_attempts_team1 INT,
    on_target_attempts_team2 INT,
    off_target_attempts_team1 INT,
    off_target_attempts_team2 INT,
    attempts_inside_penalty_area_team1 INT,
    attempts_inside_penalty_area_team2 INT,
    attempts_outside_penalty_area_team1 INT,
    attempts_outside_penalty_area_team2 INT,
    left_channel_team1 INT,
    left_channel_team2 INT,
    left_inside_channel_team1 INT,
    left_inside_channel_team2 INT,
    central_channel_team1 INT,
    central_channel_team2 INT,
    right_inside_channel_team1 INT,
    right_inside_channel_team2 INT,
    right_channel_team1 INT,
    right_channel_team2 INT,
    total_offers_to_receive_team1 INT,
    total_offers_to_receive_team2 INT,
    inbehind_offers_to_receive_team1 INT,
    inbehind_offers_to_receive_team2 INT,
    inbetween_offers_to_receive_team1 INT,
    inbetween_offers_to_receive_team2 INT,
    infront_offers_to_receive_team1 INT,
    infront_offers_to_receive_team2 INT,
    receptions_between_midfield_and_defensive_lines_team1 INT,
    receptions_between_midfield_and_defensive_lines_team2 INT,
    attempted_line_breaks_team1 INT,
    attempted_line_breaks_team2 INT,
    completed_line_breaks_team1 INT,
    completed_line_breaks_team2 INT,
    attempted_defensive_line_breaks_team1 INT,
    attempted_defensive_line_breaks_team2 INT,
    completed_defensive_line_breaks_team1 INT,
    completed_defensive_line_breaks_team2 INT,
    yellow_cards_team1 INT,
    yellow_cards_team2 INT,
    red_cards_team1 INT,
    red_cards_team2 INT,
    fouls_against_team1 INT,
    fouls_against_team2 INT,
    offsides_team1 INT,
    offsides_team2 INT,
    passes_team1 INT,
    passes_team2 INT,
    passes_completed_team1 INT,
    passes_completed_team2 INT,
    crosses_team1 INT,
    crosses_team2 INT,
    crosses_completed_team1 INT,
    crosses_completed_team2 INT,
    switches_of_play_completed_team1 INT,
    switches_of_play_completed_team2 INT,
    corners_team1 INT,
    corners_team2 INT,
    free_kicks_team1 INT,
    free_kicks_team2 INT,
    penalties_scored_team1 INT,
    penalties_scored_team2 INT,
    goal_preventions_team1 INT,
    goal_preventions_team2 INT,
    own_goals_team1 INT,
    own_goals_team2 INT,
    forced_turnovers_team1 INT,
    forced_turnovers_team2 INT,
    defensive_pressures_applied_team1 INT,
    defensive_pressures_applied_team2 INT
);




/* Creating the procedure for the Fifa Table. Which will restore the original table if it was mistakenly dropped. */


DELIMITER ||

CREATE PROCEDURE Fifatable ()
BEGIN
 
    CREATE TABLE IF NOT EXISTS Fifa (
    team1 VARCHAR(255),
    team2 VARCHAR(255),
    possession_team1 DECIMAL(5,2),
    possession_team2 DECIMAL(5,2),
    possession_in_contest DECIMAL(5,2),
    goals_team1 INT,
    goals_team2 INT,
    date DATE,
    hour TIME,
    category VARCHAR(255),
    total_attempts_team1 INT,
    total_attempts_team2 INT,
    conceded_team1 INT,
    conceded_team2 INT,
    goal_inside_penalty_area_team1 INT,
    goal_inside_penalty_area_team2 INT,
    goal_outside_penalty_area_team1 INT,
    goal_outside_penalty_area_team2 INT,
    assists_team1 INT,
    assists_team2 INT,
    on_target_attempts_team1 INT,
    on_target_attempts_team2 INT,
    off_target_attempts_team1 INT,
    off_target_attempts_team2 INT,
    attempts_inside_penalty_area_team1 INT,
    attempts_inside_penalty_area_team2 INT,
    attempts_outside_penalty_area_team1 INT,
    attempts_outside_penalty_area_team2 INT,
    left_channel_team1 INT,
    left_channel_team2 INT,
    left_inside_channel_team1 INT,
    left_inside_channel_team2 INT,
    central_channel_team1 INT,
    central_channel_team2 INT,
    right_inside_channel_team1 INT,
    right_inside_channel_team2 INT,
    right_channel_team1 INT,
    right_channel_team2 INT,
    total_offers_to_receive_team1 INT,
    total_offers_to_receive_team2 INT,
    inbehind_offers_to_receive_team1 INT,
    inbehind_offers_to_receive_team2 INT,
    inbetween_offers_to_receive_team1 INT,
    inbetween_offers_to_receive_team2 INT,
    infront_offers_to_receive_team1 INT,
    infront_offers_to_receive_team2 INT,
    receptions_between_midfield_and_defensive_lines_team1 INT,
    receptions_between_midfield_and_defensive_lines_team2 INT,
    attempted_line_breaks_team1 INT,
    attempted_line_breaks_team2 INT,
    completed_line_breaks_team1 INT,
    completed_line_breaks_team2 INT,
    attempted_defensive_line_breaks_team1 INT,
    attempted_defensive_line_breaks_team2 INT,
    completed_defensive_line_breaks_team1 INT,
    completed_defensive_line_breaks_team2 INT,
    yellow_cards_team1 INT,
    yellow_cards_team2 INT,
    red_cards_team1 INT,
    red_cards_team2 INT,
    fouls_against_team1 INT,
    fouls_against_team2 INT,
    offsides_team1 INT,
    offsides_team2 INT,
    passes_team1 INT,
    passes_team2 INT,
    passes_completed_team1 INT,
    passes_completed_team2 INT,
    crosses_team1 INT,
    crosses_team2 INT,
    crosses_completed_team1 INT,
    crosses_completed_team2 INT,
    switches_of_play_completed_team1 INT,
    switches_of_play_completed_team2 INT,
    corners_team1 INT,
    corners_team2 INT,
    free_kicks_team1 INT,
    free_kicks_team2 INT,
    penalties_scored_team1 INT,
    penalties_scored_team2 INT,
    goal_preventions_team1 INT,
    goal_preventions_team2 INT,
    own_goals_team1 INT,
    own_goals_team2 INT,
    forced_turnovers_team1 INT,
    forced_turnovers_team2 INT,
    defensive_pressures_applied_team1 INT,
    defensive_pressures_applied_team2 INT
);
END ||

DELIMITER;


CALL Fifatable()

--Creating a backup file
mysqldump -u root -h 34.23.225.89 --set-gtid-purged=OFF --single-transaction --triggers --routines --events -p  finals > Group3.sql



