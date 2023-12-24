-- Table for Movies
CREATE TABLE Movies (
    movie_id INT PRIMARY KEY,
    title VARCHAR(255),
    release_date DATE,
    duration_minutes INT
);
INSERT INTO Movies (Movie_id, title, release_date,duration_minutes)
VALUES (1, 'Don',3,300),
       (2, 'Heroine',2,400),
       (3, 'Animal',12,400),
       (4, 'Rockstar',13,460);
SELECT * FROM movies;

-- Table for Media (Images or Videos)
CREATE TABLE Media (
    media_id INT PRIMARY KEY,
    movie_id INT,
    
    file_path VARCHAR(255),
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id)
);
INSERT INTO Media()

-- Table for Genres
CREATE TABLE Genres (
    genre_id INT PRIMARY KEY,
    genre_name VARCHAR(255)
);

-- Table for Movie-Genre Relationship
CREATE TABLE MovieGenres (
    movie_id INT,
    genre_id INT,
    PRIMARY KEY (movie_id, genre_id),
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
    FOREIGN KEY (genre_id) REFERENCES Genres(genre_id)
);

-- Table for Reviews
CREATE TABLE Reviews (
    review_id INT PRIMARY KEY,
    movie_id INT,
    user_id INT,
    rating DECIMAL(3, 1),
    review_text TEXT,
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

-- Table for Users
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    username VARCHAR(255),
    email VARCHAR(255)
);

-- Table for Artists
CREATE TABLE Artists (
    artist_id INT PRIMARY KEY,
    artist_name VARCHAR(255)
);

-- Table for Skills
CREATE TABLE Skills (
    skill_id INT PRIMARY KEY,
    skill_name VARCHAR(255)
);

-- Table for Artist-Skill Relationship
CREATE TABLE ArtistSkills (
    artist_id INT,
    skill_id INT,
    PRIMARY KEY (artist_id, skill_id),
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id),
    FOREIGN KEY (skill_id) REFERENCES Skills(skill_id)
);

-- Table for Movie-Artist Relationship
CREATE TABLE MovieArtists (
    movie_id INT,
    artist_id INT,
    role VARCHAR(255),
    PRIMARY KEY (movie_id, artist_id, role),
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id)
);