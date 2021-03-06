CREATE TABLE PLAYERS(
    ID INTEGER PRIMARY KEY   AUTOINCREMENT,
    NAME TEXT,
    LEVEL INT,
    SCORE INT,
    FLAT INT,
    HASHPASSWORD TEXT
);

CREATE TABLE MEDALS(
    ID INTEGER PRIMARY KEY   AUTOINCREMENT,
    NAME TEXT,
	DESCRIPTION TEXT,
	OBTENTION INT,
	REWARD INT       --"Reward as a int, that gives a bonus score to the player"
);

CREATE TABLE OBJECT(
	ID INTEGER PRIMARY KEY    AUTOINCREMENT,
	NAME TEXT,
	DESCRIPTION TEXT,
	COST INT,
	LEVEL INT
);

CREATE TABLE FLATS(
    ID INTEGER PRIMARY KEY   AUTOINCREMENT,
    URL TEXT,
    OBJECTS TEXT,       --"obj1;obj2;obj3, ..."
    POS TEXT,           --"x1;y1;x2;y2;..."
    CIRCUITS TEXT       --"id1;id2;id3;..."
);

CREATE TABLE CIRCUITS(
    ID INTEGER PRIMARY KEY   AUTOINCREMENT,
    URL TEXT,
    OBJECTS TEXT,       --"obj1;obj2;obj3, ..."
    POS TEXT            --"x1;y1;x2;y2;..."
);


INSERT INTO PLAYERS (NAME, LEVEL, SCORE, FLAT, HASHPASSWORD)
VALUES ('admin', 10, 0, 0, '0192023a7bbd73250516f069df18b500');

INSERT INTO MEDALS (NAME, DESCRIPTION, OBTENTION, REWARD)
VALUES ('LEVEL 1', 'Level 1 medal', 1, 0);

INSERT INTO MEDALS (NAME, DESCRIPTION, OBTENTION, REWARD)
VALUES ('LEVEL 5', 'Level 5 medal', 5, 100);

INSERT INTO MEDALS (NAME, DESCRIPTION, OBTENTION, REWARD)
VALUES ('LEVEL 10', 'Level 10 medal', 10, 1000);
