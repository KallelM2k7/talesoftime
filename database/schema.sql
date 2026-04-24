-- schema.sql - Tales of Time database schema
-- Run once to create all tables: python database/init_db.py

PRAGMA foreign_keys = ON;

-- ── Lookup tables ─────────────────────────────────────────────────────────────

CREATE TABLE IF NOT EXISTS CharacterClass (
	ClassID		INTEGER PRIMARY KWY AUTOINCREMENT,
	ClassName	VARCHAR(50) NOT NULL UNIQUE,
	Description TEXT
);

CREATE TABLE IF NOT EXISTS Species (
	SpeciesID	INTEGER PRIMARY KEY AUTOINCREMENT,
	SpeciesName VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS Alignment (
	AlignmentOD	  INTEGER PRIMARY KEY AUTOINCREMENT,
	AlignmentName  VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS ItemType (
	ItemTypeID INTEGER PRIMARY KEY AUTOINCREMENT,
	TypeName   VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS Rarity (
	RarityID   INTEGER PRIMARY KEY AUTOINCREMENT,
	RarityName VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS Region (
	RegionID   INTEGER PRIMARY KEY AUTOINCREMENT,
	RegionName VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS Difficulty (
	DifficultyID   INTEGER PRIMARY KEY AUTOINCREMENT,
	DifficultyName VARCHAR(50) NOT NULL UNIQUE
);

-- ── Core entities ─────────────────────────────────────────────────────────────

CREATE TABLE IF NOT EXISTS Character (
	CharacterID   INTEGER PRIMARY KEY AUTOINCREMENT,
	CharacterName VARCHAR(100) NOT NULL,

)

-- ── Join tables ───────────────────────────────────────────────────────────────

