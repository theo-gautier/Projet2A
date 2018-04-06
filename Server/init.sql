CREATE TABLE PLAYERS(
    ID INTEGER PRIMARY KEY   AUTOINCREMENT,
    NAME TEXT,
    LEVEL INT,
    SCORE INT,
    FLAT INT
);

CREATE TABLE FLATS(
    ID INTEGER PRIMARY KEY   AUTOINCREMENT,
    URL TEXT,
    OBJECTS TEXT,       --"obj1;obj2;obj3, ..." obj -> int
    POS TEXT,           --"x1;y1;x2;y2;..."
    CIRCUITS TEXT       --"id1;id2;id3;..."
);

CREATE TABLE CIRCUITS(
    ID INTEGER PRIMARY KEY   AUTOINCREMENT,
    URL TEXT,
    OBJECTS TEXT,       --"obj1;obj2;obj3, ..." obj -> int
    POS TEXT            --"x1;y1;x2;y2;..."
);


INSERT INTO PLAYERS (NAME, LEVEL, SCORE, FLAT)
VALUES ('admin', 10, 0, 0);


