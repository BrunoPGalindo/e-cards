CREATE OR REPLACE VIEW vw_cards_with_fks AS
SELECT
    c.id,
    c.hp,
    c.name,
    t.type_name,
    s.stagename,
    col.collectionSetName,
    c.type_id,
    c.stage_id,
    c.collection_id,
    c.info,
    c.attack,
    c.damage,
    c.weak,
    c.resist,
    c.retreat,
    c.cardNumberInCollection
FROM tbl_cards c
LEFT JOIN tbl_types t ON c.type_id = t.id
LEFT JOIN tbl_stages s ON c.stage_id = s.id
LEFT JOIN tbl_collections col ON c.collection_id = col.id;
