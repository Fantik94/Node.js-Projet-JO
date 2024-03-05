CREATE DATABASE projet_jo;

CREATE TABLE projet_jo.sports(
    id TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    sports VARCHAR(100)
);

INSERT INTO projet_jo.sports VALUES
    (NULL, 'Athlétisme'),
    (NULL, 'aviron'),
    (NULL, 'badminton'),
    (NULL, 'basketball'),
    (NULL, 'basketball 3×3'),
    (NULL, 'boxe'),
    (NULL, 'canoë sprint'),
    (NULL, 'canoë-kayak slalom'),
    (NULL, 'cyclisme sur piste'),
    (NULL, 'cyclisme sur route'),
    (NULL, 'BMX freestyle'),
    (NULL, 'BMX racing'),
    (NULL, 'Mountain bike (VTT)'),
    (NULL, 'escrime'),
    (NULL, 'football'),
    (NULL, 'golf'),
    (NULL, 'gymnastique artistique'),
    (NULL, 'gymnastique rythmique'),
    (NULL, 'trampoline'),
    (NULL, 'haltérophilie'),
    (NULL, 'handball'),
    (NULL, 'hockey'),
    (NULL, 'judo'),
    (NULL, 'lutte'),
    (NULL, 'pentathlon moderne'),
    (NULL, 'rugby'),
    (NULL, 'natation'),
    (NULL, 'natation artistique'),
    (NULL, 'natation marathon'),
    (NULL, 'plongeon'),
    (NULL, 'waterpolo'),
    (NULL, 'sports équestres'),
    (NULL, 'taekwondo'),
    (NULL, 'tennis'),
    (NULL, 'tennis de table'),
    (NULL, 'tir'),
    (NULL, 'tir à l’arc'),
    (NULL, 'triathlon'),
    (NULL, 'voile'),
    (NULL, 'volleyball'),
    (NULL, 'volleyball de plage'),
    (NULL, 'breaking'),
    (NULL, 'escalade sportive'),
    (NULL, 'skateboard'),
    (NULL, 'surf')
;


CREATE TABLE projet_jo.epreuves(
    id TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    id_sports TINYINT UNSIGNED,
    epreuves VARCHAR(100)
);

INSERT INTO projet_jo.epreuves VALUES
    (NULL, 1, '100m'),
    (NULL, 1, '200m'),
    (NULL, 1, '400m'),
    (NULL, 1, '800m'),
    (NULL, 1, '1500m'),
    (NULL, 1, '5000m'),
    (NULL, 1, '10000m'),
    (NULL, 1, 'Marathon'),
    (NULL, 1, '110m haies'),
    (NULL, 1, '400m haies'),
    (NULL, 1, '3000m haies'),
    (NULL, 1, '4 x 100m haies'),
    (NULL, 1, '10km marche'),
    (NULL, 1, 'Saut en hauteur'),
    (NULL, 1, 'Saut à la perche'),
    (NULL, 1, 'Saut en longueur'),
    (NULL, 1, 'Triple saut'),
    (NULL, 1, 'Lancer du poids '),
    (NULL, 1, 'Lancer du disque'),
    (NULL, 1, 'lancer du marteau'),
    (NULL, 1, 'lancer du javelot'),
    (NULL, 1, 'Décathlon'),
    (NULL, 2, 'Skiff'),
    (NULL, 2, 'Deux de couple'),
    (NULL, 2, 'Deux de couple poids léger'),
    (NULL, 2, 'Quatre de couple'),
    (NULL, 2, 'Deux sans barreur'),
    (NULL, 2, 'Quatre sans barreur'),
    (NULL, 2, 'Huit'),
    (NULL, 3, 'Simple'),
    (NULL, 3, 'Double'),
    (NULL, 4, 'Tournoi masculin'),
    (NULL, 4, 'Tournoi féminin'),
    (NULL, 5, 'Tournoi masculin'),
    (NULL, 5, 'Tournoi féminin')
;

CREATE TABLE projet_jo.athletes (
    id TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    id_epreuves TINYINT UNSIGNED,
    country VARCHAR(3),
    athlete VARCHAR(100),
    medaille VARCHAR(50),
    best_result VARCHAR(100)
);

INSERT INTO projet_jo.athletes (country, id_epreuves, athlete, medaille, best_result) VALUES
    ('NED', 7,'Sifan Hassan', 'Or', '29:55.32'),
    ('BRN', 7,'Kalkidan Gezaegnhe', 'Argent', '29:56.18'),
    ('ETH', 7,'Letesenbet Gidey', 'Bronze', '29:56.18'),
    ('ITA', 1,'Lamont Marcell Jacobs', 'Or', '9.80'),
    ('USA', 1,'Fred Kerley', 'Argent', '9.84'),
    ('CAN', 1,'Andre De Grasse', 'Bronze', '9.89'),
    ('JAM', 9,'Hansle Parchment', 'Or', '13.04'),
    ('USA', 9,'Grant Holloway', 'Argent', '13.09'),
    ('JAM', 9,'Ronald Levy', 'Bronze', '13.10')
;