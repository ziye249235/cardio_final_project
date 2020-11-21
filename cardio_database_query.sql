

-- Creating age table
CREATE TABLE age_years_and_groups (
     age_in_days INT NOT NULL,
     age_to_years INT NOT NULL,
     age_group VARCHAR(20),
     PRIMARY KEY (age_in_days)
);

-- Creating cardio_train table
CREATE TABLE cardio_train (
     person INT NOT NULL,
     age INT NOT NULL,
     gender INT NOT NULL,
     height NUMERIC NOT NULL,
     weight NUMERIC NOT NULL,
     ap_hi NUMERIC NOT NULL,
	 ap_lo NUMERIC NOT NULL,
     cholesterol NUMERIC NOT NULL,
     gluc NUMERIC NOT NULL,
	 smoke INT,
	 alco INT,
     active INT,
     cardio INT,
     PRIMARY KEY (person),
	 FOREIGN KEY (age) REFERENCES age_years_and_groups (age_in_days)
);

-- Import the CSV files for both tables in this step

-- check data is imported correctly
SELECT * FROM age_years_and_groups
SELECT * FROM cardio_train

-- Joining cardio_train with ages
SELECT cardio_train.*,
     age_years_and_groups.age_in_days,
     age_years_and_groups.age_to_years,
     age_years_and_groups.age_group
INTO merged_cardio_train
FROM cardio_train
LEFT JOIN age_years_and_groups
ON cardio_train.age = age_years_and_groups.age_in_days;

-- check new joined table is correct
SELECT * FROM merged_cardio_train

-- drop the age_in_days column as we have it twice
ALTER TABLE merged_cardio_train
DROP COLUMN age_in_days

-- final check on merged table
SELECT * FROM merged_cardio_train