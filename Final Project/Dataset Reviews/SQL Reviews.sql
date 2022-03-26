-- We set to use the datatset created for it
USE `Final Project Restaurants`;

-- We drop the table in case and then we create it and proceed to load the info
DROP TABLE IF EXISTS reviews;

CREATE TABLE `reviews` (
  `id` varchar(200) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `cuisine` varchar(200) DEFAULT NULL,
  `ranking` float NOT NULL,
  `rating` float NOT NULL,
  `price` varchar(50),
  `nº reviews` float NOT NULL,
  `reviews` varchar(8000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
  );
  
-- Check if we have all the data from the dataset -- Yes 
select count(id) as 'Number of data entries' from reviews;