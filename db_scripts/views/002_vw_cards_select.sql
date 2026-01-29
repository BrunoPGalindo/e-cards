SELECT
    c.id,
    c.hp,
    c.name,
    c.type_name,
    c.stagename,
    c.collectionSetName,
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
FROM vw_cards_with_fks c;