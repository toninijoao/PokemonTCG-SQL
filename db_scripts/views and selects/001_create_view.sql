CREATE VIEW view_cards_details AS
SELECT 
    c.id AS card_id,
    c.name AS card_name,
    c.hp,
    c.attacks,
    c.damages,
    c.weak,
    c.resistence,
    c.retreat,
    c.cardNumberInCollection,
    col.collectionSetName AS collection_name,
    col.releaseDate AS collection_release_date,
    col.totalCardsInCollection,
    t.typeName AS type_name,
    s.stageName AS stage_name
FROM table_cards c
INNER JOIN table_collections col ON c.collection_id = col.id
INNER JOIN table_types t ON c.type_id = t.id
INNER JOIN table_stages s ON c.stage_id = s.id;
