SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `epreuves`;
CREATE TABLE `epreuves` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `id_sport` varchar(100) DEFAULT NULL,
  `name_epreuve` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `epreuves` (`id`, `id_sport`, `name_epreuve`) VALUES
(1,	'1',	'100m'),
(2,	'1',	'200m'),
(3,	'1',	'400m'),
(4,	'1',	'800m'),
(5,	'1',	'1500m'),
(6,	'1',	'5000m'),
(7,	'1',	'10000m'),
(8,	'1',	'Marathon'),
(9,	'1',	'110m haies'),
(10,	'1',	'400m haies'),
(11,	'1',	'3000m haies'),
(12,	'1',	'4 x 100m haies'),
(13,	'1',	'10km marche'),
(14,	'1',	'Saut en hauteur'),
(15,	'1',	'Saut à la perche'),
(16,	'1',	'Saut en longueur'),
(17,	'1',	'Triple saut'),
(18,	'1',	'Lancer du poids '),
(19,	'1',	'Lancer du disque'),
(20,	'1',	'Lancer du marteau'),
(21,	'1',	'Lancer du javelot'),
(22,	'1',	'Décathlon'),
(23,	'2',	'Skiff'),
(24,	'2',	'Deux de couple'),
(25,	'2',	'Deux de couple poids léger'),
(26,	'2',	'Quatre de couple'),
(27,	'2',	'Deux sans barreur'),
(28,	'2',	'Quatre sans barreur'),
(29,	'2',	'Huit'),
(30,	'3',	'Simple'),
(31,	'3',	'Double'),
(32,	'4',	'Tournoi masculin'),
(33,	'4',	'Tournoi féminin'),
(34,	'5',	'Tournoi masculin'),
(35,	'5',	'Tournoi féminin')
ON DUPLICATE KEY UPDATE `id` = VALUES(`id`), `id_sport` = VALUES(`id_sport`), `name_epreuve` = VALUES(`name_epreuve`);

DROP TABLE IF EXISTS `sports`;
CREATE TABLE `sports` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name_sport` varchar(100) DEFAULT NULL,
  `site_olympique` TEXT,
  `img_sport` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `sports` (`id`, `name_sport`, `site_olympique`, `img_sport`) VALUES
(1,	'Athlétisme', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', 'https://suaps.univ-grenoble-alpes.fr/medias/photo/activite-athletisme-03_1657198355110-jpg'),
(2,	'Aviron', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', 'https://www.airzen.fr/wp-content/uploads/2022/03/dmitrydesigner_AVIRON-scaled.jpeg'),
(3,	'Badminton', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', 'https://cdn-s-www.estrepublicain.fr/images/1D6E37A4-8226-4796-BAF5-06240331A1EA/NW_raw/toma-junior-popov-1635785326.jpg'),
(4,	'Basketball', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', 'https://img.olympics.com/images/image/private/t_16-9_640/f_auto/v1668613158/primary/oo36twekciqogi7th0eq'),
(5,	'Basketball 3×3', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', 'https://img.olympics.com/images/image/private/t_16-9_640/f_auto/v1668613158/primary/oo36twekciqogi7th0eq'),
(6,	'Boxe', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', ''),
(7,	'Canoë sprint', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', ''),
(8,	'Canoë-kayak slalom', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', ''),
(9,	'Cyclisme sur piste', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', ''),
(10,	'Cyclisme sur route', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', ''),
(11,	'BMX freestyle', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', ''),
(12,	'BMX racing', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', ''),
(13,	'Mountain bike (VTT)', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', ''),
(14,	'Escrime', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', ''),
(15,	'Football', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', ''),
(16,	'Golf', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', ''),
(17,	'Gymnastique artistique', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', ''),
(18,	'Gymnastique rythmique', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', ''),
(19,	'Trampoline', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', ''),
(20,	'Haltérophilie', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', ''),
(21,	'Handball', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', ''),
(22,	'Hockey', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', ''),
(23,	'Judo', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', ''),
(24,	'Lutte', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', ''),
(25,	'Pentathlon moderne', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', ''),
(26,	'Rugby', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', ''),
(27,	'Natation', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', ''),
(28,	'Natation artistique', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', ''),
(29,	'Natation marathon', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', ''),
(30,	'Plongeon', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', ''),
(31,	'Waterpolo', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', ''),
(32,	'Sports équestres', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', ''),
(33,	'Taekwondo', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', ''),
(34,	'Tennis', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', ''),
(35,	'Tennis de table', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', ''),
(36,	'Tir', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', ''),
(37,	'Tir à l’arc', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', ''),
(38,	'Triathlon', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', ''),
(39,	'Voile', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', ''),
(40,	'Volleyball', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', ''),
(41,	'Volleyball de plage', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', ''),
(42,	'Breaking', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', ''),
(43,	'Escalade sportive', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', ''),
(44,	'Skateboard', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', ''),
(45,	'Surf', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', '')
ON DUPLICATE KEY UPDATE `id` = VALUES(`id`), `name_sport` = VALUES(`name_sport`);

DROP TABLE IF EXISTS `athletes`;
CREATE TABLE `athletes` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `id_epreuve` tinyint(3) unsigned,
  `country` VARCHAR(3),
  `name_athlete` VARCHAR(100),
  `medaille` VARCHAR(50),
  `best_result` VARCHAR(100),
  PRIMARY KEY (`id`),
  FOREIGN KEY (`id_epreuve`) REFERENCES `epreuves`(`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `athletes` (`id`, `id_epreuve`, `country`,`name_athlete`, `medaille`, `best_result`) VALUES
    (1, 7, 'NED', 'Sifan Hassan', 'Or', '29:55.32'),
    (2, 7, 'BRN', 'Kalkidan Gezaegnhe', 'Argent', '29:56.18'),
    (3, 7, 'ETH', 'Letesenbet Gidey', 'Bronze', '29:56.18'),
    (4, 1, 'ITA', 'Lamont Marcell Jacobs', 'Or', '9.80'),
    (5, 1, 'USA', 'Fred Kerley', 'Argent', '9.84'),
    (6, 1, 'CAN', 'Andre De Grasse', 'Bronze', '9.89'),
    (7, 9, 'JAM', 'Hansle Parchment', 'Or', '13.04'),
    (8, 9, 'USA', 'Grant Holloway', 'Argent', '13.09'),
    (9, 9, 'JAM', 'Ronald Levy', 'Bronze', '13.10')
ON DUPLICATE KEY UPDATE `id` = VALUES(`id`), `name_athlete` = VALUES(`name_athlete`);

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifiant` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `identifiant`, `password`) VALUES
(1,	'admin',	'$2a$12$96NJW0zoD56e1rqQxMIyQO2xw.3Dd26wRiAkPSQEFWrF4nzMu1I.S')
ON DUPLICATE KEY UPDATE `id` = VALUES(`id`), `identifiant` = VALUES(`identifiant`), `password` = VALUES(`password`);

-- 2024-03-05 14:48:23
