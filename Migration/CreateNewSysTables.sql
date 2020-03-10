DROP TABLE GENRES CASCADE CONSTRAINTS ;
DROP TABLE NAME CASCADE CONSTRAINTS ;
DROP TABLE PROFESSIONS CASCADE CONSTRAINTS ;
DROP TABLE PROFESSION_NAMES CASCADE CONSTRAINTS ;
DROP TABLE TITLE CASCADE CONSTRAINTS ;
DROP TABLE Title_Cast CASCADE CONSTRAINTS ;
DROP TABLE TITLE_GENRE CASCADE CONSTRAINTS ;
DROP TABLE KNOWNFOR CASCADE CONSTRAINTS ;

CREATE TABLE Title (
     TitleID varchar(9) PRIMARY KEY,
     Title varchar(255),
     Released number(4),
     AverageRating number(3,2),
     NumVotes number(7)
);

CREATE TABLE Name(
    NameID varchar(9) PRIMARY KEY,
    Name varchar(100),
    BirthYear number(4),
    DeathYear number(4)
);

CREATE TABLE Genres(
    GenreID number(3) PRIMARY KEY,
    Genre varchar(32)
);

CREATE TABLE Professions(
    ProfessionID number(4) PRIMARY KEY,
    Profession varchar(32)
);

CREATE TABLE Title_Cast(
    CharacterPlayed varchar(32) PRIMARY KEY,
    TitleID varchar(9) REFERENCES Title(TitleID),
    NameID varchar(9) REFERENCES Name(NameID)
);

CREATE TABLE Title_Genre(
    GenreID number(3) REFERENCES Genres(GenreID),
    TitleId varchar(9) REFERENCES Title(TitleID),
    PRIMARY KEY (GenreID, TitleId)
);

CREATE TABLE KnownFor(
    NameID varchar(9) REFERENCES Name(NameID),
    TitleID varchar(9) REFERENCES Title(TitleID),
    PRIMARY KEY (NameID, TitleID)
);

CREATE TABLE Profession_Names(
    NameID varchar(9) REFERENCES Name(NameID),
    ProfessionID number(4) REFERENCES Professions(ProfessionID),
    PRIMARY KEY(NameID,ProfessionID)
);