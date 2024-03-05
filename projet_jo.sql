SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `epreuves`;
CREATE TABLE `epreuves` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `id_sports` varchar(100) DEFAULT NULL,
  `epreuves` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `epreuves` (`id`, `id_sports`, `epreuves`) VALUES
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
(20,	'1',	'lancer du marteau'),
(21,	'1',	'lancr du javelot'),
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
ON DUPLICATE KEY UPDATE `id` = VALUES(`id`), `id_sports` = VALUES(`id_sports`), `epreuves` = VALUES(`epreuves`);

DROP TABLE IF EXISTS `sports`;
CREATE TABLE `sports` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `sport` varchar(100) DEFAULT NULL,
  `site_olympique` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `sports` (`id`, `sport`, `site_olympique`) VALUES
(1,	'Athlétisme', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>'),
(2,	'aviron', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>'),
(3,	'badminton', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>'),
(4,	'basketball', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>'),
(5,	'basketball 3×3', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>'),
(6,	'boxe', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>'),
(7,	'canoë sprint', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>'),
(8,	'canoë-kayak slalom', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>'),
(9,	'cyclisme sur piste', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>'),
(10,	'cyclisme sur route', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>'),
(11,	'BMX freestyle', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>'),
(12,	'BMX racing', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>'),
(13,	'Mountain bike (VTT)', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>'),
(14,	'escrime', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>'),
(15,	'football', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>'),
(16,	'golf', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>'),
(17,	'gymnastique artistique', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>'),
(18,	'gymnastique rythmique', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>'),
(19,	'trampoline', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>'),
(20,	'haltérophilie', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>'),
(21,	'handball', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>'),
(22,	'hockey', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>'),
(23,	'judo', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>'),
(24,	'lutte', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>'),
(25,	'pentathlon moderne', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>'),
(26,	'rugby', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>'),
(27,	'natation', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>'),
(28,	'natation artistique', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>'),
(29,	'natation marathon', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>'),
(30,	'plongeon', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>'),
(31,	'waterpolo', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>'),
(32,	'sports équestres', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>'),
(33,	'taekwondo', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>'),
(34,	'tennis', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>'),
(35,	'tennis de table', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>'),
(36,	'tir', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>'),
(37,	'tir à l’arc', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>'),
(38,	'triathlon', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>'),
(39,	'voile', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>'),
(40,	'volleyball', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>'),
(41,	'volleyball de plage', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>'),
(42,	'breaking', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>'),
(43,	'escalade sportive', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>'),
(44,	'skateboard', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>'),
(45,	'surf', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>')
ON DUPLICATE KEY UPDATE `id` = VALUES(`id`), `sport` = VALUES(`sport`);

DROP TABLE IF EXISTS `athletes`;
CREATE TABLE `athletes` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `id_epreuves` tinyint(3) unsigned,
  `country` VARCHAR(3),
  `athlete` VARCHAR(100),
  `medaille` VARCHAR(50),
  `best_result` VARCHAR(100),
  PRIMARY KEY (`id`),
  FOREIGN KEY (`id_epreuves`) REFERENCES `epreuves`(`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `athletes` (`id`, `id_epreuves`, `country`,`athlete`, `medaille`, `best_result`) VALUES
    (1, 7, 'NED', 'Sifan Hassan', 'Or', '29:55.32'),
    (2, 7, 'BRN', 'Kalkidan Gezaegnhe', 'Argent', '29:56.18'),
    (3, 7, 'ETH', 'Letesenbet Gidey', 'Bronze', '29:56.18'),
    (4, 1, 'ITA', 'Lamont Marcell Jacobs', 'Or', '9.80'),
    (5, 1, 'USA', 'Fred Kerley', 'Argent', '9.84'),
    (6, 1, 'CAN', 'Andre De Grasse', 'Bronze', '9.89'),
    (7, 9, 'JAM', 'Hansle Parchment', 'Or', '13.04'),
    (8, 9, 'USA', 'Grant Holloway', 'Argent', '13.09'),
    (9, 9, 'JAM', 'Ronald Levy', 'Bronze', '13.10')
ON DUPLICATE KEY UPDATE `id` = VALUES(`id`), `athlete` = VALUES(`athlete`);

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