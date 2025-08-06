-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 28 mai 2025 à 17:51
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `datawarehouse`
--

-- --------------------------------------------------------

--
-- Structure de la table `chefs_projet`
--

CREATE TABLE `chefs_projet` (
  `ID_ChefProjet` int(11) NOT NULL,
  `Nom_ChefProjet` varchar(255) NOT NULL,
  `Expérience_années` int(11) NOT NULL,
  `Nombre_projets_menés` int(11) NOT NULL,
  `Spécialisation` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `chefs_projet`
--

INSERT INTO `chefs_projet` (`ID_ChefProjet`, `Nom_ChefProjet`, `Expérience_années`, `Nombre_projets_menés`, `Taux_succès_projets`, `Spécialisation`) VALUES
(1, 'Chef Projet 1', 1, 9, 51.80, 'Construction'),
(2, 'Chef Projet 2', 15, 27, 66.53, 'Logistique'),
(3, 'Chef Projet 3', 12, 46, 92.26, 'Marketing'),
(4, 'Chef Projet 4', 16, 7, 97.25, 'Logistique'),
(5, 'Chef Projet 5', 10, 30, 75.18, 'IT'),
(6, 'Chef Projet 6', 10, 34, 75.33, 'Logistique'),
(7, 'Chef Projet 7', 4, 46, 70.76, 'Marketing'),
(8, 'Chef Projet 8', 5, 37, 51.20, 'Finance'),
(9, 'Chef Projet 9', 16, 19, 63.16, 'Marketing'),
(10, 'Chef Projet 10', 3, 23, 72.16, 'IT'),
(11, 'Chef Projet 11', 11, 35, 99.89, 'Marketing'),
(12, 'Chef Projet 12', 13, 11, 72.82, 'Finance'),
(13, 'Chef Projet 13', 8, 36, 89.16, 'Construction'),
(14, 'Chef Projet 14', 19, 27, 74.13, 'Logistique'),
(15, 'Chef Projet 15', 10, 35, 85.41, 'Construction'),
(16, 'Chef Projet 16', 2, 18, 87.73, 'Construction'),
(17, 'Chef Projet 17', 7, 20, 69.27, 'Marketing'),
(18, 'Chef Projet 18', 13, 37, 87.28, 'Construction'),
(19, 'Chef Projet 19', 15, 43, 76.17, 'Marketing'),
(20, 'Chef Projet 20', 5, 38, 78.83, 'Marketing'),
(21, 'Chef Projet 21', 9, 22, 54.07, 'Marketing'),
(22, 'Chef Projet 22', 11, 29, 68.92, 'Logistique'),
(23, 'Chef Projet 23', 7, 24, 82.94, 'Construction'),
(24, 'Chef Projet 24', 11, 35, 87.75, 'Construction'),
(25, 'Chef Projet 25', 5, 25, 76.00, 'IT');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `ID_client` varchar(4) NOT NULL,
  `Nom` varchar(255) NOT NULL,
  `Type` enum('Entreprise','Particulier') NOT NULL,
  `localisation` varchar(255) NOT NULL COMMENT 'Format: "Ville, Pays"'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO client (ID_client, Nom, Type, localisation) VALUES
('1', 'Entreprise 1', 'Entreprise', 'Marseille, France'),
('2', 'Entreprise 2', 'Entreprise', 'Nice, France'),
('3', 'Sophie Martin', 'Particulier', 'Marseille, France'),
('4', 'Entreprise 4', 'Entreprise', 'Marseille, France'),
('5', 'Entreprise 5', 'Entreprise', 'Nice, France'),
('6', 'Thomas Leblanc', 'Particulier', 'Nice, France'),
('7', 'Entreprise 7', 'Entreprise', 'Toulouse, France'),
('8', 'Camille Dubois', 'Particulier', 'Lyon, France'),
('9', 'Nicolas Lambert', 'Particulier', 'Marseille, France'),
('10', 'Élodie Petit', 'Particulier', 'Marseille, France'),
('11', 'Entreprise 11', 'Entreprise', 'Toulouse, France'),
('12', 'Laura Moreau', 'Particulier', 'Lyon, France'),
('13', 'Antoine Girard', 'Particulier', 'Toulouse, France'),
('14', 'Julie Lefèvre', 'Particulier', 'Paris, France'),
('15', 'Entreprise 15', 'Entreprise', 'Lyon, France'),
('16', 'Entreprise 16', 'Entreprise', 'Toulouse, France'),
('17', 'Maxime Roux', 'Particulier', 'Lyon, France'),
('18', 'Chloé Fournier', 'Particulier', 'Marseille, France'),
('19', 'Entreprise 19', 'Entreprise', 'Toulouse, France'),
('20', 'Alexandre Mercier', 'Particulier', 'Marseille, France'),
('21', 'Entreprise 21', 'Entreprise', 'Lyon, France'),
('22', 'Entreprise 22', 'Entreprise', 'Toulouse, France'),
('23', 'Sarah Bernard', 'Particulier', 'Nice, France'),
('24', 'Entreprise 24', 'Entreprise', 'Lyon, France'),
('25', 'Entreprise 25', 'Entreprise', 'Paris, France'),
('26', 'Entreprise 26', 'Entreprise', 'Toulouse, France'),
('27', 'Quentin Leroy', 'Particulier', 'Lyon, France'),
('28', 'Entreprise 28', 'Entreprise', 'Paris, France'),
('29', 'Manon Chevalier', 'Particulier', 'Lyon, France'),
('30', 'Lucas Gauthier', 'Particulier', 'Toulouse, France'),
('31', 'Claire Denis', 'Particulier', 'Nice, France'),
('32', 'Entreprise 32', 'Entreprise', 'Toulouse, France'),
('33', 'Entreprise 33', 'Entreprise', 'Paris, France'),
('34', 'Hugo Laurent', 'Particulier', 'Marseille, France'),
('35', 'Inès Fontaine', 'Particulier', 'Toulouse, France'),
('36', 'Entreprise 36', 'Entreprise', 'Marseille, France'),
('37', 'Jérémy Marchand', 'Particulier', 'Toulouse, France'),
('38', 'Entreprise 38', 'Entreprise', 'Toulouse, France'),
('39', 'Entreprise 39', 'Entreprise', 'Marseille, France'),
('40', 'Entreprise 40', 'Entreprise', 'Paris, France'),
('41', 'Emma Perrot', 'Particulier', 'Paris, France'),
('42', 'Entreprise 42', 'Entreprise', 'Nice, France'),
('43', 'Entreprise 43', 'Entreprise', 'Lyon, France'),
('44', 'Léa Barbier', 'Particulier', 'Marseille, France'),
('45', 'Mathieu Arnaud', 'Particulier', 'Nice, France'),
('46', 'Zoé Lemoine', 'Particulier', 'Paris, France'),
('47', 'Paul Vidal', 'Particulier', 'Toulouse, France'),
('48', 'Anaïs Garnier', 'Particulier', 'Nice, France'),
('49', 'Entreprise 49', 'Entreprise', 'Toulouse, France'),
('50', 'Entreprise 50', 'Entreprise', 'Nice, France');


-- --------------------------------------------------------

--
-- Structure de la table `equipe`
--

CREATE TABLE `equipe` (
  `ID_equipe` int(11) NOT NULL,
  `Département` varchar(50) DEFAULT 'Non spécifié',
  `nb_membres` int(11) NOT NULL CHECK (`nb_membres` > 0),
  `exp_moyenne_membres` decimal(3,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `equipe`
--

INSERT INTO `equipe` (`ID_equipe`, `Département`, `nb_membres`, `exp_moyenne_membres`) VALUES
(1, 'IT', 3, 9.3),
(2, 'Marketing', 9, 5.7),
(3, 'Construction', 12, 2.1),
(4, 'Logistique', 8, 6.4),
(5, 'Finance', 8, 3.1),
(6, 'IT', 6, 7.6),
(7, 'Marketing', 14, 7.5),
(8, 'Construction', 6, 8.6),
(9, 'Logistique', 15, 6.5),
(10, 'Finance', 12, 6.6),
(11, 'IT', 3, 7.4),
(12, 'Marketing', 3, 8.9),
(13, 'Construction', 13, 9.0),
(14, 'Logistique', 5, 3.2),
(15, 'Finance', 12, 3.0),
(16, 'IT', 12, 8.8),
(17, 'Marketing', 8, 3.1),
(18, 'Construction', 11, 2.6),
(19, 'Logistique', 14, 2.9),
(20, 'Finance', 13, 3.5),
(21, 'IT', 6, 9.6),
(22, 'Marketing', 3, 4.1),
(23, 'Construction', 13, 10.0),
(24, 'Logistique', 6, 7.5),
(25, 'Finance', 13, 8.0),
(26, 'IT', 9, 4.1),
(27, 'Marketing', 15, 6.4),
(28, 'Construction', 14, 6.5),
(29, 'Logistique', 15, 9.4),
(30, 'Finance', 12, 8.0),
(31, 'IT', 10, 6.9),
(32, 'Marketing', 5, 4.0),
(33, 'Construction', 10, 7.3),
(34, 'Logistique', 10, 3.3),
(35, 'Finance', 5, 8.6),
(36, 'IT', 13, 9.5),
(37, 'Marketing', 7, 7.9),
(38, 'Construction', 4, 5.6),
(39, 'Logistique', 10, 6.2),
(40, 'Finance', 9, 4.0),
(41, 'IT', 15, 3.2),
(42, 'Marketing', 13, 8.8),
(43, 'Construction', 11, 7.3),
(44, 'Logistique', 15, 8.0),
(45, 'Finance', 3, 4.5),
(46, 'IT', 3, 3.5),
(47, 'Marketing', 8, 8.1),
(48, 'Construction', 9, 3.6),
(49, 'Logistique', 10, 5.5),
(50, 'Finance', 12, 9.1);

-- --------------------------------------------------------

--
-- Structure de la table `projets_terminés`
--

CREATE TABLE `projets_terminés` (
  `ID_projet` int(11) NOT NULL,
  `Retard_jours` int(11) DEFAULT NULL,
  `depassement_budget` decimal(10,2) DEFAULT NULL,
  `ID_chefProjet` int(11) DEFAULT NULL,
  `ID_temps` int(11) DEFAULT NULL,
  `ID_TypeDeProjet` int(11) DEFAULT NULL,
  `ID_equipe` int(11) DEFAULT NULL,
  `ID_client` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `projets_terminés`
--

INSERT INTO `projets_terminés` (`ID_projet`, `Retard_jours`, `depassement_budget`, `ID_chefProjet`, `ID_temps`, `ID_TypeDeProjet`, `ID_equipe`, `ID_client`) VALUES
(1, 10, 1384.27, 12, 25, 5, 18, 7),
(2, 4, 1150.94, 7, 18, 12, 6, 22),
(3, 31, 1722.51, 2, 44, 3, 12, 15),
(4, 12, 1265.83, 1, 33, 9, 25, 5),
(5, 0, 1478.34, 4, 6, 15, 3, 19),
(6, 14, 1183.77, 3, 5, 7, 14, 8),
(7, 18, 1920.66, 2, 39, 2, 7, 24),
(8, 0, 1050.58, 10, 22, 10, 22, 11),
(9, 19, 1399.35, 7, 1, 6, 9, 3),
(10, 3, 1677.44, 6, 10, 14, 2, 21),
(11, 26, 1553.26, 15, 4, 11, 20, 1),
(12, 6, 1489.90, 1, 11, 4, 16, 13),
(13, 5, 1320.70, 23, 6, 8, 4, 17),
(14, 1, 890.40, 9, 8, 13, 19, 10),
(15, 30, 1777.10, 2, 45, 1, 11, 6),
(16, 21, 1544.88, 14, 7, 6, 1, 2),
(17, 2, 1012.99, 6, 12, 5, 5, 25),
(18, 3, 921.32, 5, 2, 2, 13, 18),
(19, 12, 1348.76, 24, 3, 7, 23, 16),
(20, 16, 1087.44, 10, 9, 11, 15, 4),
(21, 25, 1611.22, 4, 4, 3, 10, 14),
(22, 0, 1144.55, 1, 11, 9, 8, 23),
(23, 28, 987.66, 6, 6, 14, 17, 9),
(24, 9, 1498.99, 9, 1, 8, 21, 20),
(25, 20, 1744.11, 2, 5, 12, 24, 12)
;

-- --------------------------------------------------------

--
-- Structure de la table `temps`
--

CREATE TABLE `temps` (
  `ID_temps` int(11) NOT NULL,
  `Trimestre` int(11) NOT NULL,
  `Semestre` int(11) NOT NULL,
  `Année` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `temps`
--

INSERT INTO `temps` (`ID_temps`, `Trimestre`, `Semestre`, `Année`) VALUES
(1, 1, 1, 2023),
(2, 1, 1, 2023),
(3, 1, 1, 2023),
(4, 1, 1, 2023),
(5, 1, 1, 2023),
(6, 1, 1, 2023),
(7, 1, 1, 2023),
(8, 1, 1, 2023),
(9, 1, 1, 2023),
(10, 1, 1, 2023),
(11, 1, 1, 2023),
(12, 1, 1, 2023),
(13, 2, 1, 2023),
(14, 2, 1, 2023),
(15, 2, 1, 2023),
(16, 2, 1, 2023),
(17, 2, 1, 2023),
(18, 2, 1, 2023),
(19, 2, 1, 2023),
(20, 2, 1, 2023),
(21, 2, 1, 2023),
(22, 2, 1, 2023),
(23, 2, 1, 2023),
(24, 2, 1, 2023),
(25, 2, 1, 2023),
(26, 3, 2, 2023),
(27, 3, 2, 2023),
(28, 3, 2, 2023),
(29, 3, 2, 2023),
(30, 3, 2, 2023),
(31, 3, 2, 2023),
(32, 3, 2, 2023),
(33, 3, 2, 2023),
(34, 3, 2, 2023),
(35, 3, 2, 2023),
(36, 3, 2, 2023),
(37, 3, 2, 2023),
(38, 3, 2, 2023),
(39, 4, 2, 2023),
(40, 4, 2, 2023),
(41, 4, 2, 2023),
(42, 4, 2, 2023),
(43, 4, 2, 2023),
(44, 4, 2, 2023),
(45, 4, 2, 2023),
(46, 4, 2, 2023),
(47, 4, 2, 2023),
(48, 4, 2, 2023),
(49, 4, 2, 2023),
(50, 4, 2, 2023);

-- --------------------------------------------------------

--
-- Structure de la table `type_projet`
--

CREATE TABLE `type_projet` (
  `ID_TypeDeProjet` int(11) NOT NULL,
  `Libellé` varchar(255) NOT NULL,
  `Département` varchar(100) NOT NULL,
  `Catégorie` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `type_projet`
--

INSERT INTO `type_projet` (`ID_TypeDeProjet`, `Libellé`, `Département`, `Catégorie`) VALUES
(1, 'Développement Logiciel', 'IT', 'Technologie'),
(2, 'Migration Cloud', 'IT', 'Infrastructure'),
(3, 'Sécurité Informatique', 'IT', 'Sécurité'),
(4, 'Bâtiment Résidentiel', 'Construction', 'Immobilier'),
(5, 'Infrastructure Publique', 'Construction', 'Génie Civil'),
(6, 'Rénovation Urbaine', 'Construction', 'Aménagement'),
(7, 'Campagne Digitale', 'Marketing', 'Digital'),
(8, 'Étude de Marché', 'Marketing', 'Recherche'),
(9, 'Stratégie de Marque', 'Marketing', 'Branding'),
(10, 'Optimisation Supply Chain', 'Logistique', 'Transport'),
(11, 'Gestion d\'Entrepôt', 'Logistique', 'Stockage'),
(12, 'Automatisation Flux', 'Logistique', 'Innovation'),
(13, 'Audit Comptable', 'Finance', 'Contrôle'),
(14, 'Optimisation Fiscale', 'Finance', 'Fiscalité'),
(15, 'Système ERP Financier', 'Finance', 'Technologie');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `chefs_projet`
--
ALTER TABLE `chefs_projet`
  ADD PRIMARY KEY (`ID_ChefProjet`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`ID_client`),
  ADD KEY `idx_localisation` (`localisation`),
  ADD KEY `idx_type` (`Type`);

--
-- Index pour la table `equipe`
--
ALTER TABLE `equipe`
  ADD PRIMARY KEY (`ID_equipe`);

--
-- Index pour la table `projets_terminés`
--
ALTER TABLE `projets_terminés`
  ADD PRIMARY KEY (`ID_projet`),
  ADD KEY `ID_chefProjet` (`ID_chefProjet`),
  ADD KEY `ID_temps` (`ID_temps`),
  ADD KEY `fk_type_projet` (`ID_TypeDeProjet`),
  ADD KEY `ID_equipe` (`ID_equipe`,`ID_client`);

--
-- Index pour la table `temps`
--
ALTER TABLE `temps`
  ADD PRIMARY KEY (`ID_temps`);

--
-- Index pour la table `type_projet`
--
ALTER TABLE `type_projet`
  ADD PRIMARY KEY (`ID_TypeDeProjet`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `chefs_projet`
--
ALTER TABLE `chefs_projet`
  MODIFY `ID_ChefProjet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `projets_terminés`
--
ALTER TABLE `projets_terminés`
  MODIFY `ID_projet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT pour la table `temps`
--
ALTER TABLE `temps`
  MODIFY `ID_temps` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `type_projet`
--
ALTER TABLE `type_projet`
  MODIFY `ID_TypeDeProjet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `projets_terminés`
--
ALTER TABLE `projets_terminés`
  ADD CONSTRAINT `projets_terminés_ibfk_1` FOREIGN KEY (`ID_chefProjet`) REFERENCES `chefs_projet` (`ID_ChefProjet`),
  ADD CONSTRAINT `projets_terminés_ibfk_2` FOREIGN KEY (`ID_temps`) REFERENCES `temps` (`ID_temps`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
