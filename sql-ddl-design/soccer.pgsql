DROP DATABASE IF EXISTS soccer;

CREATE DATABASE soccer;

\c soccer

CREATE TABLE `Teams` (
  `name` <type>,
  `city` <type>,
  KEY `id` (`name`, `city`)
);

CREATE TABLE `Players` (
  `name` <type>,
  `birthday` <type>,
  `height` <type>,
  `current_team_id` <type>,
  KEY `id` (`name`, `birthday`, `height`, `current_team_id`)
);

CREATE TABLE `Goals` (
  `player_id` <type>,
  `match_id` <type>,
  KEY `id` (`player_id`, `match_id`)
);

CREATE TABLE `Referees` (
  `name` <type>,
  KEY `id` (`name`)
);

CREATE TABLE `Results` (
  `team_id` <type>,
  `match_id` <type>,
  `results` <type>,
  KEY `id` (`team_id`, `match_id`, `results`)
);

CREATE TABLE `Lineups` (
  `player_id` <type>,
  `match_id` <type>,
  `team_id` <type>,
  KEY `id` (`player_id`, `match_id`, `team_id`)
);

CREATE TABLE `Season` (
  `start_date` <type>,
  `end_date` <type>,
  KEY `id` (`start_date`, `end_date`)
);

CREATE TABLE `Matches` (
  `home_team_id` <type>,
  `away_team_id` <type>,
  `location` <type>,
  `date` <type>,
  `start_time` <type>,
  `season_id` <type>,
  `head_referee_id` <type>,
  `assistent_referee_1_id` <type>,
  `assistent_referee_2_id` <type>,
  FOREIGN KEY (`location`) REFERENCES `Lineups`(`match_id`),
  FOREIGN KEY (`season_id`) REFERENCES `Season`(`start_date`),
  KEY `id` (`home_team_id`, `away_team_id`, `location`, `date`, `start_time`, `season_id`, `head_referee_id`, `assistent_referee_1_id`, `assistent_referee_2_id`)
);

