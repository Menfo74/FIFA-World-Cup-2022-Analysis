-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: 34.23.225.89    Database: finals
-- ------------------------------------------------------
-- Server version	8.0.31-google

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Fifa`
--

DROP TABLE IF EXISTS `Fifa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Fifa` (
  `team1` varchar(255) DEFAULT NULL,
  `team2` varchar(255) DEFAULT NULL,
  `possession_team1` decimal(5,2) DEFAULT NULL,
  `possession_team2` decimal(5,2) DEFAULT NULL,
  `possession_in_contest` decimal(5,2) DEFAULT NULL,
  `goals_team1` int DEFAULT NULL,
  `goals_team2` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `hour` time DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `total_attempts_team1` int DEFAULT NULL,
  `total_attempts_team2` int DEFAULT NULL,
  `conceded_team1` int DEFAULT NULL,
  `conceded_team2` int DEFAULT NULL,
  `goal_inside_penalty_area_team1` int DEFAULT NULL,
  `goal_inside_penalty_area_team2` int DEFAULT NULL,
  `goal_outside_penalty_area_team1` int DEFAULT NULL,
  `goal_outside_penalty_area_team2` int DEFAULT NULL,
  `assists_team1` int DEFAULT NULL,
  `assists_team2` int DEFAULT NULL,
  `on_target_attempts_team1` int DEFAULT NULL,
  `on_target_attempts_team2` int DEFAULT NULL,
  `off_target_attempts_team1` int DEFAULT NULL,
  `off_target_attempts_team2` int DEFAULT NULL,
  `attempts_inside_penalty_area_team1` int DEFAULT NULL,
  `attempts_inside_penalty_area_team2` int DEFAULT NULL,
  `attempts_outside_penalty_area_team1` int DEFAULT NULL,
  `attempts_outside_penalty_area_team2` int DEFAULT NULL,
  `left_channel_team1` int DEFAULT NULL,
  `left_channel_team2` int DEFAULT NULL,
  `left_inside_channel_team1` int DEFAULT NULL,
  `left_inside_channel_team2` int DEFAULT NULL,
  `central_channel_team1` int DEFAULT NULL,
  `central_channel_team2` int DEFAULT NULL,
  `right_inside_channel_team1` int DEFAULT NULL,
  `right_inside_channel_team2` int DEFAULT NULL,
  `right_channel_team1` int DEFAULT NULL,
  `right_channel_team2` int DEFAULT NULL,
  `total_offers_to_receive_team1` int DEFAULT NULL,
  `total_offers_to_receive_team2` int DEFAULT NULL,
  `inbehind_offers_to_receive_team1` int DEFAULT NULL,
  `inbehind_offers_to_receive_team2` int DEFAULT NULL,
  `inbetween_offers_to_receive_team1` int DEFAULT NULL,
  `inbetween_offers_to_receive_team2` int DEFAULT NULL,
  `infront_offers_to_receive_team1` int DEFAULT NULL,
  `infront_offers_to_receive_team2` int DEFAULT NULL,
  `receptions_between_midfield_and_defensive_lines_team1` int DEFAULT NULL,
  `receptions_between_midfield_and_defensive_lines_team2` int DEFAULT NULL,
  `attempted_line_breaks_team1` int DEFAULT NULL,
  `attempted_line_breaks_team2` int DEFAULT NULL,
  `completed_line_breaks_team1` int DEFAULT NULL,
  `completed_line_breaks_team2` int DEFAULT NULL,
  `attempted_defensive_line_breaks_team1` int DEFAULT NULL,
  `attempted_defensive_line_breaks_team2` int DEFAULT NULL,
  `completed_defensive_line_breaks_team1` int DEFAULT NULL,
  `completed_defensive_line_breaks_team2` int DEFAULT NULL,
  `yellow_cards_team1` int DEFAULT NULL,
  `yellow_cards_team2` int DEFAULT NULL,
  `red_cards_team1` int DEFAULT NULL,
  `red_cards_team2` int DEFAULT NULL,
  `fouls_against_team1` int DEFAULT NULL,
  `fouls_against_team2` int DEFAULT NULL,
  `offsides_team1` int DEFAULT NULL,
  `offsides_team2` int DEFAULT NULL,
  `passes_team1` int DEFAULT NULL,
  `passes_team2` int DEFAULT NULL,
  `passes_completed_team1` int DEFAULT NULL,
  `passes_completed_team2` int DEFAULT NULL,
  `crosses_team1` int DEFAULT NULL,
  `crosses_team2` int DEFAULT NULL,
  `crosses_completed_team1` int DEFAULT NULL,
  `crosses_completed_team2` int DEFAULT NULL,
  `switches_of_play_completed_team1` int DEFAULT NULL,
  `switches_of_play_completed_team2` int DEFAULT NULL,
  `corners_team1` int DEFAULT NULL,
  `corners_team2` int DEFAULT NULL,
  `free_kicks_team1` int DEFAULT NULL,
  `free_kicks_team2` int DEFAULT NULL,
  `penalties_scored_team1` int DEFAULT NULL,
  `penalties_scored_team2` int DEFAULT NULL,
  `goal_preventions_team1` int DEFAULT NULL,
  `goal_preventions_team2` int DEFAULT NULL,
  `own_goals_team1` int DEFAULT NULL,
  `own_goals_team2` int DEFAULT NULL,
  `forced_turnovers_team1` int DEFAULT NULL,
  `forced_turnovers_team2` int DEFAULT NULL,
  `defensive_pressures_applied_team1` int DEFAULT NULL,
  `defensive_pressures_applied_team2` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fifa`
--

LOCK TABLES `Fifa` WRITE;
/*!40000 ALTER TABLE `Fifa` DISABLE KEYS */;
INSERT INTO `Fifa` VALUES ('QATAR','ECUADOR',42.00,50.00,8.00,0,2,'0000-00-00','00:00:17','Group A',5,6,2,0,0,2,0,0,0,1,0,3,5,3,2,4,3,2,15,8,0,7,3,6,1,4,9,6,520,532,116,127,235,187,169,218,5,8,136,155,86,99,9,13,4,7,4,2,0,0,15,15,3,4,450,480,381,409,9,14,4,4,9,9,1,3,19,17,0,1,6,5,0,0,52,72,256,279),('ENGLAND','IRAN',72.00,19.00,9.00,6,2,'0000-00-00','00:00:14','Group B',13,8,2,6,6,2,0,0,6,1,7,3,3,4,10,6,3,2,11,3,5,0,2,3,3,1,11,0,1061,212,207,53,386,86,468,73,16,4,238,101,178,45,25,7,16,4,0,2,0,0,9,14,2,2,809,224,730,154,23,8,7,1,12,3,8,0,16,10,0,1,8,13,0,0,63,72,139,416),('SENEGAL','NETHERLANDS',44.00,45.00,11.00,0,2,'0000-00-00','00:00:17','Group A',14,9,2,0,0,2,0,0,0,1,3,3,8,5,7,5,7,4,12,11,4,2,2,2,4,7,13,20,502,506,123,117,230,191,149,198,15,14,151,162,89,96,22,22,15,10,2,1,0,0,13,13,2,1,383,438,313,374,19,25,7,8,9,6,6,7,14,14,0,0,9,15,0,0,63,73,263,251),('UNITED STATES','WALES',51.00,39.00,10.00,1,1,'0000-00-00','00:00:20','Group B',6,7,1,1,1,1,0,0,1,0,1,3,4,3,4,5,2,2,14,7,5,2,4,5,4,2,11,7,725,436,149,100,336,172,240,164,12,9,199,174,146,103,23,17,15,8,4,2,0,0,15,10,1,1,569,409,509,321,31,15,4,6,5,8,5,3,11,15,0,1,7,7,0,0,81,72,242,292),('ARGENTINA','SAUDI ARABIA',64.00,24.00,12.00,1,2,'0000-00-00','00:00:11','Group C',14,3,2,1,1,2,0,0,0,1,6,2,5,0,10,3,4,0,12,3,4,2,5,3,8,3,18,8,650,268,157,69,177,131,316,68,26,9,191,137,127,68,39,15,25,7,0,6,0,0,7,21,10,1,610,267,529,190,29,9,12,2,5,7,9,2,22,16,1,0,4,14,0,0,65,80,163,361),('DENMARK','TUNISIA',55.00,33.00,12.00,0,0,'0000-00-00','00:00:14','Group D',11,11,0,0,0,0,0,0,0,0,4,1,4,7,7,6,4,5,17,9,4,2,7,2,6,3,18,6,681,477,152,89,276,204,253,184,14,7,190,174,136,85,21,17,12,6,2,1,0,0,9,10,1,1,594,387,523,302,27,13,10,3,11,1,11,9,11,10,0,0,11,11,0,0,76,73,226,287),('MEXICO','POLAND',54.00,31.00,15.00,0,0,'0000-00-00','00:00:17','Group C',13,8,0,0,0,0,0,0,0,0,4,1,5,4,10,7,3,1,20,8,6,6,1,6,3,4,27,13,547,296,128,72,202,101,217,123,20,3,170,150,117,82,32,12,19,2,2,1,0,0,14,16,3,0,485,322,422,241,33,10,8,2,9,1,6,5,16,16,0,0,8,15,0,0,61,70,193,290),('FRANCE','AUSTRALIA',56.00,35.00,9.00,4,1,'0000-00-00','00:00:20','Group D',22,4,1,4,4,1,0,0,4,1,7,1,9,3,18,2,4,2,30,11,6,2,3,5,8,1,19,9,691,521,150,95,182,208,359,218,26,7,173,133,135,84,32,15,27,7,0,3,0,0,5,11,0,0,734,466,672,399,34,9,17,2,6,5,8,1,11,5,0,0,4,22,0,0,64,56,250,316),('MOROCCO','CROATIA',32.00,57.00,12.00,0,0,'0000-00-00','00:00:11','Group F',8,6,0,0,0,0,0,0,0,0,2,2,0,2,3,4,5,2,8,12,1,3,6,6,0,5,11,7,498,626,106,99,193,197,199,330,4,9,142,169,81,116,10,18,4,9,1,0,0,0,17,11,0,1,360,667,290,592,10,19,1,4,6,7,0,5,12,17,0,0,7,8,0,0,87,58,391,217),('GERMANY','JAPAN',65.00,22.00,13.00,1,2,'0000-00-00','00:00:14','Group E',25,10,2,1,1,2,0,0,0,1,9,3,11,6,15,10,10,0,24,5,9,0,14,3,5,3,21,11,865,346,199,102,366,146,300,98,19,10,241,113,185,70,23,17,20,11,0,0,0,0,6,14,4,4,820,261,743,207,28,16,9,3,4,2,6,6,17,10,1,0,12,26,0,0,55,87,164,487),('SPAIN','COSTA RICA',74.00,17.00,9.00,7,0,'0000-00-00','00:00:17','Group E',17,0,0,7,7,0,0,0,4,0,7,0,8,0,12,0,5,0,30,5,4,0,8,1,6,0,12,1,1085,250,180,52,418,104,487,94,23,1,276,119,233,58,34,11,22,1,0,2,0,0,8,12,3,7,1061,231,1003,170,17,5,2,0,8,1,5,0,18,11,1,0,0,17,0,0,46,76,185,585),('BELGIUM','CANADA',46.00,43.00,11.00,1,0,'0000-00-00','00:00:20','Group F',9,21,0,1,1,0,0,0,1,0,3,4,6,12,6,16,3,5,6,17,3,6,5,8,2,5,6,20,618,582,115,140,268,279,235,163,8,15,175,176,118,123,13,23,6,13,3,2,0,0,11,14,0,1,512,448,439,382,8,19,5,6,4,6,4,4,15,10,0,0,21,9,0,0,74,47,284,320),('SWITZERLAND','CAMEROON',43.00,46.00,11.00,1,0,'0000-00-00','00:00:11','Group G',8,7,0,1,1,0,0,0,1,0,3,3,4,2,6,6,2,1,19,9,2,12,11,3,6,5,16,18,609,561,153,109,256,248,200,204,13,5,178,182,123,103,21,16,13,4,2,1,0,0,12,10,2,2,497,500,437,424,28,20,6,4,4,8,11,5,11,14,0,0,7,8,0,0,64,79,313,316),('URUGUAY','KOREA REPUBLIC',49.00,38.00,13.00,0,0,'0000-00-00','00:00:14','Group H',10,6,0,0,0,0,0,0,0,0,0,0,6,5,7,1,3,5,13,15,4,0,4,4,6,4,14,19,566,551,157,136,155,228,254,187,4,8,146,185,88,96,16,17,7,8,1,1,0,0,7,10,1,0,528,419,459,340,16,19,4,3,10,9,4,3,10,8,0,0,6,10,0,0,65,54,240,231),('PORTUGAL','GHANA',55.00,35.00,10.00,3,2,'0000-00-00','00:00:17','Group H',11,8,2,3,3,2,0,0,2,2,5,3,3,5,7,2,4,6,24,7,6,9,7,6,4,3,10,3,762,459,168,87,308,187,286,185,20,5,198,150,149,88,26,12,18,4,2,4,0,0,14,19,1,1,636,394,573,326,17,12,4,3,13,2,3,3,19,15,1,0,8,11,0,0,70,82,286,326),('BRAZIL','SERBIA',53.00,34.00,13.00,2,0,'0000-00-00','00:00:20','Group G',24,4,0,2,2,0,0,0,1,0,10,0,9,3,11,1,13,3,14,10,9,3,10,4,7,3,20,7,727,414,144,67,275,185,308,162,11,4,184,140,134,91,16,15,10,6,0,3,0,0,7,12,1,0,585,403,526,341,19,13,3,3,6,6,6,4,12,8,0,0,4,24,0,0,72,71,236,338),('WALES','IRAN',51.00,33.00,16.00,0,2,'0000-00-00','00:00:11','Group B',10,21,2,0,0,1,0,1,0,1,3,6,4,6,5,7,5,14,18,7,3,3,8,7,11,4,13,7,722,343,135,109,286,149,301,85,13,9,208,185,129,92,17,24,8,10,1,2,1,0,9,10,2,2,508,295,413,202,20,26,5,4,13,5,2,7,12,11,0,0,21,9,0,0,89,84,161,276),('QATAR','SENEGAL',42.00,48.00,10.00,1,3,'0000-00-00','00:00:14','Group A',10,12,3,1,1,3,0,0,1,2,2,4,7,6,4,10,6,2,7,26,5,4,2,6,5,4,11,18,511,553,109,136,199,190,203,227,9,12,174,184,117,113,13,19,7,9,3,3,0,0,7,12,4,3,424,511,353,445,18,20,5,6,12,9,6,7,15,11,0,0,12,11,0,0,67,67,308,232),('NETHERLANDS','ECUADOR',48.00,39.00,13.00,1,1,'0000-00-00','00:00:17','Group A',2,13,1,1,0,1,1,0,1,0,1,5,1,3,0,8,2,5,8,10,8,5,2,2,4,5,11,4,632,541,129,86,267,276,236,179,4,12,168,155,115,84,9,22,4,10,0,1,0,0,15,12,1,4,524,425,451,345,8,22,0,4,6,2,2,5,16,16,0,0,14,2,0,0,85,52,254,279),('ENGLAND','UNITED STATES',51.00,40.00,9.00,0,0,'0000-00-00','00:00:20','Group B',8,10,0,0,0,0,0,0,0,0,3,2,4,7,6,6,2,4,11,12,2,0,7,1,5,6,11,8,676,539,116,129,290,238,270,172,10,6,208,143,147,88,23,15,10,5,0,0,0,0,9,15,1,0,550,427,488,368,13,16,4,2,9,2,3,7,15,10,0,0,10,8,0,0,52,61,266,350),('TUNISIA','AUSTRALIA',50.00,31.00,19.00,0,1,'0000-00-00','00:00:11','Group D',13,8,1,0,0,1,0,0,0,1,4,2,5,3,9,5,4,3,12,11,8,3,7,4,6,7,11,19,710,342,166,108,291,120,253,114,13,8,200,171,109,91,23,19,11,10,3,0,0,0,16,15,3,0,501,334,396,239,23,23,5,4,6,2,5,2,15,19,0,0,9,13,0,0,81,88,217,273),('POLAND','SAUDI ARABIA',30.00,57.00,14.00,2,0,'0000-00-00','00:00:14','Group C',8,16,0,2,2,0,0,0,1,0,3,5,3,9,8,9,0,7,7,21,2,6,4,5,8,7,13,15,428,661,140,156,164,264,124,241,14,22,150,205,84,153,22,27,12,19,3,2,0,0,18,15,0,0,303,560,236,494,19,24,8,4,5,13,4,5,15,17,0,0,16,9,0,0,69,53,329,173),('FRANCE','DENMARK',44.00,44.00,12.00,2,1,'0000-00-00','00:00:17','Group D',21,10,1,2,2,1,0,0,2,1,6,2,8,6,16,5,5,5,15,13,7,5,4,3,1,4,13,25,630,615,111,171,226,268,293,176,11,17,155,173,105,132,16,23,12,15,1,2,0,0,4,9,1,1,503,537,437,473,23,18,12,4,7,14,6,4,10,5,0,0,10,21,0,0,79,61,269,282),('ARGENTINA','MEXICO',50.00,36.00,14.00,2,0,'0000-00-00','00:00:20','Group C',5,4,0,2,1,0,1,0,2,0,2,1,3,2,2,1,3,3,10,8,6,1,2,1,4,2,12,11,569,373,103,78,244,151,222,144,2,5,150,127,100,66,10,13,5,5,1,4,0,0,15,19,2,4,533,356,464,287,14,17,2,4,3,2,4,2,23,17,0,0,4,5,0,0,63,79,220,327),('JAPAN','COSTA RICA',48.00,39.00,13.00,0,1,'0000-00-00','00:00:11','Group E',14,4,1,0,0,1,0,0,0,1,3,1,4,1,7,1,7,3,28,8,6,0,9,3,3,1,10,4,699,429,176,77,255,177,268,175,5,1,158,154,95,85,22,4,7,0,3,3,0,0,22,9,0,2,575,444,510,371,17,5,1,0,2,7,5,0,11,22,0,0,4,14,0,0,47,66,300,294),('BELGIUM','MOROCCO',56.00,32.00,12.00,0,2,'0000-00-00','00:00:14','Group F',10,11,2,0,0,2,0,0,0,2,4,4,6,6,5,6,5,5,12,10,8,3,3,2,4,1,9,11,732,441,144,109,211,173,377,159,4,7,149,125,104,89,13,11,3,8,1,1,0,0,10,14,3,3,671,317,598,275,19,9,3,4,6,10,9,1,17,13,0,0,11,10,0,0,38,78,194,360),('CROATIA','CANADA',41.00,46.00,13.00,4,1,'0000-00-00','00:00:17','Group F',13,9,1,4,3,1,1,0,4,1,10,2,2,3,9,2,4,7,7,8,3,4,3,3,3,4,3,13,573,592,113,121,256,247,204,224,15,6,193,201,124,134,24,15,10,6,2,2,0,0,13,5,1,3,462,511,391,434,22,15,5,5,6,7,5,2,8,14,0,0,9,13,0,0,87,72,347,316),('SPAIN','GERMANY',56.00,33.00,11.00,1,1,'0000-00-00','00:00:20','Group E',7,10,1,1,1,1,0,0,1,1,3,4,4,5,3,7,4,3,12,3,3,3,2,4,1,3,5,8,633,440,90,108,270,177,273,155,16,9,186,143,146,83,19,17,13,7,1,3,0,0,13,11,2,5,647,352,565,281,9,13,2,1,9,2,6,5,16,15,0,0,11,7,0,0,79,101,275,387),('CAMEROON','SERBIA',38.00,49.00,13.00,3,3,'0000-00-00','00:00:11','Group G',13,16,3,3,3,2,0,1,3,3,8,6,3,8,9,11,4,5,5,20,3,4,5,16,4,5,15,12,419,583,103,124,149,261,167,198,15,11,173,184,78,122,22,22,12,12,2,2,0,0,8,13,0,4,364,513,271,433,20,23,1,4,5,5,4,3,17,8,0,0,16,13,0,0,83,81,285,234),('KOREA REPUBLIC','GHANA',53.00,32.00,15.00,2,3,'0000-00-00','00:00:14','Group H',21,8,3,2,2,3,0,0,2,2,6,3,8,3,15,7,6,1,22,8,5,3,6,4,8,3,27,7,695,389,175,72,234,157,286,160,19,5,201,122,148,66,24,12,19,5,2,2,0,0,13,9,1,1,540,319,477,260,46,13,16,4,16,3,12,5,10,14,0,0,8,21,0,0,53,75,220,324),('BRAZIL','SWITZERLAND',51.00,40.00,9.00,1,0,'0000-00-00','00:00:17','Group G',9,4,0,1,1,0,0,0,1,0,5,0,2,1,6,2,3,2,19,7,12,3,5,4,5,6,11,10,659,568,154,128,218,212,287,228,16,4,164,173,114,100,20,17,11,4,1,1,0,0,10,17,3,1,565,488,498,415,26,11,3,3,6,2,8,3,18,13,0,0,4,9,0,0,85,80,282,344),('PORTUGAL','URUGUAY',53.00,35.00,12.00,2,0,'0000-00-00','00:00:20','Group H',14,10,0,2,1,0,1,0,0,0,4,3,7,6,4,6,10,4,17,13,9,8,4,4,9,5,11,9,752,413,142,115,327,155,283,143,11,6,170,150,112,86,11,17,7,11,3,2,0,0,10,16,2,0,596,390,517,306,16,18,4,5,9,2,6,2,15,13,1,0,11,14,0,0,68,81,226,362),('NETHERLANDS','QATAR',54.00,38.00,8.00,2,0,'0000-00-00','00:00:16','Group A',13,6,0,2,2,0,0,0,1,0,4,4,5,2,10,2,3,4,25,10,9,7,8,5,11,4,21,6,785,574,157,100,322,245,306,229,16,11,185,161,165,107,13,15,10,10,1,0,0,0,19,9,4,0,795,459,740,394,11,16,1,4,1,10,4,2,9,24,0,0,5,14,0,0,62,52,319,322),('ECUADOR','SENEGAL',51.00,32.00,17.00,1,2,'0000-00-00','00:00:16','Group A',8,15,2,1,1,2,0,0,1,0,4,5,3,8,5,11,3,4,13,14,3,0,1,2,6,7,6,10,453,268,83,76,174,115,196,77,2,12,146,153,77,84,10,20,2,12,0,1,0,0,23,11,0,3,432,269,353,198,19,20,6,5,1,6,3,6,14,22,0,1,15,8,0,0,59,62,190,243),('WALES','ENGLAND',33.00,58.00,10.00,0,3,'0000-00-00','00:00:20','Group B',7,17,3,0,0,2,0,1,0,2,1,7,3,6,1,13,6,4,7,10,1,4,2,7,0,12,4,9,388,777,71,140,138,310,179,327,1,9,104,167,55,131,4,13,1,8,2,0,0,0,16,9,1,1,325,588,261,529,4,17,1,7,1,6,1,6,10,17,0,0,17,8,0,0,49,56,328,167),('IRAN','UNITED STATES',42.00,45.00,13.00,0,1,'0000-00-00','00:00:20','Group B',6,12,1,0,0,1,0,0,0,1,2,5,4,4,5,8,1,4,12,11,2,7,5,7,3,5,4,17,492,697,94,133,223,262,175,302,9,17,195,185,102,133,23,27,8,16,3,1,0,0,13,10,2,1,463,470,379,413,18,22,3,2,11,8,1,5,11,15,0,0,13,6,0,0,63,74,295,302),('AUSTRALIA','DENMARK',24.00,60.00,16.00,1,0,'0000-00-00','00:00:16','Group D',8,14,0,1,1,0,0,0,1,0,4,3,2,7,3,11,5,3,9,27,2,5,2,4,1,6,11,19,302,640,88,146,114,259,100,235,8,17,166,241,81,172,17,21,7,17,2,1,0,0,11,10,1,3,286,650,187,567,11,32,2,5,1,9,2,6,13,12,0,0,14,8,0,0,90,74,341,161),('TUNISIA','FRANCE',30.00,56.00,14.00,1,0,'0000-00-00','00:00:16','Group D',5,9,0,1,0,0,1,0,1,0,3,3,2,4,2,4,3,5,11,14,3,6,4,5,0,3,10,21,381,630,99,96,175,212,107,322,9,11,153,138,96,99,21,10,7,4,1,0,0,0,14,6,3,2,328,636,266,566,27,20,4,5,4,3,7,8,8,17,0,0,11,6,0,0,68,80,400,202),('POLAND','ARGENTINA',24.00,67.00,9.00,0,2,'0000-00-00','00:00:20','Group C',4,25,2,0,0,2,0,0,0,2,0,13,2,8,2,21,2,4,6,25,2,8,1,7,2,10,3,26,328,907,62,175,126,282,140,450,2,21,117,214,66,188,5,25,1,19,1,1,0,0,6,11,0,0,321,862,261,814,5,22,2,5,8,11,1,9,12,5,0,0,25,4,0,0,67,48,438,141),('SAUDI ARABIA','MEXICO',29.00,55.00,17.00,1,2,'0000-00-00','00:00:20','Group C',10,25,2,1,1,1,0,1,1,1,2,10,8,8,6,10,4,15,5,16,3,5,4,3,3,7,11,16,337,492,100,194,162,158,75,140,6,17,178,198,86,121,17,33,5,16,6,1,0,0,20,18,2,6,297,412,197,336,9,34,2,6,1,4,1,8,23,22,0,0,26,10,0,0,82,76,269,229),('CROATIA','BELGIUM',43.00,47.00,10.00,0,0,'0000-00-00','00:00:16','Group F',11,15,0,0,0,0,0,0,0,0,4,4,5,7,7,12,4,3,23,18,7,5,3,7,2,4,12,9,650,581,124,123,338,181,188,277,17,12,204,177,159,115,23,26,17,14,0,1,0,0,7,9,4,0,578,596,504,531,24,24,6,8,18,4,2,4,9,11,0,0,16,11,0,0,70,68,328,346),('CANADA','MOROCCO',52.00,36.00,12.00,1,2,'0000-00-00','00:00:16','Group F',5,7,2,1,0,1,0,1,0,1,0,2,4,2,4,4,1,3,22,6,4,0,2,3,6,4,11,5,703,493,189,78,211,227,303,188,8,8,153,147,91,85,21,16,8,7,4,0,0,0,14,14,4,4,539,384,472,308,20,7,4,1,3,14,6,2,18,18,0,0,7,7,0,1,66,72,224,324),('JAPAN','SPAIN',14.00,78.00,8.00,2,1,'0000-00-00','00:00:20','Group E',6,14,1,2,1,1,1,0,2,1,3,5,2,3,4,7,2,7,2,30,3,9,1,6,2,11,5,22,315,1138,77,174,106,286,132,678,10,17,104,190,57,140,14,21,8,15,3,0,0,0,9,6,2,2,225,1070,167,992,6,20,3,2,2,9,0,2,8,11,0,0,14,6,0,0,85,49,637,150),('COSTA RICA','GERMANY',27.00,60.00,13.00,2,4,'0000-00-00','00:00:20','Group E',8,32,4,2,2,4,0,0,0,4,6,11,1,17,6,24,2,8,7,29,5,13,3,13,1,12,1,15,344,747,100,217,156,272,88,258,10,28,154,193,103,159,13,34,7,25,1,0,0,0,3,9,4,3,347,727,269,661,12,38,3,12,4,5,1,14,12,7,0,0,32,8,0,0,79,77,378,230),('GHANA','URUGUAY',46.00,39.00,15.00,0,2,'0000-00-00','00:00:16','Group H',9,12,2,0,0,2,0,0,0,1,4,7,4,5,4,7,5,5,12,7,5,2,8,13,4,3,12,17,597,424,154,117,247,157,196,150,8,14,188,186,111,124,13,24,5,14,2,5,0,0,18,11,2,2,460,446,377,361,20,15,2,4,3,6,5,2,12,20,0,0,12,9,0,0,92,84,248,293),('KOREA REPUBLIC','PORTUGAL',34.00,55.00,11.00,2,1,'0000-00-00','00:00:16','Group H',12,12,1,2,2,1,0,0,1,1,6,4,4,6,6,5,6,7,9,23,7,7,5,5,2,8,7,12,470,740,93,159,186,195,191,386,8,12,139,178,87,123,11,21,6,12,2,0,0,0,9,11,1,5,359,606,304,541,13,22,3,6,9,11,5,4,15,10,0,0,14,12,0,0,54,50,359,233),('SERBIA','SWITZERLAND',45.00,41.00,14.00,2,3,'0000-00-00','00:00:20','Group G',11,14,3,2,2,3,0,0,1,3,4,7,6,3,10,10,1,4,17,14,6,7,4,3,4,1,10,12,577,456,92,108,214,193,271,155,7,10,157,157,95,95,10,20,5,8,7,4,0,0,18,13,0,0,476,403,390,325,23,13,6,4,7,9,2,0,14,18,0,0,14,10,0,0,74,82,276,253),('CAMEROON','BRAZIL',31.00,56.00,13.00,1,0,'0000-00-00','00:00:20','Group G',7,19,0,1,1,0,0,0,1,0,3,6,3,11,5,14,2,5,8,20,8,5,4,6,4,7,9,13,397,643,88,145,144,328,165,170,9,9,144,181,92,145,16,15,7,9,5,2,1,0,14,14,0,1,295,548,239,491,12,28,3,8,4,3,3,11,15,14,0,0,20,7,0,0,78,54,321,226),('NETHERLANDS','UNITED STATES',33.00,54.00,13.00,3,1,'0000-00-00','00:00:16','Round of 16',11,18,1,3,3,1,0,0,3,1,6,7,4,4,7,11,4,7,4,13,2,8,4,4,7,9,10,15,404,820,73,179,200,360,131,281,8,17,161,187,95,126,17,28,7,17,2,0,0,0,10,5,0,3,396,567,320,487,13,27,4,2,4,5,4,5,8,10,0,0,18,13,0,0,101,77,325,256),('ARGENTINA','AUSTRALIA',53.00,35.00,12.00,2,1,'0000-00-00','00:00:20','Round of 16',14,5,1,2,2,0,0,0,1,0,5,2,7,2,11,3,3,2,15,8,6,1,11,2,2,6,17,9,869,538,131,105,337,184,401,249,8,8,181,146,135,92,16,12,8,7,0,2,0,0,8,15,4,0,711,450,635,381,6,15,1,2,5,8,1,3,15,11,0,0,5,14,1,0,67,73,240,453),('FRANCE','POLAND',48.00,42.00,10.00,3,1,'0000-00-00','00:00:16','Round of 16',16,11,1,3,3,1,0,0,3,0,7,3,7,5,10,8,6,3,15,15,7,2,2,2,9,3,19,10,568,501,118,124,207,224,243,153,14,11,174,156,111,97,26,20,14,12,1,2,0,0,10,8,3,1,540,466,481,391,27,18,4,7,4,5,7,1,8,11,0,1,11,16,0,0,71,64,220,297),('ENGLAND','SENEGAL',54.00,35.00,11.00,3,0,'0000-00-00','00:00:20','Round of 16',8,10,0,3,3,0,0,0,3,0,4,2,4,6,7,4,1,6,17,8,6,1,2,0,2,4,13,9,794,489,140,95,276,193,378,201,11,7,184,159,129,86,16,15,12,7,0,1,0,0,16,12,0,0,597,393,523,320,19,13,7,3,11,7,3,3,12,16,0,0,10,8,0,0,60,74,230,339),('JAPAN','CROATIA',35.00,51.00,14.00,1,1,'0000-00-00','00:00:16','Round of 16',12,16,1,1,1,1,0,0,1,1,4,4,4,8,5,9,7,7,14,18,6,7,6,9,6,6,18,28,692,717,157,175,270,247,265,295,8,14,229,232,116,132,21,20,8,11,0,2,0,0,13,16,3,0,532,735,414,624,28,35,6,9,5,7,8,5,16,16,0,0,18,11,0,0,100,100,405,308),('BRAZIL','KOREA REPUBLIC',47.00,44.00,9.00,4,1,'0000-00-00','00:00:20','Round of 16',18,10,1,4,4,0,0,1,3,0,9,6,8,2,14,6,4,4,20,19,5,4,5,3,7,5,15,21,666,547,149,116,257,270,260,161,17,15,193,188,145,137,21,20,17,14,0,1,0,0,8,13,0,5,616,548,556,486,18,14,4,1,9,13,5,4,16,8,1,0,10,18,0,0,73,81,310,329),('MOROCCO','SPAIN',22.00,68.00,10.00,0,0,'0000-00-00','00:00:16','Round of 16',6,13,0,0,0,0,0,0,0,0,3,1,3,6,3,9,3,4,11,36,1,10,0,8,2,19,8,29,438,896,103,182,176,279,159,435,10,27,164,219,86,158,22,37,9,25,1,1,0,0,15,14,5,4,323,1041,229,967,10,27,4,4,4,8,0,8,18,20,0,0,14,6,0,0,100,66,573,217),('PORTUGAL','SWITZERLAND',43.00,48.00,9.00,6,1,'0000-00-00','00:00:20','Round of 16',14,10,1,6,6,1,0,0,5,0,9,1,2,7,9,5,5,5,8,18,3,2,6,6,6,2,8,8,614,617,134,115,241,240,239,262,9,8,165,167,98,107,16,17,8,7,0,2,0,0,12,10,3,3,461,512,392,436,14,15,6,1,7,3,6,6,13,15,0,0,10,15,0,0,71,54,357,240),('CROATIA','BRAZIL',45.00,45.00,10.00,1,1,'0000-00-00','00:00:16','Quarter-final',9,20,1,1,1,1,0,0,1,1,1,11,4,4,5,12,4,8,19,25,4,10,2,15,5,8,27,20,674,737,156,153,250,239,268,345,10,11,240,185,180,121,16,19,10,10,2,3,0,0,22,24,3,3,715,695,632,625,22,25,5,6,13,4,3,7,27,25,0,0,21,9,0,0,95,77,365,423),('NETHERLANDS','ARGENTINA',45.00,44.00,11.00,2,2,'0000-00-00','00:00:20','Quarter-final',5,15,2,2,2,2,0,0,2,1,2,6,2,8,3,5,2,10,11,7,7,7,9,13,3,6,15,17,722,644,117,97,278,278,327,269,5,7,194,203,130,122,15,24,6,8,8,8,1,0,30,18,1,2,651,603,557,511,22,16,4,4,5,4,2,8,20,30,0,1,15,5,0,0,91,79,401,323),('MOROCCO','PORTUGAL',22.00,65.00,13.00,1,0,'0000-00-00','00:00:16','Quarter-final',9,11,0,1,1,0,0,0,1,0,3,3,6,6,5,7,4,4,4,27,1,10,4,8,1,7,3,20,339,780,68,205,150,208,121,367,6,19,128,167,63,118,13,23,3,18,3,1,1,0,15,9,2,2,229,678,171,592,8,33,3,7,4,9,3,9,11,17,0,0,11,10,0,0,88,44,373,165),('ENGLAND','FRANCE',54.00,36.00,10.00,1,2,'0000-00-00','00:00:20','Quarter-final',14,9,2,1,1,1,0,1,0,2,6,5,4,3,6,6,8,3,17,15,6,2,4,7,2,2,10,13,661,401,127,84,312,136,222,181,8,7,147,136,108,87,13,14,10,8,1,3,0,0,10,14,1,2,508,369,453,310,22,13,5,6,5,2,5,2,14,11,1,0,9,15,0,0,49,54,193,308),('ARGENTINA','CROATIA',34.00,54.00,12.00,3,0,'0000-00-00','00:00:20','Semi-final',10,12,0,3,3,0,0,0,1,0,7,3,2,7,7,6,3,6,8,18,9,6,7,7,3,4,2,8,349,643,89,136,122,291,138,216,7,3,147,182,91,129,17,9,7,1,2,2,0,0,15,8,1,0,408,624,344,551,8,20,2,4,4,8,2,4,6,16,1,0,12,10,0,0,85,63,321,260),('FRANCE','MOROCCO',34.00,55.00,11.00,2,0,'0000-00-00','00:00:20','Semi-final',14,13,0,2,2,0,0,0,0,0,2,1,8,6,12,8,2,5,9,10,6,4,3,6,2,6,6,19,330,702,82,136,99,314,149,252,8,15,126,141,85,95,12,18,8,11,0,1,0,0,11,11,4,3,358,583,307,518,5,22,2,1,1,8,2,3,13,15,0,0,13,14,0,0,72,47,328,218),('CROATIA','MOROCCO',45.00,45.00,10.00,2,1,'0000-00-00','00:00:16','Play-off for third place',14,7,1,2,2,1,0,0,2,0,4,2,8,5,7,5,7,2,20,13,8,1,3,3,2,7,7,16,519,609,117,127,198,202,204,280,15,10,164,150,114,97,23,14,12,8,0,2,0,0,13,11,2,2,491,494,430,428,21,20,3,5,7,12,6,3,13,15,0,0,7,14,0,0,75,72,288,277),('ARGENTINA','FRANCE',46.00,40.00,14.00,3,3,'0000-00-00','00:00:16','Final',21,10,3,3,3,3,0,0,1,1,9,5,9,3,10,7,11,3,13,15,6,7,8,5,9,4,9,12,607,507,146,105,257,207,204,195,43,10,223,163,151,99,38,14,23,9,4,3,0,0,26,19,4,4,648,516,544,419,20,24,4,3,6,5,6,5,22,28,1,2,11,21,0,0,87,104,280,409);
/*!40000 ALTER TABLE `Fifa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `average_goals_per_match_view`
--

DROP TABLE IF EXISTS `average_goals_per_match_view`;
/*!50001 DROP VIEW IF EXISTS `average_goals_per_match_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `average_goals_per_match_view` AS SELECT 
 1 AS `team`,
 1 AS `total_goals`,
 1 AS `average_goals_per_match`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `conversion_rate_view`
--

DROP TABLE IF EXISTS `conversion_rate_view`;
/*!50001 DROP VIEW IF EXISTS `conversion_rate_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `conversion_rate_view` AS SELECT 
 1 AS `team`,
 1 AS `conversion_rate`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `pass_comparison`
--

DROP TABLE IF EXISTS `pass_comparison`;
/*!50001 DROP VIEW IF EXISTS `pass_comparison`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `pass_comparison` AS SELECT 
 1 AS `team1`,
 1 AS `team2`,
 1 AS `passes_not_completed_team1`,
 1 AS `passes_not_completed_team2`,
 1 AS `completion_rate_team1`,
 1 AS `completion_rate_team2`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `passes_comparison_view`
--

DROP TABLE IF EXISTS `passes_comparison_view`;
/*!50001 DROP VIEW IF EXISTS `passes_comparison_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `passes_comparison_view` AS SELECT 
 1 AS `team1_passes`,
 1 AS `team2_passes`,
 1 AS `team1_completed_passes`,
 1 AS `team2_completed_passes`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `shots_vs_goals_comparison`
--

DROP TABLE IF EXISTS `shots_vs_goals_comparison`;
/*!50001 DROP VIEW IF EXISTS `shots_vs_goals_comparison`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `shots_vs_goals_comparison` AS SELECT 
 1 AS `team`,
 1 AS `total_shots_on_target`,
 1 AS `total_goals`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `total_goals_by_team_view`
--

DROP TABLE IF EXISTS `total_goals_by_team_view`;
/*!50001 DROP VIEW IF EXISTS `total_goals_by_team_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `total_goals_by_team_view` AS SELECT 
 1 AS `team`,
 1 AS `total_goals`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'finals'
--

--
-- Dumping routines for database 'finals'
--
/*!50003 DROP PROCEDURE IF EXISTS `Fifatable` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `Fifatable`()
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `average_goals_per_match_view`
--

/*!50001 DROP VIEW IF EXISTS `average_goals_per_match_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `average_goals_per_match_view` AS select `subquery`.`team` AS `team`,(coalesce(sum(`subquery`.`goals_team1`),0) + coalesce(sum(`subquery`.`goals_team2`),0)) AS `total_goals`,coalesce(((sum(`subquery`.`goals_team1`) + sum(`subquery`.`goals_team2`)) / count(0)),0) AS `average_goals_per_match` from (select `Fifa`.`team1` AS `team`,`Fifa`.`goals_team1` AS `goals_team1`,NULL AS `goals_team2` from `Fifa` union all select `Fifa`.`team2` AS `team`,NULL AS `goals_team1`,`Fifa`.`goals_team2` AS `goals_team2` from `Fifa`) `subquery` group by `subquery`.`team` order by `average_goals_per_match` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `conversion_rate_view`
--

/*!50001 DROP VIEW IF EXISTS `conversion_rate_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `conversion_rate_view` AS select `subquery`.`team` AS `team`,coalesce((sum(`subquery`.`total_goals`) / nullif(sum(`subquery`.`on_target_attempts`),0)),0) AS `conversion_rate` from (select `Fifa`.`team1` AS `team`,`Fifa`.`on_target_attempts_team1` AS `on_target_attempts`,`Fifa`.`goals_team1` AS `total_goals` from `Fifa` union all select `Fifa`.`team2` AS `team`,`Fifa`.`on_target_attempts_team2` AS `on_target_attempts`,`Fifa`.`goals_team2` AS `total_goals` from `Fifa`) `subquery` group by `subquery`.`team` order by `conversion_rate` desc,`subquery`.`team` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pass_comparison`
--

/*!50001 DROP VIEW IF EXISTS `pass_comparison`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `pass_comparison` AS select `Fifa`.`team1` AS `team1`,`Fifa`.`team2` AS `team2`,(`Fifa`.`passes_team1` - `Fifa`.`passes_completed_team1`) AS `passes_not_completed_team1`,(`Fifa`.`passes_team2` - `Fifa`.`passes_completed_team2`) AS `passes_not_completed_team2`,((`Fifa`.`passes_completed_team1` / `Fifa`.`passes_team1`) * 100) AS `completion_rate_team1`,((`Fifa`.`passes_completed_team2` / `Fifa`.`passes_team2`) * 100) AS `completion_rate_team2` from `Fifa` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `passes_comparison_view`
--

/*!50001 DROP VIEW IF EXISTS `passes_comparison_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `passes_comparison_view` AS select `Fifa`.`passes_team1` AS `team1_passes`,`Fifa`.`passes_team2` AS `team2_passes`,`Fifa`.`passes_completed_team1` AS `team1_completed_passes`,`Fifa`.`passes_completed_team2` AS `team2_completed_passes` from `Fifa` order by `Fifa`.`passes_team1` desc,`Fifa`.`passes_team2` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `shots_vs_goals_comparison`
--

/*!50001 DROP VIEW IF EXISTS `shots_vs_goals_comparison`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `shots_vs_goals_comparison` AS select `subquery`.`team` AS `team`,coalesce(sum(`subquery`.`on_target_attempts`),0) AS `total_shots_on_target`,coalesce(sum(`subquery`.`total_goals`),0) AS `total_goals` from (select `Fifa`.`team1` AS `team`,`Fifa`.`on_target_attempts_team1` AS `on_target_attempts`,`Fifa`.`goals_team1` AS `total_goals` from `Fifa` union all select `Fifa`.`team2` AS `team`,`Fifa`.`on_target_attempts_team2` AS `on_target_attempts`,`Fifa`.`goals_team2` AS `total_goals` from `Fifa`) `subquery` group by `subquery`.`team` order by `total_shots_on_target` desc,`subquery`.`team` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `total_goals_by_team_view`
--

/*!50001 DROP VIEW IF EXISTS `total_goals_by_team_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `total_goals_by_team_view` AS select `subquery`.`team` AS `team`,(coalesce(sum(`subquery`.`goals_team1`),0) + coalesce(sum(`subquery`.`goals_team2`),0)) AS `total_goals` from (select `Fifa`.`team1` AS `team`,`Fifa`.`goals_team1` AS `goals_team1`,NULL AS `goals_team2` from `Fifa` union all select `Fifa`.`team2` AS `team`,NULL AS `goals_team1`,`Fifa`.`goals_team2` AS `goals_team2` from `Fifa`) `subquery` group by `subquery`.`team` order by `total_goals` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-16  5:50:28
