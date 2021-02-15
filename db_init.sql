
DROP USER IF EXISTS 'faisal646'@'localhost';

CREATE USER 'faisal646'@'localhost' IDENTIFIED WITH mysql_native_password BY 'ABCD1234';
GRANT ALL PRIVILEGES ON pysports.* TO'faisal646'@'localhost';
DROP TABLE IF EXISTS team;
DROP TABLE IF EXISTS player;

CREATE TABLE team (
    Team_id     INT             NOT NULL        AUTO_INCREMENT,
    Team_name   VARCHAR(25)     NOT NULL,
    mascot      VARCHAR(35)     NOT NULL,
    PRIMARY KEY(Team_id)
); 


CREATE TABLE player (
    PlayerID   INT             NOT NULL        AUTO_INCREMENT,
    Firstname  VARCHAR(55)     NOT NULL,
    Lastname   VARCHAR(60)     NOT NULL,
    team_id     INT             NOT NULL,
    PRIMARY KEY(PlayerID),
    CONSTRAINT fk_team
    FOREIGN KEY(Team_id)
        REFERENCES team(Team_id)
);


INSERT INTO team(Team_name, mascot)
    VALUES('argentina', 'the sun');

 INSERT INTO team(Team_name, mascot)
    VALUES('brazil', 'the moon');

INSERT INTO team(Team_name, mascot)
    VALUES('mexico', 'the star');



SELECT Team_id From team WHERE Team_name = 'mexico';
show TABLES ;