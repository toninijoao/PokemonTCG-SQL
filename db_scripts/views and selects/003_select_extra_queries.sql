SELECT 
    card_id,
    card_name,
    hp,
    damages,
    type_name,
    stage_name,
    collection_name
FROM view_cards_details
ORDER BY CAST(damages AS UNSIGNED) DESC
LIMIT 10;

SELECT 
    card_id,
    card_name,
    hp,
    type_name,
    stage_name,
    collection_name
FROM view_cards_details
ORDER BY hp DESC
LIMIT 7;

SELECT 
    type_name,
    COUNT(*) AS total_cards
FROM view_cards_details
GROUP BY type_name
ORDER BY total_cards DESC;

SELECT 
    stage_name,
    COUNT(*) AS total_cards
FROM view_cards_details
GROUP BY stage_name
ORDER BY total_cards DESC;

SELECT 
    collection_name,
    collection_release_date,
    COUNT(*) AS total_cards
FROM view_cards_details
GROUP BY collection_name, collection_release_date
ORDER BY collection_release_date DESC;

SELECT 
    card_id,
    card_name,
    weak,
    resistence,
    type_name,
    stage_name
FROM view_cards_details
WHERE weak IS NOT NULL OR resistence IS NOT NULL;

SELECT 
    type_name,
    AVG(hp) AS avg_hp
FROM view_cards_details
GROUP BY type_name
ORDER BY avg_hp DESC;

SELECT 
    stage_name,
    AVG(hp) AS avg_hp
FROM view_cards_details
GROUP BY stage_name
ORDER BY avg_hp DESC;