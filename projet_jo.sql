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
(1,	'Athlétisme', 'src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">', 'https://suaps.univ-grenoble-alpes.fr/medias/photo/activite-athletisme-03_1657198355110-jpg'),
(2,	'Aviron', 'src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">', 'https://www.airzen.fr/wp-content/uploads/2022/03/dmitrydesigner_AVIRON-scaled.jpeg'),
(3,	'Badminton', 'src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">', 'https://cdn-s-www.estrepublicain.fr/images/1D6E37A4-8226-4796-BAF5-06240331A1EA/NW_raw/toma-junior-popov-1635785326.jpg'),
(4,	'Basketball', 'src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">', 'https://imageio.forbes.com/specials-images/imageserve/650da7418bf6b2920bd5a9cc/City-Of-Palms-Classic/960x0.jpg?format=jpg&width=960'),
(5,	'Basketball 3×3', 'src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">', 'https://img.olympics.com/images/image/private/t_16-9_640/f_auto/v1668613158/primary/oo36twekciqogi7th0eq'),
(6,	'Boxe', 'src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">', 'https://img.freepik.com/photos-gratuite/deux-boxeurs-professionnels-smoky-noir_155003-14259.jpg?size=626&ext=jpg&ga=GA1.1.1546980028.1703030400&semt=ais'),
(7,	'Canoë sprint', 'src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">', 'https://img.olympics.com/images/image/private/t_16-9_640/f_auto/v1538355600/primary/lcexnrdj6bkgcg2ilexk'),
(8,	'Canoë-kayak slalom', 'src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">', 'https://img.olympics.com/images/image/private/t_s_pog_staticContent_hero_xl_2x/f_auto/primary/ytnd5je7ak288tq3rxup'),
(9,	'Cyclisme sur piste', 'src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">', 'https://img.olympics.com/images/image/private/t_s_pog_staticContent_hero_lg_2x/f_auto/v1668679688/primary/uyynza5tmypufqqve330'),
(10,	'Cyclisme sur route', 'src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">', 'https://www.lequipe.fr/_medias/img-photo-jpg/bruno-armirail-benjamin-thomas-et-alexis-gougeard-en-2021-aux-championnats-d-europe-de-cyclisme-sur-/1500000001801753/0:0,1998:1332-828-552-75/e770b.jpg'),
(11,	'BMX freestyle', 'src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">', 'https://img.20mn.fr/GpblGFu-RiiCWFfRTW-K2Ck/960x614_acrobates-bmx-freestyle-retrouvent-souvent-tete-envers'),
(12,	'BMX racing', 'src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">', 'https://img.olympics.com/images/image/private/t_social_share_thumb/f_auto/primary/bgzkchcwlgthx5akrgbf'),
(13,	'Mountain bike (VTT)', 'src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">', 'https://img.hardloop.com/image/upload/v1662542815/medium_article_710_les_6_meilleures_chaussures_de_vtt_3a47de390f.jpg'),
(14,	'Escrime', 'src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">', 'https://www.lejdd.fr/lmnr/var/jdd/public/media/image/2022/07/19/12/escrime-comment-les-francais-apprivoisent-leurs-armes.jpg?VersionId=Mw31AogdDUwVLuCaVdxMozm9kito7TTP'),
(15,	'Football', 'src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">', 'https://img.lamontagne.fr/USmPhFYCCGpBwc_b8e9cGsmWpgn14oos_FWTNudcq2Y/fit/657/438/sm/0/bG9jYWw6Ly8vMDAvMDAvMDYvNjQvOTgvMjAwMDAwNjY0OTg1Nw.jpg'),
(16,	'Golf', 'src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">', 'https://d34oo5x54o72bd.cloudfront.net/app/uploads/2022/03/22.TPCToronto-RoadTo-1646245503.jpg'),
(17,	'Gymnastique artistique', 'src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">', 'https://img.freepik.com/photos-gratuite/gymnaste-feminine-faisant-tour-complique-poutre-equilibre-gymnastique-dans-arene-professionnelle_654080-2012.jpg'),
(18,	'Gymnastique rythmique', 'src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">', 'https://medias.paris2024.org/uploads/2020/11/GettyImages-592331254-Gymnastique-rythmique-scaled-1.jpg?x-oss-process=image/resize,w_2560,h_1533,m_lfit/format,jpeg'),
(19,	'Trampoline', 'src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">', 'https://france-trampoline.com/img/cms/trampoline-judges-sydney-olympics.jpg'),
(20,	'Haltérophilie', 'src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">', ''),
(21,	'Handball', 'src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">', ''),
(22,	'Hockey', 'src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">', ''),
(23,	'Judo', 'src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">', ''),
(24,	'Lutte', 'src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">', ''),
(25,	'Pentathlon moderne', 'src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">', ''),
(26,	'Rugby', 'src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">', ''),
(27,	'Natation', 'src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">', ''),
(28,	'Natation artistique', 'src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">', ''),
(29,	'Natation marathon', 'src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">', ''),
(30,	'Plongeon', 'src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">', ''),
(31,	'Waterpolo', 'src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">', ''),
(32,	'Sports équestres', 'src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">', ''),
(33,	'Taekwondo', 'src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">', ''),
(34,	'Tennis', 'src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">', ''),
(35,	'Tennis de table', 'src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">', ''),
(36,	'Tir', 'src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">', ''),
(37,	'Tir à l’arc', 'src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">', ''),
(38,	'Triathlon', 'src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">', ''),
(39,	'Voile', 'src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">', ''),
(40,	'Volleyball', 'src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">', ''),
(41,	'Volleyball de plage', 'src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">', ''),
(42,	'Breaking', 'src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">', ''),
(43,	'Escalade sportive', 'src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">', ''),
(44,	'Skateboard', 'src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">', ''),
(45,	'Surf', 'src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.991441025259!2d2.2919063755159947!3d48.858373600708894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sTour%20Eiffel!5e0!3m2!1sfr!2sfr!4v1709646612902!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">', '')
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
