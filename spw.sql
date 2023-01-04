CREATE SCHEMA 'spw';

use spw;

CREATE TABLE `Children` (
  `child_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `childFirstName` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `gender` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `shoe` int(11) DEFAULT NULL,
  `childNotes` varchar(250) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


CREATE TABLE `Parent` (
  `parent_id` int(11) NOT NULL,
  `lastName` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `firstName` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `address` int(11) DEFAULT NULL,
  `street` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `apartment` varchar(25) CHARACTER SET utf8mb4 DEFAULT NULL,
  `city` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `zipcode` int(11) DEFAULT NULL,
  `phone` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `dateOfArrival` varchar(25) CHARACTER SET utf8mb4 DEFAULT NULL,
  `dateReceived` varchar(25) CHARACTER SET utf8mb4 DEFAULT NULL,
  `countryOfOrigin` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `immigrationStatus` varchar(45) CHARACTER SET utf8mb4 DEFAULT 'Other',
  `speaksEnglish` varchar(5) CHARACTER SET utf8mb4 DEFAULT 'No',
  `notes` varchar(250) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

ALTER TABLE `Children`
  ADD PRIMARY KEY (`child_id`),
  ADD KEY `child-parent-relationship_idx` (`parent_id`);

ALTER TABLE `Parent`
  ADD PRIMARY KEY (`parent_id`);

ALTER TABLE `Parent`
  MODIFY `parent_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `Children`
  ADD CONSTRAINT `child-parent-relationship` FOREIGN KEY (`parent_id`) REFERENCES `Parent` (`parent_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;