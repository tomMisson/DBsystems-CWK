DROP Table TITLES;
DROP TABLE Names;

CREATE TABLE OTitles(
    TITLE_ID VARCHAR(9) PRIMARY KEY,
    TITLE VARCHAR(500),
    RELEASED NUMBER(4),
    RUNTIME NUMBER(4),
    GENRE1 VARCHAR(500),
    GENRE2 VARCHAR(500),
    GENRE3 VARCHAR(500),
    DIRECTOR1 VARCHAR(500),
    DIRECTOR2 VARCHAR(500),
    DIRECTOR3 VARCHAR(500),
    DIRECTOR4 VARCHAR(500),
    WRITER1 VARCHAR(500),
    WRITER2 VARCHAR(500),
    WRITER3 VARCHAR(500),
    WRITER4 VARCHAR(500),
    WRITER5 VARCHAR(500),
    PRINCIPAL VARCHAR(500),
    JOB_CATEGORY VARCHAR(500),
    CHARACTERS_PLAYED VARCHAR(500),
    AVERAGERATING FLOAT(2),
    NUMVOTES NUMBER(9)
);

CREATE TABLE ONames(
    NAME_ID VARCHAR(9) PRIMARY KEY,
    NAME VARCHAR(500),
    BIRTHYEAR NUMBER(4),
    DEATHYEAR NUMBER(4),
    PROFESSION1 VARCHAR(500),
    PROFESSION2 VARCHAR(500),
    PROFESSION3 VARCHAR(500),
    KNOWNFORTITLES1 VARCHAR(9),
    KNOWNFORTITLES2 VARCHAR(9),
    KNOWNFORTITLES3 VARCHAR(9),
    KNOWNFORTITLES4 VARCHAR(9)
);
