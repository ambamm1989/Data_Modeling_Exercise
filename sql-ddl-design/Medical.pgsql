DROP DATABASE IF EXISTS medical

CREATE DATABASE medical


\c medical

CREATE TABLE `Doctors` (
  `name` <type>,
  `specialty` <type>,
  `` <type>,
  KEY `id` (`name`, `specialty`)
);

CREATE TABLE `Vists` (
  `doctor_id` <type>,
  `patient_id` <type>,
  `date` <type>,
  KEY `id` (`doctor_id`, `patient_id`, `date`)
);

CREATE TABLE `Patients` (
  `name` <type>,
  `insurance` <type>,
  `birthday` <type>,
  KEY `id` (`name`, `insurance`, `birthday`)
);

CREATE TABLE `Diagnoses` (
  `visit_id` <type>,
  `disease_id` <type>,
  `notes` <type>,
  KEY `id` (`visit_id`, `disease_id`, `notes`)
);

CREATE TABLE `Diseases` (
  `name` <type>,
  `descripition` <type>,
  `` <type>,
  FOREIGN KEY (`name`) REFERENCES `Diagnoses`(`notes`),
  KEY `id` (`name`, `descripition`)
);

