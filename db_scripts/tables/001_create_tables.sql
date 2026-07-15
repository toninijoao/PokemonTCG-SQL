CREATE TABLE table_collections (
    id SERIAL PRIMARY KEY,
    collectionSetName VARCHAR(100) NOT NULL,
    releaseDate DATE NOT NULL,
    totalCardsInCollection SMALLINT NOT NULL
);

CREATE TABLE table_types (
    id SERIAL PRIMARY KEY,
    typeName VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE table_stages (
    id SERIAL PRIMARY KEY,
    stageName VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE table_cards (
    id SERIAL PRIMARY KEY,
    hp SMALLINT,
    name VARCHAR(80) NOT NULL,
    attacks VARCHAR(200),
    damages VARCHAR(50),
    weak VARCHAR(30),
    resistence VARCHAR(30),
    retreat VARCHAR(30),
    cardNumberInCollection SMALLINT NOT NULL,
    collection_id INT NOT NULL,
    type_id INT NOT NULL,
    stage_id INT NOT NULL,
    CONSTRAINT fk_collection FOREIGN KEY (collection_id) REFERENCES table_collections (id) ON DELETE CASCADE,
    CONSTRAINT fk_type FOREIGN KEY (type_id) REFERENCES table_types (id) ON DELETE RESTRICT,
    CONSTRAINT fk_stage FOREIGN KEY (stage_id) REFERENCES table_stages (id) ON DELETE RESTRICT
);
