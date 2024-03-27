CREATE TABLE IF NOT EXISTS band (     bandName VARCHAR(50),
                                        creation YEAR,
                                        genre VARCHAR(50),
                                        PRIMARY KEY(bandName));

INSERT INTO band VALUES ("Crazy Duo", 2015, "rock"), ("Luna", 2009, "classical"), ("Mysterio", 2019, "pop");

ALTER TABLE singer RENAME TO musician;
ALTER TABLE musician
CHANGE singerName musicianName VARCHAR(50);

ALTER TABLE musician
ADD COLUMN role VARCHAR(50),
ADD COLUMN bandName VARCHAR(50);
UPDATE musician
SET role = 
    CASE 
        WHEN musicianName = 'Alina' THEN "vocals"
        WHEN musicianName = 'Mysterio' THEN "guitar"
        WHEN musicianName = 'Rainbow' THEN "percussion"
        WHEN musicianName = 'Luna' THEN "piano"
        ELSE role
    END;
UPDATE musician
SET bandName = 
    CASE 
        WHEN musicianName = 'Alina' THEN "Crazy Duo"
        WHEN musicianName = 'Mysterio' THEN "Mysterio"
        WHEN musicianName = 'Rainbow' THEN "Crazy Duo"
        WHEN musicianName = 'Luna' THEN "Luna"
        ELSE bandName
    END;
