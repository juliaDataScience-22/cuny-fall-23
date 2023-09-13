DROP TABLE if exists movies;

CREATE TABLE movies
(
	person int NOT NULL,
    AvatarWater int NULL,
    TopGunMaverick int NULL,
    Oppenheimer int NULL,
    SoundOfFreedom int NULL,
    Barbie int NULL,
    Boogeyman int NULL
);

INSERT INTO movies VALUES(1, 3, NULL, 4, 4, 2, NULL);
INSERT INTO movies VALUES(2, 4, 5, NULL, 5, 4, 2);
INSERT INTO movies VALUES(3, NULL, 3, NULL, 5, 4, 5);
INSERT INTO movies VALUES(4, 5, 5, 3, 5, 3, NULL);
INSERT INTO movies VALUES(5, 5, 4, 4, NULL, NULL, 4);

SELECT * FROM movies;

SELECT 'person','AvatarWater','TopGunMaverick','Oppenheimer','SoundOfFreedom','Barbie','Boogeyman'
UNION ALL
SELECT person, AvatarWater, TopGunMaverick, Oppenheimer, SoundOfFreedom, Barbie, Boogeyman 
FROM movies 
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/movieFile1.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n';