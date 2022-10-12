DROP DATABASE IF EXISTS craigslist;

CREATE DATABASE craigslist;

\c craigslist


CREATE TABLE `Regions` (
  `name` <type>,
  KEY `id` (`name`)
);

CREATE TABLE `Posts` (
  `title` <type>,
  `text` <type>,
  `location` <type>,
  `user_id` <type>,
  `region_id` <type>,
  `category_id` <type>,
  KEY `id` (`title`, `text`, `location`, `user_id`, `region_id`, `category_id`)
);

CREATE TABLE `Users` (
  `username` <type>,
  `encryted_password` <type>,
  `preferred_region_id` <type>,
  KEY `id` (`username`, `encryted_password`, `preferred_region_id`)
);

CREATE TABLE `Categories` (
  `name` <type>,
  FOREIGN KEY (`name`) REFERENCES `Posts`(`category_id`),
  KEY `id` (`name`)
);

