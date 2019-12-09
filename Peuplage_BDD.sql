-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 09 déc. 2019 à 14:31
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de données :  `cvinline`
--

-- --------------------------------------------------------

--
-- Structure de la table `bloc_contact`
--

DROP TABLE IF EXISTS `bloc_contact`;
CREATE TABLE IF NOT EXISTS `bloc_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adresse_num_rue` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adresse_cp` bigint(20) DEFAULT NULL,
  `adresse_ville` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anonymous` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `bloc_contact`
--

INSERT INTO `bloc_contact` (`id`, `adresse_num_rue`, `adresse_cp`, `adresse_ville`, `phone_number`, `email`, `anonymous`) VALUES
(1, '33 Rte du Moulin à vent', 34270, 'Vacquières', '0687826800', 'jum2r@hotmail.com', 0);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(71, 'Développement web'),
(72, 'Développement mobile'),
(73, 'Graphisme'),
(74, 'Intégration'),
(75, 'Réseau'),
(76, 'Jeuxvidéos'),
(77, 'Science');

-- --------------------------------------------------------

--
-- Structure de la table `competances`
--

DROP TABLE IF EXISTS `competances`;
CREATE TABLE IF NOT EXISTS `competances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `competances`
--

INSERT INTO `competances` (`id`, `name`, `logo`) VALUES
(1, 'WEB', NULL),
(2, 'Base de Données', NULL),
(3, 'Data-Mining', NULL),
(4, 'Dev Applicatif', NULL),
(5, 'Front-End', NULL),
(6, 'Back-End', NULL),
(7, 'Full-Stack', NULL),
(8, 'Gestion de Projet', NULL),
(9, 'Gestion d\'équipe', NULL),
(10, 'Gestion de budget', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `competances_category`
--

DROP TABLE IF EXISTS `competances_category`;
CREATE TABLE IF NOT EXISTS `competances_category` (
  `competances_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`competances_id`,`category_id`),
  KEY `IDX_50F44699222ABFA2` (`competances_id`),
  KEY `IDX_50F4469912469DE2` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cv`
--

DROP TABLE IF EXISTS `cv`;
CREATE TABLE IF NOT EXISTS `cv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Titre',
  `photo_avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Anonyme.jpg',
  `age` int(11) DEFAULT NULL,
  `niv_exp_id` int(11) DEFAULT NULL,
  `statut` tinyint(1) NOT NULL DEFAULT 0,
  `bloc_contact_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `texte_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'La rédaction d''un cv nous cause des migraines car dans ce domaine on nous fait marcher sur la tête. Alain Leblay, Consultant RH.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B66FFE9262E35A` (`niv_exp_id`),
  UNIQUE KEY `UNIQ_B66FFE922613CDC` (`bloc_contact_id`),
  UNIQUE KEY `UNIQ_B66FFE92A76ED395` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cv`
--

INSERT INTO `cv` (`id`, `titre`, `photo_avatar`, `age`, `niv_exp_id`, `statut`, `bloc_contact_id`, `user_id`, `texte_photo`) VALUES
(1, 'Développeur Back-end\r\nRecherche stage de fin d\'étude', 'Martinouder.jpg', 36, 21, 1, 1, 14, 'Il faut savoir garder une Âme d\'enfant ! '),
(2, 'Develloper Junior Back-end', 'Anonyme.jpg', NULL, NULL, 1, NULL, 17, 'La rédaction d\'un cv nous cause des migraines car dans ce domaine on nous fait marcher sur la tête. Alain Leblay, Consultant RH.'),
(3, 'Develloper Junior Back-end', 'Anonyme.jpg', NULL, NULL, 1, NULL, 18, 'La rédaction d\'un cv nous cause des migraines car dans ce domaine on nous fait marcher sur la tête. Alain Leblay, Consultant RH.'),
(4, 'Titre', 'Anonyme.jpg', NULL, NULL, 0, NULL, 26, 'La rédaction d\'un cv nous cause des migraines car dans ce domaine on nous fait marcher sur la tête. Alain Leblay, Consultant RH.'),
(5, 'Titre', 'Anonyme.jpg', NULL, NULL, 0, NULL, 27, 'La rédaction d\'un cv nous cause des migraines car dans ce domaine on nous fait marcher sur la tête. Alain Leblay, Consultant RH.'),
(6, 'Titre', 'Anonyme.jpg', NULL, NULL, 0, NULL, 28, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cv_hobbie`
--

DROP TABLE IF EXISTS `cv_hobbie`;
CREATE TABLE IF NOT EXISTS `cv_hobbie` (
  `cv_id` int(11) NOT NULL,
  `hobbie_id` int(11) NOT NULL,
  PRIMARY KEY (`cv_id`,`hobbie_id`),
  KEY `IDX_901BA0D2CFE419E2` (`cv_id`),
  KEY `IDX_901BA0D250B678B7` (`hobbie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cv_hobbie`
--

INSERT INTO `cv_hobbie` (`cv_id`, `hobbie_id`) VALUES
(1, 1),
(1, 2),
(1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `cv_reseaux_sociaux`
--

DROP TABLE IF EXISTS `cv_reseaux_sociaux`;
CREATE TABLE IF NOT EXISTS `cv_reseaux_sociaux` (
  `cv_id` int(11) NOT NULL,
  `reseaux_sociaux_id` int(11) NOT NULL,
  PRIMARY KEY (`cv_id`,`reseaux_sociaux_id`),
  KEY `IDX_41541D75CFE419E2` (`cv_id`),
  KEY `IDX_41541D75CF0DF136` (`reseaux_sociaux_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cv_reseaux_sociaux`
--

INSERT INTO `cv_reseaux_sociaux` (`cv_id`, `reseaux_sociaux_id`) VALUES
(1, 1),
(1, 2),
(1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `experiences`
--

DROP TABLE IF EXISTS `experiences`;
CREATE TABLE IF NOT EXISTS `experiences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_debut` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_fin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entreprise` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `cv_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_82020E70CFE419E2` (`cv_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `experiences`
--

INSERT INTO `experiences` (`id`, `name`, `date_debut`, `date_fin`, `entreprise`, `description`, `cv_id`) VALUES
(1, 'Directeur Commercial', '2017', '2015', 'Les Coteaux de St Christol', 'Direction et animation commerciale pour les réseaux trad, GMS et vente directe. Responsabilité Equipe 5 vendeurs sur 2 points de ventes. 1,7M de CA. Réseaux d’agents multicartes et exports. Mise en place logiciel EBP point de vente serveur. Procédure et reprise des données. Analyse des besoins en reporting, prévisionnel et automatisation des éditions Tableaux de bord.', 1),
(2, 'Chef de Projet Commercial', '2012', '2014', 'SCA Tours et Terroirs d’Aniane', 'Audit de 2 caveaux de ventes, définition stratégie commerciale et positionnement prix / produit. Mise en place partenariat avec embouteilleurs et fournisseurs. Lancement nouvelle gamme, communication et évènementiel. Installation, paramétrage de Lavilog logiciel de traçabilité Cave. Conduite du changement et mise en place des procédures Utilisateurs.', 1),
(3, 'Directeur Commercial', '2017', '2015', 'Les Coteaux de St Christol', 'Direction et animation commerciale pour les réseaux trad, GMS et vente directe. Responsabilité Equipe 5 vendeurs sur 2 points de ventes. 1,7M de CA. Réseaux d’agents multicartes et exports. Mise en place logiciel EBP point de vente serveur. Procédure et reprise des données. Analyse des besoins en reporting, prévisionnel et automatisation des éditions Tableaux de bord.', 2),
(4, 'Chef de Projet Commercial', '2012', '2014', 'SCA Tours et Terroirs d’Aniane', 'Audit de 2 caveaux de ventes, définition stratégie commerciale et positionnement prix / produit. Mise en place partenariat avec embouteilleurs et fournisseurs. Lancement nouvelle gamme, communication et évènementiel. Installation, paramétrage de Lavilog logiciel de traçabilité Cave. Conduite du changement et mise en place des procédures Utilisateurs.', 2),
(5, 'Assistant de Gestion/Planning', '2005', '2008', 'ACEE et YARA', 'Alternance BTS et Licence. Domaine du Bâtiment puis de la Chimie ', 1),
(6, 'Responsable de Reprise', '2009', '2011', 'Groupe KEOLIS', 'Déploiement de l\'ERP Qualiac sur 180 filiales. Reprise des données tiers, sécurisation et communication de process utilisateurs, formation utilisateur. Responsabilité de l’équipe de 4 personnes', 2),
(7, 'Assistant de Gestion/Planning', '2005', '2008', 'ACEE et YARA', 'Alternance BTS et Licence. Domaine du Bâtiment puis de la Chimie ', 2),
(8, 'Responsable de Reprise', '2009', '2011', 'Groupe KEOLIS', 'Déploiement de l\'ERP Qualiac sur 180 filiales. Reprise des données tiers, sécurisation et communication de process utilisateurs, formation utilisateur. Responsabilité de l’équipe de 4 personnes', 1),
(9, 'Développeur VBA', '2017', '2019', 'Indépendant', 'Divers projets dont Application d’analyse, traitement et organisation des données de fabrication de meubles. \r\nClient : Menuiserie. Application de gestion automatique des suivis de facturation (mail, déclenchement auto des process). \r\nClient : Fourniture de bureau. \r\nApplication de mise en correspondance biens/Acheteurs potentiels (Agent Immobilier BtoB). \r\nApplication d’analyse commerciale (aide pour le DirCo et commerciaux, calcul de primes, client à relancer, management)', 1);

-- --------------------------------------------------------

--
-- Structure de la table `experiences_category`
--

DROP TABLE IF EXISTS `experiences_category`;
CREATE TABLE IF NOT EXISTS `experiences_category` (
  `experiences_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`experiences_id`,`category_id`),
  KEY `IDX_94229BC423DE140` (`experiences_id`),
  KEY `IDX_94229BC12469DE2` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `experiences_category`
--

INSERT INTO `experiences_category` (`experiences_id`, `category_id`) VALUES
(6, 74);

-- --------------------------------------------------------

--
-- Structure de la table `experiences_competances`
--

DROP TABLE IF EXISTS `experiences_competances`;
CREATE TABLE IF NOT EXISTS `experiences_competances` (
  `experiences_id` int(11) NOT NULL,
  `competances_id` int(11) NOT NULL,
  PRIMARY KEY (`experiences_id`,`competances_id`),
  KEY `IDX_4A7731F6423DE140` (`experiences_id`),
  KEY `IDX_4A7731F6222ABFA2` (`competances_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `experiences_competances`
--

INSERT INTO `experiences_competances` (`experiences_id`, `competances_id`) VALUES
(1, 8),
(1, 9),
(1, 10),
(2, 8),
(6, 2),
(6, 9),
(9, 2),
(9, 4),
(9, 7),
(9, 8);

-- --------------------------------------------------------

--
-- Structure de la table `experiences_framework_logiciel`
--

DROP TABLE IF EXISTS `experiences_framework_logiciel`;
CREATE TABLE IF NOT EXISTS `experiences_framework_logiciel` (
  `experiences_id` int(11) NOT NULL,
  `framework_logiciel_id` int(11) NOT NULL,
  PRIMARY KEY (`experiences_id`,`framework_logiciel_id`),
  KEY `IDX_279629F2423DE140` (`experiences_id`),
  KEY `IDX_279629F2C7A79146` (`framework_logiciel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `experiences_framework_logiciel`
--

INSERT INTO `experiences_framework_logiciel` (`experiences_id`, `framework_logiciel_id`) VALUES
(1, 1),
(1, 13),
(6, 1),
(6, 2),
(6, 11),
(9, 1),
(9, 2);

-- --------------------------------------------------------

--
-- Structure de la table `experiences_techno`
--

DROP TABLE IF EXISTS `experiences_techno`;
CREATE TABLE IF NOT EXISTS `experiences_techno` (
  `experiences_id` int(11) NOT NULL,
  `techno_id` int(11) NOT NULL,
  PRIMARY KEY (`experiences_id`,`techno_id`),
  KEY `IDX_2B4695D4423DE140` (`experiences_id`),
  KEY `IDX_2B4695D451F3C1BC` (`techno_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `experiences_techno`
--

INSERT INTO `experiences_techno` (`experiences_id`, `techno_id`) VALUES
(6, 3),
(9, 3),
(9, 5),
(9, 6),
(9, 7);

-- --------------------------------------------------------

--
-- Structure de la table `formation`
--

DROP TABLE IF EXISTS `formation`;
CREATE TABLE IF NOT EXISTS `formation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_debut` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_fin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ecole` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `niveau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cv_id` int(11) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_404021BFCFE419E2` (`cv_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `formation`
--

INSERT INTO `formation` (`id`, `name`, `date_debut`, `date_fin`, `ecole`, `niveau`, `cv_id`, `description`) VALUES
(1, 'Master2 IPS', '2018', '2020', 'Fac de Sciences Montpellier', 'm2', 1, 'Une formation permettant d\'allier l\'informatique avec un autre domaine professionnel (expériences ou études antérieures).'),
(2, 'Mastère Chef de Projet Commercial', '2013', '2014', 'ESCAIA Montpellier', 'M1', 1, 'Chef de Projet Commercial'),
(3, 'Licence Management PME-PMI', '2007', '2008', 'RISE Melun', 'Licence', 1, 'Management PME-PMI en Alternance dans l\'entreprise YARA'),
(4, 'BTS Assistant de Gestion', '2005', '2007', 'RISE Melun', 'BTS', 1, 'En Alternance dans l\'entreprise ACEE (Bâtiment 2nd Œuvre)');

-- --------------------------------------------------------

--
-- Structure de la table `formation_category`
--

DROP TABLE IF EXISTS `formation_category`;
CREATE TABLE IF NOT EXISTS `formation_category` (
  `formation_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`formation_id`,`category_id`),
  KEY `IDX_C1DE4E305200282E` (`formation_id`),
  KEY `IDX_C1DE4E3012469DE2` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `formation_competances`
--

DROP TABLE IF EXISTS `formation_competances`;
CREATE TABLE IF NOT EXISTS `formation_competances` (
  `formation_id` int(11) NOT NULL,
  `competances_id` int(11) NOT NULL,
  PRIMARY KEY (`formation_id`,`competances_id`),
  KEY `IDX_715DF1D55200282E` (`formation_id`),
  KEY `IDX_715DF1D5222ABFA2` (`competances_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `formation_framework_logiciel`
--

DROP TABLE IF EXISTS `formation_framework_logiciel`;
CREATE TABLE IF NOT EXISTS `formation_framework_logiciel` (
  `formation_id` int(11) NOT NULL,
  `framework_logiciel_id` int(11) NOT NULL,
  PRIMARY KEY (`formation_id`,`framework_logiciel_id`),
  KEY `IDX_64705C425200282E` (`formation_id`),
  KEY `IDX_64705C42C7A79146` (`framework_logiciel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `formation_techno`
--

DROP TABLE IF EXISTS `formation_techno`;
CREATE TABLE IF NOT EXISTS `formation_techno` (
  `formation_id` int(11) NOT NULL,
  `techno_id` int(11) NOT NULL,
  PRIMARY KEY (`formation_id`,`techno_id`),
  KEY `IDX_199EE0F15200282E` (`formation_id`),
  KEY `IDX_199EE0F151F3C1BC` (`techno_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `framework_logiciel`
--

DROP TABLE IF EXISTS `framework_logiciel`;
CREATE TABLE IF NOT EXISTS `framework_logiciel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `framework_logiciel`
--

INSERT INTO `framework_logiciel` (`id`, `name`, `logo`) VALUES
(1, 'Excel', NULL),
(2, 'Access', NULL),
(3, 'Symphony', NULL),
(4, 'Eclypse', NULL),
(5, 'PHPStorm', NULL),
(6, 'Angular', NULL),
(7, 'PyCharm', NULL),
(8, 'Git', NULL),
(9, 'PhpMyAdmin', NULL),
(10, 'WAMP', NULL),
(11, 'Qualiac', NULL),
(12, 'Lavilog', NULL),
(13, 'EBP Point de Vente', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `hobbie`
--

DROP TABLE IF EXISTS `hobbie`;
CREATE TABLE IF NOT EXISTS `hobbie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `hobbie`
--

INSERT INTO `hobbie` (`id`, `name`, `logo`) VALUES
(1, 'Rugby', 'Rugby.png'),
(2, 'Escalade', 'Escalade.png'),
(3, 'Jardinage', 'Jardinage.gif');

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
CREATE TABLE IF NOT EXISTS `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `niv_exp`
--

DROP TABLE IF EXISTS `niv_exp`;
CREATE TABLE IF NOT EXISTS `niv_exp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `niv_exp`
--

INSERT INTO `niv_exp` (`id`, `name`) VALUES
(21, 'Junior'),
(22, 'Confirmé'),
(23, 'Sénior'),
(24, 'Expert');

-- --------------------------------------------------------

--
-- Structure de la table `project`
--

DROP TABLE IF EXISTS `project`;
CREATE TABLE IF NOT EXISTS `project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cv_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_2FB3D0EECFE419E2` (`cv_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `project`
--

INSERT INTO `project` (`id`, `title`, `description`, `image_url`, `cv_id`) VALUES
(1, 'CvInLine - Ce Site WEB', 'Projet de Site WEB Responsive permettant la création et l\'hébergement de CV orienté Métiers de l\'informatique.\r\nDéveloppé en PHP à l\'aide des Framework Symfony4, PhpMyAdmin, Boostrap 4 et WAMP.\r\nLa gestion des utilisateurs se fait via un Token écrit en base et vérifié à chaque requête http. les routes entre User et Admin se font sur une double vérification entre le User.Username et le CV.getUser().Username ainsi que sur le User.id et le CV.getUser().id.\r\nSi le User est sur la page de son propre CV alors il voit les options de création et de modification, sinon il ne peut que consulter la page. ', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `project_category`
--

DROP TABLE IF EXISTS `project_category`;
CREATE TABLE IF NOT EXISTS `project_category` (
  `project_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`project_id`,`category_id`),
  KEY `IDX_3B02921A166D1F9C` (`project_id`),
  KEY `IDX_3B02921A12469DE2` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `project_category`
--

INSERT INTO `project_category` (`project_id`, `category_id`) VALUES
(1, 71);

-- --------------------------------------------------------

--
-- Structure de la table `project_competances`
--

DROP TABLE IF EXISTS `project_competances`;
CREATE TABLE IF NOT EXISTS `project_competances` (
  `project_id` int(11) NOT NULL,
  `competances_id` int(11) NOT NULL,
  PRIMARY KEY (`project_id`,`competances_id`),
  KEY `IDX_E66F26F5166D1F9C` (`project_id`),
  KEY `IDX_E66F26F5222ABFA2` (`competances_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `project_competances`
--

INSERT INTO `project_competances` (`project_id`, `competances_id`) VALUES
(1, 1),
(1, 2),
(1, 7);

-- --------------------------------------------------------

--
-- Structure de la table `project_framework_logiciel`
--

DROP TABLE IF EXISTS `project_framework_logiciel`;
CREATE TABLE IF NOT EXISTS `project_framework_logiciel` (
  `project_id` int(11) NOT NULL,
  `framework_logiciel_id` int(11) NOT NULL,
  PRIMARY KEY (`project_id`,`framework_logiciel_id`),
  KEY `IDX_5F807BB2166D1F9C` (`project_id`),
  KEY `IDX_5F807BB2C7A79146` (`framework_logiciel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `project_framework_logiciel`
--

INSERT INTO `project_framework_logiciel` (`project_id`, `framework_logiciel_id`) VALUES
(1, 3),
(1, 8),
(1, 9),
(1, 10);

-- --------------------------------------------------------

--
-- Structure de la table `project_techno`
--

DROP TABLE IF EXISTS `project_techno`;
CREATE TABLE IF NOT EXISTS `project_techno` (
  `project_id` int(11) NOT NULL,
  `techno_id` int(11) NOT NULL,
  PRIMARY KEY (`project_id`,`techno_id`),
  KEY `IDX_2E230596166D1F9C` (`project_id`),
  KEY `IDX_2E23059651F3C1BC` (`techno_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `project_techno`
--

INSERT INTO `project_techno` (`project_id`, `techno_id`) VALUES
(1, 4),
(1, 5),
(1, 6),
(1, 7);

-- --------------------------------------------------------

--
-- Structure de la table `reseaux_sociaux`
--

DROP TABLE IF EXISTS `reseaux_sociaux`;
CREATE TABLE IF NOT EXISTS `reseaux_sociaux` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lien` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reseaux_sociaux`
--

INSERT INTO `reseaux_sociaux` (`id`, `name`, `logo`, `lien`) VALUES
(1, 'Facebook', 'Facebook.png', 'https://www.facebook.com/julien.morganderivery.3'),
(2, 'Git', 'Git.jpg', 'https://github.com/JulienM2r'),
(3, 'LinkedIn', 'linkedin.jpg', 'https://www.linkedin.com/in/j-morganderivery-commercial/');

-- --------------------------------------------------------

--
-- Structure de la table `techno`
--

DROP TABLE IF EXISTS `techno`;
CREATE TABLE IF NOT EXISTS `techno` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `techno`
--

INSERT INTO `techno` (`id`, `name`, `logo`) VALUES
(1, 'Python', NULL),
(2, 'Java', NULL),
(3, 'VBA', NULL),
(4, 'php', NULL),
(5, 'HTML5 ', NULL),
(6, 'CSS', NULL),
(7, 'JS', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `edited_at` datetime DEFAULT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`roles`)),
  `api_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cv_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`),
  UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`),
  UNIQUE KEY `UNIQ_8D93D6497BA2F5EB` (`api_token`),
  UNIQUE KEY `UNIQ_8D93D649CFE419E2` (`cv_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `created_at`, `edited_at`, `roles`, `api_token`, `firstname`, `lastname`, `cv_id`) VALUES
(14, 'Julien_Morgan-de-Rivery', 'jum2r@hotmail.com', '$argon2id$v=19$m=65536,t=4,p=1$S2cwNTlMaXFpbzNPdmx4SA$nV2G7FBbwDK7f8XNcSmEXC6aEDPEOGbDGwX5GELvGzM', '2019-12-04 16:41:29', '2019-12-04 16:41:29', '[\"ROLE_USER\"]', NULL, 'Julien', 'Morgan de Rivery', 1),
(17, 'Adrien_Dupont', 'jum2r2@hotmail.com', '$argon2id$v=19$m=65536,t=4,p=1$cm9Fc0UxVURwUFguYkZQNw$lW1y3mwMmAI0n8h9Jubnp92rtIzpPWqo+hcbElo4lss', '2019-12-06 12:57:40', '2019-12-06 12:57:40', '[\"ROLE_USER\"]', NULL, 'Adrien', 'Dupont', 2),
(18, 'Romain_Michel', 'jum2r1@hotmail.com', '$argon2id$v=19$m=65536,t=4,p=1$VDZpdS9CRkl1LzZrQ1V4YQ$455tKdyess9c6YTJuvdRPYqgpVKjfndso6YlP/ZxGsE', '2019-12-06 13:13:38', '2019-12-06 13:13:38', '[\"ROLE_USER\"]', NULL, 'Romain', 'Michel', 3),
(26, 'Sophie_Tatinger', 'jum2r3@hotmail.com', '$argon2id$v=19$m=65536,t=4,p=1$WktRaWJQQjN1VVdkdXVLVQ$tarQrYGjHns2O0rlfQ6ma95x3W6SsTLW+Pb/ep/Qipc', '2019-12-06 13:56:18', '2019-12-06 13:56:18', '[\"ROLE_USER\"]', NULL, 'Sophie', 'Tatinger', 4),
(27, 'Sophie2_Tatinget', 'jum2r6@hotmail.com', '$argon2id$v=19$m=65536,t=4,p=1$WmJUb2tMS3ltZkhnRVpRRw$0Y87/ZX2goE/7GPFb5mDhwFHZD2xrMmHj+NwwPwN0Xg', '2019-12-06 14:04:24', '2019-12-06 14:04:24', '[\"ROLE_USER\"]', NULL, 'Sophie2', 'Tatinget', 5),
(28, 'srgh_sh', 'jum2r8@hotmail.com', '$argon2id$v=19$m=65536,t=4,p=1$eHgycm0wMFNnQzRSQTRPZA$A8c20FexpElpzCY04KBi53mEW0/X/3fZIg+A0A62pZQ', '2019-12-09 10:21:02', '2019-12-09 10:21:02', '[\"ROLE_USER\"]', NULL, 'srgh', 'sh', 6);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `competances_category`
--
ALTER TABLE `competances_category`
  ADD CONSTRAINT `FK_50F4469912469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_50F44699222ABFA2` FOREIGN KEY (`competances_id`) REFERENCES `competances` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `cv`
--
ALTER TABLE `cv`
  ADD CONSTRAINT `FK_B66FFE922613CDC` FOREIGN KEY (`bloc_contact_id`) REFERENCES `bloc_contact` (`id`),
  ADD CONSTRAINT `FK_B66FFE9262E35A` FOREIGN KEY (`niv_exp_id`) REFERENCES `niv_exp` (`id`),
  ADD CONSTRAINT `FK_B66FFE92A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `cv_hobbie`
--
ALTER TABLE `cv_hobbie`
  ADD CONSTRAINT `FK_901BA0D250B678B7` FOREIGN KEY (`hobbie_id`) REFERENCES `hobbie` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_901BA0D2CFE419E2` FOREIGN KEY (`cv_id`) REFERENCES `cv` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `cv_reseaux_sociaux`
--
ALTER TABLE `cv_reseaux_sociaux`
  ADD CONSTRAINT `FK_41541D75CF0DF136` FOREIGN KEY (`reseaux_sociaux_id`) REFERENCES `reseaux_sociaux` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_41541D75CFE419E2` FOREIGN KEY (`cv_id`) REFERENCES `cv` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `experiences`
--
ALTER TABLE `experiences`
  ADD CONSTRAINT `FK_82020E70CFE419E2` FOREIGN KEY (`cv_id`) REFERENCES `cv` (`id`);

--
-- Contraintes pour la table `experiences_category`
--
ALTER TABLE `experiences_category`
  ADD CONSTRAINT `FK_94229BC12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_94229BC423DE140` FOREIGN KEY (`experiences_id`) REFERENCES `experiences` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `experiences_competances`
--
ALTER TABLE `experiences_competances`
  ADD CONSTRAINT `FK_4A7731F6222ABFA2` FOREIGN KEY (`competances_id`) REFERENCES `competances` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_4A7731F6423DE140` FOREIGN KEY (`experiences_id`) REFERENCES `experiences` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `experiences_framework_logiciel`
--
ALTER TABLE `experiences_framework_logiciel`
  ADD CONSTRAINT `FK_279629F2423DE140` FOREIGN KEY (`experiences_id`) REFERENCES `experiences` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_279629F2C7A79146` FOREIGN KEY (`framework_logiciel_id`) REFERENCES `framework_logiciel` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `experiences_techno`
--
ALTER TABLE `experiences_techno`
  ADD CONSTRAINT `FK_2B4695D4423DE140` FOREIGN KEY (`experiences_id`) REFERENCES `experiences` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_2B4695D451F3C1BC` FOREIGN KEY (`techno_id`) REFERENCES `techno` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `formation`
--
ALTER TABLE `formation`
  ADD CONSTRAINT `FK_404021BFCFE419E2` FOREIGN KEY (`cv_id`) REFERENCES `cv` (`id`);

--
-- Contraintes pour la table `formation_category`
--
ALTER TABLE `formation_category`
  ADD CONSTRAINT `FK_C1DE4E3012469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_C1DE4E305200282E` FOREIGN KEY (`formation_id`) REFERENCES `formation` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `formation_competances`
--
ALTER TABLE `formation_competances`
  ADD CONSTRAINT `FK_715DF1D5222ABFA2` FOREIGN KEY (`competances_id`) REFERENCES `competances` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_715DF1D55200282E` FOREIGN KEY (`formation_id`) REFERENCES `formation` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `formation_framework_logiciel`
--
ALTER TABLE `formation_framework_logiciel`
  ADD CONSTRAINT `FK_64705C425200282E` FOREIGN KEY (`formation_id`) REFERENCES `formation` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_64705C42C7A79146` FOREIGN KEY (`framework_logiciel_id`) REFERENCES `framework_logiciel` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `formation_techno`
--
ALTER TABLE `formation_techno`
  ADD CONSTRAINT `FK_199EE0F151F3C1BC` FOREIGN KEY (`techno_id`) REFERENCES `techno` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_199EE0F15200282E` FOREIGN KEY (`formation_id`) REFERENCES `formation` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `FK_2FB3D0EECFE419E2` FOREIGN KEY (`cv_id`) REFERENCES `cv` (`id`);

--
-- Contraintes pour la table `project_category`
--
ALTER TABLE `project_category`
  ADD CONSTRAINT `FK_3B02921A12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_3B02921A166D1F9C` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `project_competances`
--
ALTER TABLE `project_competances`
  ADD CONSTRAINT `FK_E66F26F5166D1F9C` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_E66F26F5222ABFA2` FOREIGN KEY (`competances_id`) REFERENCES `competances` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `project_framework_logiciel`
--
ALTER TABLE `project_framework_logiciel`
  ADD CONSTRAINT `FK_5F807BB2166D1F9C` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_5F807BB2C7A79146` FOREIGN KEY (`framework_logiciel_id`) REFERENCES `framework_logiciel` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `project_techno`
--
ALTER TABLE `project_techno`
  ADD CONSTRAINT `FK_2E230596166D1F9C` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_2E23059651F3C1BC` FOREIGN KEY (`techno_id`) REFERENCES `techno` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_8D93D649CFE419E2` FOREIGN KEY (`cv_id`) REFERENCES `cv` (`id`);
COMMIT;
