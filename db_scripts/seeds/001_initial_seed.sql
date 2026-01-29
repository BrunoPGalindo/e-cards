INSERT INTO tbl_types (id, type_name)
VALUES 
(1, 'Grama'),
(2, 'Fogo'),
(3, 'Água'),
(4, 'Elétrico'),
(5, 'Psíquico'),
(6, 'Luta'),
(7, 'Veneno'),
(8, 'Pedra/Metal'),
(10, 'Dragão'),
(11, 'Normal')
ON CONFLICT (id) DO NOTHING;


INSERT INTO tbl_stages (stagename)
VALUES
  ('Basic'),
  ('Stage 1'),
  ('Stage 2');


INSERT INTO tbl_collections (collectionSetName, releaseDate, totalCardsInCollection)
VALUES
  ('Base Set', '1999-01-09', 102),
  ('Jungle', '1999-06-16', 64),
  ('Fossil', '1999-10-10', 62);

INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collection_id) VALUES
(60, 'Bulbasaur', 1, 1, 'A strange seed was planted on its back at birth. The plant sprouts and grows with this Pokémon.', 'Vine Whip', '10', 'Fire', '', 1, 1, 1),
(50, 'Charmander', 2, 1, 'Obviously prefers hot places. When it rains, steam is said to spout from the tip of its tail.', 'Scratch', '10', 'Water', '', 1, 4, 1),
(40, 'Squirtle', 3, 1, 'After birth, its back swells and hardens into a shell. Powerfully sprays foam from its mouth.', 'Bubble', '10', 'Lightning', '', 1, 7, 1),
(70, 'Ivysaur', 1, 2, 'When the bulb on its back grows large, it appears to lose the ability to stand on its hind legs.', 'Razor Leaf', '30', 'Fire', '', 2, 2, 1),
(80, 'Charmeleon', 2, 2, 'When it swings its burning tail, it elevates the temperature to unbearably high levels.', 'Flamethrower', '50', 'Water', '', 2, 5, 1),
(60, 'Wartortle', 3, 2, 'Often hides in water to stalk unwary prey. For swimming fast, it moves its ears to maintain balance.', 'Water Gun', '30', 'Lightning', '', 1, 8, 1);
