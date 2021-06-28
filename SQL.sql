-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Lun 28 Juin 2021 à 15:28
-- Version du serveur :  5.7.33-0ubuntu0.16.04.1
-- Version de PHP :  7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `A1rwolF63OL`
--

-- --------------------------------------------------------

--
-- Structure de la table `addon_account`
--

CREATE TABLE `addon_account` (
  `name` varchar(60) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `addon_account`
--

INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
('caution', 'Caution', 0);

-- --------------------------------------------------------

--
-- Structure de la table `addon_account_data`
--

CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `money` double NOT NULL,
  `owner` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `addon_account_data`
--

INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
(1879, 'caution', 0, 'e3424c86481b8b009bd30219834270eaadc1a9bf'),
(1880, 'caution', 0, 'fe989f8be3b37d0ac95f38a625915d390477263f');

-- --------------------------------------------------------

--
-- Structure de la table `addon_inventory`
--

CREATE TABLE `addon_inventory` (
  `name` varchar(60) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `addon_inventory_items`
--

CREATE TABLE `addon_inventory_items` (
  `id` int(11) NOT NULL,
  `inventory_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `datastore`
--

CREATE TABLE `datastore` (
  `name` varchar(60) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `datastore_data`
--

CREATE TABLE `datastore_data` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `data` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `items`
--

CREATE TABLE `items` (
  `name` varchar(50) NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `limit` int(11) NOT NULL DEFAULT '-1',
  `rare` int(11) NOT NULL DEFAULT '0',
  `can_remove` int(11) NOT NULL DEFAULT '1',
  `weight` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `items`
--

INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
('alive_chicken', 'Poulet vivant', 20, 0, 1, 1),
('bread', 'bread', -1, 0, 1, 1),
('clothe', 'Vêtement', 40, 0, 1, 1),
('copper', 'Cuivre', 56, 0, 1, 1),
('cutted_wood', 'Bois coupé', 20, 0, 1, 1),
('diamond', 'Diamant', 50, 0, 1, 1),
('essence', 'Essence', 24, 0, 1, 1),
('fabric', 'Tissu', 80, 0, 1, 1),
('fish', 'Poisson', 100, 0, 1, 1),
('gold', 'Or', 21, 0, 1, 1),
('iron', 'Fer', 42, 0, 1, 1),
('packaged_chicken', 'Poulet en barquette', 100, 0, 1, 1),
('packaged_plank', 'Paquet de planches', 100, 0, 1, 1),
('petrol', 'Pétrole', 24, 0, 1, 1),
('petrol_raffin', 'Pétrole Raffiné', 24, 0, 1, 1),
('slaughtered_chicken', 'Poulet abattu', 20, 0, 1, 1),
('sprunk', 'Sprite', -1, 0, 1, 1),
('stone', 'Pierre', 7, 0, 1, 1),
('washed_stone', 'Pierre Lavée', 7, 0, 1, 1),
('water', 'water', -1, 0, 1, 1),
('wood', 'Bois', 20, 0, 1, 1),
('wool', 'Laine', 40, 0, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `jobs`
--

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('fisherman', 'Pêcheur', 0),
('fueler', 'Raffineur', 0),
('lumberjack', 'Bûcheron', 0),
('miner', 'Mineur', 0),
('reporter', 'Journaliste', 0),
('slaughterer', 'Abatteur', 0),
('tailor', 'Couturier', 0),
('unemployed', 'Chomeur', 0),
('unemployed2', 'Etat', 0);

-- --------------------------------------------------------

--
-- Structure de la table `job_grades`
--

CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL,
  `job_name` varchar(255) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'unemployed', 0, 'unemployed', 'Chomeur', 100, '{}', '{}'),
(2, 'unemployed2', 0, 'rsa', 'Etat', 50, '{}', '{}'),
(503, 'lumberjack', 0, 'employee', 'Intérimaire', 0, '{}', '{}'),
(504, 'fisherman', 0, 'employee', 'Intérimaire', 0, '{}', '{}'),
(505, 'fueler', 0, 'employee', 'Intérimaire', 0, '{}', '{}'),
(506, 'reporter', 0, 'employee', 'Intérimaire', 0, '{}', '{}'),
(507, 'tailor', 0, 'employee', 'Intérimaire', 0, '{"mask_1":0,"arms":1,"glasses_1":0,"hair_color_2":4,"makeup_1":0,"face":19,"glasses":0,"mask_2":0,"makeup_3":0,"skin":29,"helmet_2":0,"lipstick_4":0,"sex":0,"torso_1":24,"makeup_2":0,"bags_2":0,"chain_2":0,"ears_1":-1,"bags_1":0,"bproof_1":0,"shoes_2":0,"lipstick_2":0,"chain_1":0,"tshirt_1":0,"eyebrows_3":0,"pants_2":0,"beard_4":0,"torso_2":0,"beard_2":6,"ears_2":0,"hair_2":0,"shoes_1":36,"tshirt_2":0,"beard_3":0,"hair_1":2,"hair_color_1":0,"pants_1":48,"helmet_1":-1,"bproof_2":0,"eyebrows_4":0,"eyebrows_2":0,"decals_1":0,"age_2":0,"beard_1":5,"shoes":10,"lipstick_1":0,"eyebrows_1":0,"glasses_2":0,"makeup_4":0,"decals_2":0,"lipstick_3":0,"age_1":0}', '{"mask_1":0,"arms":5,"glasses_1":5,"hair_color_2":4,"makeup_1":0,"face":19,"glasses":0,"mask_2":0,"makeup_3":0,"skin":29,"helmet_2":0,"lipstick_4":0,"sex":1,"torso_1":52,"makeup_2":0,"bags_2":0,"chain_2":0,"ears_1":-1,"bags_1":0,"bproof_1":0,"shoes_2":1,"lipstick_2":0,"chain_1":0,"tshirt_1":23,"eyebrows_3":0,"pants_2":0,"beard_4":0,"torso_2":0,"beard_2":6,"ears_2":0,"hair_2":0,"shoes_1":42,"tshirt_2":4,"beard_3":0,"hair_1":2,"hair_color_1":0,"pants_1":36,"helmet_1":-1,"bproof_2":0,"eyebrows_4":0,"eyebrows_2":0,"decals_1":0,"age_2":0,"beard_1":5,"shoes":10,"lipstick_1":0,"eyebrows_1":0,"glasses_2":0,"makeup_4":0,"decals_2":0,"lipstick_3":0,"age_1":0}'),
(508, 'miner', 0, 'employee', 'Intérimaire', 0, '{"tshirt_2":1,"ears_1":8,"glasses_1":15,"torso_2":0,"ears_2":2,"glasses_2":3,"shoes_2":1,"pants_1":75,"shoes_1":51,"bags_1":0,"helmet_2":0,"pants_2":7,"torso_1":71,"tshirt_1":59,"arms":2,"bags_2":0,"helmet_1":0}', '{}'),
(509, 'slaughterer', 0, 'employee', 'Intérimaire', 0, '{"age_1":0,"glasses_2":0,"beard_1":5,"decals_2":0,"beard_4":0,"shoes_2":0,"tshirt_2":0,"lipstick_2":0,"hair_2":0,"arms":67,"pants_1":36,"skin":29,"eyebrows_2":0,"shoes":10,"helmet_1":-1,"lipstick_1":0,"helmet_2":0,"hair_color_1":0,"glasses":0,"makeup_4":0,"makeup_1":0,"hair_1":2,"bproof_1":0,"bags_1":0,"mask_1":0,"lipstick_3":0,"chain_1":0,"eyebrows_4":0,"sex":0,"torso_1":56,"beard_2":6,"shoes_1":12,"decals_1":0,"face":19,"lipstick_4":0,"tshirt_1":15,"mask_2":0,"age_2":0,"eyebrows_3":0,"chain_2":0,"glasses_1":0,"ears_1":-1,"bags_2":0,"ears_2":0,"torso_2":0,"bproof_2":0,"makeup_2":0,"eyebrows_1":0,"makeup_3":0,"pants_2":0,"beard_3":0,"hair_color_2":4}', '{"age_1":0,"glasses_2":0,"beard_1":5,"decals_2":0,"beard_4":0,"shoes_2":0,"tshirt_2":0,"lipstick_2":0,"hair_2":0,"arms":72,"pants_1":45,"skin":29,"eyebrows_2":0,"shoes":10,"helmet_1":-1,"lipstick_1":0,"helmet_2":0,"hair_color_1":0,"glasses":0,"makeup_4":0,"makeup_1":0,"hair_1":2,"bproof_1":0,"bags_1":0,"mask_1":0,"lipstick_3":0,"chain_1":0,"eyebrows_4":0,"sex":1,"torso_1":49,"beard_2":6,"shoes_1":24,"decals_1":0,"face":19,"lipstick_4":0,"tshirt_1":9,"mask_2":0,"age_2":0,"eyebrows_3":0,"chain_2":0,"glasses_1":5,"ears_1":-1,"bags_2":0,"ears_2":0,"torso_2":0,"bproof_2":0,"makeup_2":0,"eyebrows_1":0,"makeup_3":0,"pants_2":0,"beard_3":0,"hair_color_2":4}');

-- --------------------------------------------------------

--
-- Structure de la table `licenses`
--

CREATE TABLE `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `licenses`
--

INSERT INTO `licenses` (`type`, `label`) VALUES
('dmv', 'Code de la route'),
('drive', 'Permis de conduire'),
('drive_bike', 'Permis moto'),
('drive_truck', 'Permis camion');

-- --------------------------------------------------------

--
-- Structure de la table `open_car`
--

CREATE TABLE `open_car` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL,
  `got` varchar(50) DEFAULT NULL,
  `NB` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `owned_vehicles`
--

CREATE TABLE `owned_vehicles` (
  `owner` varchar(222) NOT NULL,
  `garageperso` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Garage Personnel',
  `plate` varchar(12) NOT NULL,
  `impound` tinyint(1) DEFAULT '0',
  `vehicle` longtext,
  `type` varchar(20) NOT NULL DEFAULT 'car',
  `stored` tinyint(1) NOT NULL DEFAULT '0',
  `fourrieremecano` tinyint(1) NOT NULL DEFAULT '0',
  `vehiclename` varchar(50) NOT NULL DEFAULT 'voiture',
  `lasthouse` int(11) DEFAULT '0',
  `damages` varchar(255) NOT NULL DEFAULT '{}',
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `garage` varchar(255) NOT NULL DEFAULT 'square',
  `job` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `society_moneywash`
--

CREATE TABLE `society_moneywash` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) NOT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `trunk_inventory`
--

CREATE TABLE `trunk_inventory` (
  `id` int(11) NOT NULL,
  `plate` varchar(8) NOT NULL,
  `data` text NOT NULL,
  `owned` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `skin` longtext COLLATE utf8mb4_bin,
  `job` varchar(255) COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT '0',
  `job2` varchar(255) COLLATE utf8mb4_bin DEFAULT 'unemployed2',
  `job2_grade` int(11) DEFAULT '0',
  `loadout` longtext COLLATE utf8mb4_bin,
  `group` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `lastname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `dateofbirth` varchar(25) COLLATE utf8mb4_bin DEFAULT '',
  `sex` varchar(10) COLLATE utf8mb4_bin DEFAULT '',
  `height` varchar(5) COLLATE utf8mb4_bin DEFAULT '',
  `isDead` bit(1) DEFAULT b'0',
  `status` longtext COLLATE utf8mb4_bin,
  `accounts` longtext COLLATE utf8mb4_bin,
  `inventory` longtext COLLATE utf8mb4_bin,
  `position` varchar(255) COLLATE utf8mb4_bin DEFAULT '{"x":-269.4,"y":-955.3,"z":31.2,"heading":205.8}'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`identifier`, `skin`, `job`, `job_grade`, `job2`, `job2_grade`, `loadout`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `isDead`, `status`, `accounts`, `inventory`, `position`) VALUES
('000010af40a81', '{"mask_2":0,"age_2":0,"bodyb_1":-1,"glasses_2":0,"jaw_1":0,"makeup_2":0,"bproof_2":0,"blush_2":0,"face_md_weight":50,"bodyb_3":-1,"decals_1":0,"jaw_2":0,"glasses_1":0,"lipstick_1":0,"sex":0,"chin_1":0,"nose_3":0,"makeup_4":0,"lipstick_2":0,"moles_2":0,"complexion_1":0,"age_1":0,"pants_2":0,"hair_color_1":0,"makeup_3":0,"ears_2":0,"cheeks_1":0,"sun_1":0,"watches_1":-1,"hair_color_2":0,"chin_3":0,"lip_thickness":0,"bproof_1":0,"chin_2":0,"nose_4":0,"beard_1":0,"makeup_1":0,"pants_1":0,"mask_1":0,"sun_2":0,"blush_3":0,"bodyb_4":0,"neck_thickness":0,"shoes_1":0,"tshirt_2":0,"hair_1":0,"eyebrows_3":0,"beard_4":0,"eye_color":0,"cheeks_2":0,"chest_2":0,"nose_6":0,"blemishes_2":0,"eyebrows_5":0,"beard_2":0,"decals_2":0,"eyebrows_1":0,"ears_1":-1,"eyebrows_4":0,"helmet_1":-1,"nose_1":0,"bracelets_2":0,"shoes_2":0,"torso_2":0,"eyebrows_2":0,"beard_3":0,"chest_1":0,"lipstick_4":0,"arms":0,"cheeks_3":0,"chest_3":0,"hair_2":0,"skin_md_weight":50,"bags_1":0,"watches_2":0,"chin_4":0,"bodyb_2":0,"bracelets_1":-1,"arms_2":0,"blush_1":0,"torso_1":0,"complexion_2":0,"eye_squint":0,"mom":21,"tshirt_1":0,"moles_1":0,"chain_1":0,"helmet_2":0,"nose_5":0,"chain_2":0,"blemishes_1":0,"dad":0,"nose_2":0,"eyebrows_6":0,"bags_2":0,"lipstick_3":0}', 'unemployed', 0, 'unemployed2', 0, '[]', 'admin', 'Kev1', 'Des2', '03/06/1992', 'm', '175', b'0', '[{"percent":89.48,"val":894800,"name":"hunger"},{"percent":92.11,"val":921100,"name":"thirst"},{"percent":0.0,"val":0,"name":"drunk"}]', '{"bank":8000,"black_money":0,"money":2000}', '[]', '{"heading":0.0,"x":501.6,"y":5604.5,"z":797.9}'),
('e3424c86481b8b009bd30219834270eaadc1a9bf', '{"cheeks_2":10,"bodyb_2":1,"makeup_2":0,"chin_2":-6,"lip_thickness":0,"chin_1":10,"sun_2":0,"bodyb_1":-1,"lipstick_4":0,"bags_2":0,"mom":34,"eyebrows_6":0,"eyebrows_3":0,"chain_2":0,"skin":34,"makeup_4":0,"age_1":7,"hair_color_1":0,"shoes_1":46,"nose_1":-2,"torso_2":3,"bodyb_3":-1,"beard_4":0,"cheeks_3":5,"lipstick_3":0,"lipstick_1":0,"bags_1":0,"skin_md_weight":50,"mask_1":10,"lipstick_2":0,"face_md_weight":20,"chin_4":5,"hair_color_2":0,"helmet_1":-1,"eyebrows_4":0,"shoes":25,"glasses_2":0,"beard_1":18,"blush_1":0,"bproof_2":0,"watches_1":-1,"eyebrows_2":10,"neck_thickness":8,"bodyb_4":0,"complexion_2":0,"nose_4":-10,"jaw_2":0,"eyebrows_5":5,"sex":0,"moles_1":0,"chest_1":0,"eye_color":4,"blemishes_2":0,"chain_1":0,"decals_2":0,"age_2":4,"tshirt_2":0,"complexion_1":0,"eye_squint":4,"shoes_2":4,"decals_1":0,"blush_2":0,"cheeks_1":-4,"tshirt_1":15,"helmet_2":0,"jaw_1":0,"nose_6":2,"hair_2":0,"chin_3":0,"eyebrows_1":4,"chest_3":0,"makeup_1":0,"mask_2":0,"bproof_1":0,"makeup_3":0,"nose_5":2,"glasses_1":0,"bracelets_2":0,"pants_1":112,"hair_1":48,"beard_2":0,"watches_2":0,"arms_2":0,"blush_3":0,"pants_2":0,"bracelets_1":-1,"face":19,"nose_3":-7,"nose_2":10,"ears_1":-1,"dad":42,"arms":0,"torso_1":440,"beard_3":0,"chest_2":0,"ears_2":0,"moles_2":0,"sun_1":0,"blemishes_1":0}', 'unemployed', 0, 'unemployed', 0, '[]', 'admin', 'Kev', 'Des', '03/06/1992', 'm', '175', b'0', '[{"percent":30.91999999999999,"name":"hunger","val":309200},{"percent":20.69,"name":"thirst","val":206900},{"percent":0.0,"name":"drunk","val":0}]', '{"bank":-24133,"money":9890,"black_money":0}', '[]', '{"heading":205.3,"x":-812.7,"y":-217.2,"z":36.6}');

-- --------------------------------------------------------

--
-- Structure de la table `user_licenses`
--

CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL,
  `type` varchar(60) NOT NULL,
  `owner` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `addon_account`
--
ALTER TABLE `addon_account`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `addon_inventory`
--
ALTER TABLE `addon_inventory`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `datastore`
--
ALTER TABLE `datastore`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `datastore_data`
--
ALTER TABLE `datastore_data`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `job_grades`
--
ALTER TABLE `job_grades`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`type`);

--
-- Index pour la table `open_car`
--
ALTER TABLE `open_car`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `owned_vehicles`
--
ALTER TABLE `owned_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Index pour la table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Index pour la table `trunk_inventory`
--
ALTER TABLE `trunk_inventory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plate` (`plate`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`identifier`);

--
-- Index pour la table `user_licenses`
--
ALTER TABLE `user_licenses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1881;
--
-- AUTO_INCREMENT pour la table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;
--
-- AUTO_INCREMENT pour la table `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4607;
--
-- AUTO_INCREMENT pour la table `datastore_data`
--
ALTER TABLE `datastore_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2510;
--
-- AUTO_INCREMENT pour la table `job_grades`
--
ALTER TABLE `job_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=510;
--
-- AUTO_INCREMENT pour la table `open_car`
--
ALTER TABLE `open_car`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2526;
--
-- AUTO_INCREMENT pour la table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `trunk_inventory`
--
ALTER TABLE `trunk_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2239;
--
-- AUTO_INCREMENT pour la table `user_licenses`
--
ALTER TABLE `user_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1057;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
