create table bookMyShow_info(
id int primary key,
movie_name varchar(50),
ticket_price float,
catagory enum("movie","event""stream","plays","Sports","activity"),
cast set("horrormovie","cricket","kabbaddi","artist"),
isavialable boolean
);

INSERT INTO bookMyShow_info VALUES (1, "Avatar: The Way of Water", 250.00, "movie", "horrormovie", true);
INSERT INTO bookMyShow_info VALUES (2, "IPL T20 Finals", 1500.00, "Sports", "cricket", true);
INSERT INTO bookMyShow_info VALUES (5, "Pro Kabaddi League", 350.00, "Sports", "kabbaddi", true);
INSERT INTO bookMyShow_info VALUES (6, "Macbeth LiveTheatre", 600.00, "plays", "artist", true);
INSERT INTO bookMyShow_info VALUES (7, "Wonderla Water Park", 1200.00, "activity", "artist", true);
INSERT INTO bookMyShow_info VALUES (8, "Interstellar IMAX", 450.00, "movie", "artist", false);
INSERT INTO bookMyShow_info VALUES (10, "Local T10 Bash", 100.00, "Sports", "cricket", false);

select * from bookMyShow_info;
delete from bookMyShow_info where id=10;
