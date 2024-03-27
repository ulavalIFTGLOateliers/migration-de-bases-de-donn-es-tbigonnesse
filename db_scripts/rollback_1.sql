DROP TABLE IF EXISTS band;



ALTER TABLE musician RENAME TO singer,
DROP COLUMN role,
DROP COLUMN bandName;

ALTER TABLE singer
CHANGE musicianName singerName VARCHAR(50);


