CREATE TABLE IF NOT EXISTS tbl_collections (
	id SERIAL PRIMARY KEY,
	collectionSetName VARCHAR(100) NOT NULL,
	releaseDate DATE NOT NULL,
	totalCardsInCollection INT NOT NULL
);

CREATE TABLE IF NOT EXISTS tbl_types (
	id SERIAL PRIMARY KEY,
	type_name VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS tbl_stages (
	id SERIAL PRIMARY KEY,
	stageName VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS tbl_cards (
	id SERIAL PRIMARY KEY,
	hp INT,
	name VARCHAR(100) NOT NULL,
	type_id INT,
    stage_id INT,
    info TEXT,
	attack VARCHAR(100),
	damage VARCHAR(10),
	weak VARCHAR(50),
	resist VARCHAR(50),
	retreat VARCHAR(50),
	cardNumberInCollection INT,
	collection_id INTEGER REFERENCES tbl_collections(id) ON DELETE SET NULL,
    FOREIGN KEY (collection_id) REFERENCES tbl_collections(id) ON DELETE SET NULL,
    FOREIGN KEY (type_id) REFERENCES tbl_types(id) ON DELETE SET NULL,
    FOREIGN KEY (stage_id) REFERENCES tbl_stages(id) ON DELETE SET NULL
);