DROP TABLE IF EXISTS marine_observation;

CREATE TABLE IF NOT EXISTS marine_observation (
    observation_id       INTEGER PRIMARY KEY,
    animal_name          TEXT    NOT NULL,
    animal_group         TEXT    NOT NULL,
    habitat              TEXT    NOT NULL,
    depth_m              INTEGER NOT NULL,
    estimated_weight_kg  REAL    NOT NULL
);

INSERT INTO marine_observation VALUES
(1, 'Blue Whale',        'Mammal',     'Open Ocean', 30, 120000.0),
(2, 'Bottlenose Dolphin','Mammal',     'Open Ocean', 15,    250.0),
(3, 'Green Sea Turtle',  'Reptile',    'Coral Reef', 10,    160.0),
(4, 'Clownfish',         'Fish',       'Coral Reef',  5,      0.3),
(5, 'Hammerhead Shark',  'Fish',       'Open Ocean', 70,    230.0),
(6, 'Giant Octopus',     'Mollusc',    'Seabed',     40,     25.0),
(7, 'Manta Ray',         'Fish',       'Open Ocean', 25,   1350.0),
(8, 'Starfish',          'Echinoderm', 'Seabed',     20,      0.5);

SELECT DISTINCT animal_name FROM Marine_observation; 
SELECT COUNT(DISTINCT animal_name)AS Count_ofdistinctanimals FROM Marine_observation;

SELECT COUNT(observation_id) FROM Marine_observation;
SELECT COUNT(observation_id) FROM Marine_observation WHERE habitat="Open Ocean";

SELECT SUM(estimated_weight_kg) FROM Marine_observation;
SELECT AVG(depth_m) FROM Marine_observation;

SELECT Count(observation_id) AS Numberof_ObservationID, Count (distinct animal_group) AS Numberofdistinctanimals, SUM(estimated_weight_kg) AS sumoftotalweight, AVG(depth_m) AS average_depth FROM Marine_observation;











