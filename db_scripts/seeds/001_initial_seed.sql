INSERT INTO table_collections (collectionSetName, releaseDate, totalCardsInCollection)
VALUES 
('Base Set', '1999-01-09', 102),
('Jungle', '1999-06-16', 64),
('Fossil', '1999-10-10', 62);

INSERT INTO table_types (typeName)
VALUES 
('Fire'),
('Water'),
('Grass'),
('Electric'),
('Psychic'),
('Fighting'),
('Colorless');

INSERT INTO table_stages (stageName)
VALUES 
('Basic'),
('Stage 1'),
('Stage 2');

INSERT INTO table_cards (hp, name, attacks, damages, weak, resistence, retreat, cardNumberInCollection, collection_id, type_id, stage_id)
VALUES
(120, 'Charizard', 'Fire Spin', '100', 'Water', 'Fighting', '3 Colorless', 4, 1, 1, 3),
(60, 'Pikachu', 'Thunder Shock', '20', 'Fighting', 'Steel', '1 Colorless', 25, 1, 4, 1),
(90, 'Venusaur', 'Solar Beam', '60', 'Fire', 'Water', '2 Colorless', 15, 1, 3, 3),
(80, 'Scyther', 'Slash', '30', 'Fire', 'Fighting', '1 Colorless', 10, 2, 3, 1),
(100, 'Lapras', 'Water Gun', '30+', 'Electric', 'Steel', '2 Colorless', 2, 3, 2, 1);
