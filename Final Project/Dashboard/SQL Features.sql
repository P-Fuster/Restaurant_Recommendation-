-- We set to use the datatset created for it
USE `Final Project Restaurants`;

-- We drop the table in case and then we create it and proceed to load the info
DROP TABLE IF EXISTS features;

CREATE TABLE `features` (
  `id` varchar(200) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `country` varchar(200) DEFAULT NULL,
  `region` varchar(200) DEFAULT NULL,
  `province` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL, 
  `latitude` varchar(200) DEFAULT NULL,
  `longitude` varchar(200) DEFAULT NULL,
  `popularity` varchar(200) DEFAULT NULL,
  `top_tags` varchar(200) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  `cuisine` varchar(200) DEFAULT NULL,
  `vegetarian` varchar(200) DEFAULT NULL,
  `vegan` varchar(200) DEFAULT NULL,
  `gluten` varchar(200) DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `number_reviews` float DEFAULT NULL,
  `language` varchar(200) DEFAULT NULL,
  `excellent` float DEFAULT NULL,
  `very_good` float DEFAULT NULL,
  `average` float DEFAULT NULL,
  `poor` float DEFAULT NULL,
  `terrible` float DEFAULT NULL,
  `food` float DEFAULT NULL,
  `service` float DEFAULT NULL,
  `value` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
  );
  
-- Check if we have all the data from the dataset -- Yes 
SELECT count(id) AS 'Number of data entries' FROM features;


SELECT r.id, r.name, f.country, r.city, f.cuisine, f.top_tags, f.price, r.ranking, r.`nº reviews, 
		f.rating, f.excellent, f.very_good, f.average, f.poor, f.terrible, f.food, f.service, f.value, r.reviews FROM reviews as r
JOIN features f
ON r.id = f.id;
	