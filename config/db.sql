-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 01 jan. 2021 à 23:59
-- Version du serveur :  8.0.22-0ubuntu0.20.04.3
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `annuaire`
--

-- --------------------------------------------------------

--
-- Structure de la table `Personne`
--

DROP DATABASE IF EXISTS `annuaire_php`;
CREATE DATABASE `annuaire_php` CHARACTER SET utf8;

-- Needs to be replaced in Production with the db name of the online server
USE `annuaire_php`;

CREATE TABLE `Personne` (
  `id` int NOT NULL,
  `Name` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Surname` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Street_address` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `City` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Zipcode` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Country` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Personne`
--

INSERT INTO `Personne` (`id`, `Name`, `Surname`, `Street_address`, `City`, `Zipcode`, `Country`) VALUES
(1, 'Nadine', 'Williams', '421-1875 Fermentum St.', 'Bastia', '61359', 'France'),
(3, 'Debra', 'Barnett', '777-5568 Sollicitudin Ave', 'Épernay', '53890', 'France'),
(4, 'Leonard', 'Rutledge', 'Ap #227-2799 Orci Rd.', 'Niort', '27316', 'France'),
(5, 'Josiah', 'Forbes', '7653 Leo Rd.', 'Versailles', '42843', 'France'),
(6, 'Stephen', 'Bishop', 'Ap #531-2973 Aenean Avenue', 'Creil', '93413', 'France'),
(7, 'Paki', 'Hamilton', 'Ap #687-3725 Mauris Ave', 'Rennes', '37900', 'France'),
(8, 'Ashton', 'Santos', '298 Ipsum Rd.', 'Lisieux', '61960', 'France'),
(9, 'Ima', 'Fernandez', 'Ap #685-4996 Augue Street', 'Poitiers', '51525', 'France'),
(10, 'Octavia', 'Fisher', '436-5415 Consectetuer St.', 'Cagnes-sur-Mer', '78250', 'France'),
(11, 'Kylee', 'Raymond', 'Ap #940-3348 Tempus Av.', 'Hérouville-Saint-Clair', '23023', 'France'),
(12, 'Devin', 'Garcia', '2073 Suspendisse St.', 'Lanester', '30147', 'France'),
(13, 'Ian', 'Quinn', '636 Pellentesque Street', 'Montauban', '68889', 'France'),
(14, 'Tobias', 'Dickerson', 'P.O. Box 953, 4526 Ac Road', 'Moulins', '65111', 'France'),
(15, 'Cassady', 'Salinas', '211 In, Avenue', 'Épinal', '90328', 'France'),
(16, 'Trevor', 'Holman', '973-6488 Ultrices Rd.', 'Villenave-d\'Ornon', '21303', 'France'),
(17, 'Amos', 'Ramos', '5860 Ut, Street', 'Orléans', '55733', 'France'),
(18, 'Jerry', 'England', '114-5023 Urna. St.', 'Sotteville-lès-Rouen', '82765', 'France'),
(19, 'Hermione', 'Chandler', 'Ap #159-9942 Ut Av.', 'Saint-Lô', '45428', 'France'),
(20, 'Wing', 'Dodson', '2976 Vel, St.', 'Hérouville-Saint-Clair', '08140', 'France'),
(21, 'Jack', 'Fisher', '752-4001 Et Avenue', 'Saint-Lô', '52549', 'France'),
(22, 'Ivor', 'Guerra', 'P.O. Box 663, 2010 Laoreet, Ave', 'Reims', '64225', 'France'),
(23, 'Edan', 'Finley', 'Ap #315-7483 A Avenue', 'Charleville-Mézières', '32010', 'France'),
(24, 'Jasper', 'Mcguire', 'P.O. Box 879, 869 Aliquam, Av.', 'Lanester', '21154', 'France'),
(25, 'Ira', 'Robles', 'Ap #161-4543 Sed Road', 'Vitry-sur-Seine', '32361', 'France'),
(26, 'September', 'Armstrong', '9026 Luctus Street', 'Le Puy-en-Velay', '52526', 'France'),
(27, 'Russell', 'Le', '755-7283 Hendrerit. Ave', 'Dole', '50179', 'France'),
(28, 'Wyatt', 'Lowery', '764-5238 Neque Avenue', 'Rouen', '87743', 'France'),
(29, 'Amanda', 'Prince', 'Ap #547-8789 Per Road', 'Laval', '78160', 'France'),
(30, 'Carl', 'Daniels', '7247 Porttitor St.', 'Rodez', '34160', 'France'),
(31, 'Jocelyn', 'Miles', '733-1626 Enim. Rd.', 'Salon-de-Provence', '07321', 'France'),
(32, 'Neil', 'Wilcox', '177-395 Iaculis Avenue', 'Nantes', '88124', 'France'),
(33, 'Brianna', 'Leonard', '541-967 Dolor St.', 'Blois', '92784', 'France'),
(34, 'Orson', 'Carson', '2954 Egestas Avenue', 'Nancy', '51882', 'France'),
(35, 'Hakeem', 'Cain', 'P.O. Box 476, 1495 Vitae Av.', 'Rennes', '24861', 'France'),
(36, 'Kasimir', 'Beard', 'P.O. Box 564, 7952 Arcu. Road', 'Colomiers', '60910', 'France'),
(37, 'Lucy', 'Mckinney', '3301 At, Av.', 'Fréjus', '15050', 'France'),
(38, 'Connor', 'Cooke', 'Ap #408-2905 Ante Rd.', 'Sens', '63388', 'France'),
(39, 'Ishmael', 'Rodriguez', 'Ap #946-7707 Et St.', 'Dreux', '40233', 'France'),
(40, 'Ava', 'Koch', '358-2998 Porttitor St.', 'Abbeville', '68058', 'France'),
(41, 'Germane', 'Wong', '2980 Fusce St.', 'Limoges', '00194', 'France'),
(42, 'Jesse', 'Brewer', 'Ap #915-2956 Vestibulum St.', 'Béziers', '80787', 'France'),
(43, 'Samuel', 'Maynard', '235-441 Metus. Road', 'La Rochelle', '45741', 'France'),
(44, 'Moana', 'Knox', 'P.O. Box 115, 7362 Elementum, Avenue', 'Le Grand-Quevilly', '57767', 'France'),
(45, 'Riley', 'Griffin', '829-9525 Magna Street', 'Dijon', '03604', 'France'),
(46, 'Alexander', 'Mack', 'P.O. Box 605, 6807 Donec St.', 'Aurillac', '42498', 'France'),
(47, 'Yeo', 'Hess', '2271 Luctus Avenue', 'Ajaccio', '06221', 'France'),
(48, 'Dakota', 'Miranda', '847-4661 Magna. Avenue', 'Lorient', '34487', 'France'),
(49, 'Serena', 'Patrick', '268-2208 Augue Ave', 'Cambrai', '09146', 'France'),
(50, 'Upton', 'Browning', 'Ap #939-5197 Sagittis. Street', 'Toulouse', '64418', 'France'),
(51, 'Simone', 'Rocha', 'P.O. Box 398, 299 Facilisi. Ave', 'Vandoeuvre-lès-Nancy', '87814', 'France'),
(52, 'Athena', 'Mitchell', '2803 Elit Rd.', 'Troyes', '82843', 'France'),
(53, 'Doris', 'Martin', '7764 Vel, Av.', 'Dole', '13057', 'France'),
(54, 'Erin', 'Paul', 'P.O. Box 480, 3705 Vel, Street', 'Rodez', '41565', 'France'),
(55, 'Wendy', 'Cole', 'Ap #225-3244 Orci. Rd.', 'Sotteville-lès-Rouen', '24405', 'France'),
(56, 'Grace', 'Lucas', '998 Volutpat Av.', 'Moulins', '17288', 'France'),
(57, 'Lewis', 'Matthews', 'Ap #723-5989 Integer Av.', 'Sotteville-lès-Rouen', '13872', 'France'),
(58, 'Otto', 'Barry', '2052 Sit St.', 'Compiègne', '15312', 'France'),
(59, 'Vielka', 'Hart', '204-4537 Sem Street', 'Auxerre', '55148', 'France'),
(60, 'Randall', 'Tanner', 'Ap #367-1766 Convallis Road', 'Castres', '76465', 'France'),
(61, 'Desirae', 'Greene', 'P.O. Box 595, 3413 Lorem Street', 'Saint-Louis', '17266', 'France'),
(62, 'Alexandra', 'Mosley', 'Ap #987-1511 Tincidunt, St.', 'Nevers', '65053', 'France'),
(63, 'Jamalia', 'Christian', '7099 Enim Av.', 'Creil', '74796', 'France'),
(64, 'Larissa', 'Washington', '166-6339 Odio St.', 'Saint-Sébastien-sur-Loire', '97150', 'France'),
(65, 'Hyatt', 'Fry', '2069 Auctor St.', 'Montbéliard', '14153', 'France'),
(66, 'Wing', 'Vincent', '918-5656 Sodales Ave', 'Hyères', '72221', 'France'),
(67, 'Jayme', 'Stark', '632-8141 Mauris. Rd.', 'Moulins', '43745', 'France'),
(68, 'Quin', 'Stewart', 'P.O. Box 814, 7108 Vitae, Road', 'Marcq-en-Baroeul', '42136', 'France'),
(69, 'Hedy', 'Acosta', '738 Massa. Road', 'Bordeaux', '57128', 'France'),
(70, 'Athena', 'Shepherd', '719-6628 Adipiscing Avenue', 'La Roche-sur-Yon', '53557', 'France'),
(71, 'Vielka', 'Cote', '7918 Neque Rd.', 'Vitry-sur-Seine', '12945', 'France'),
(72, 'Denton', 'Ochoa', 'Ap #317-6358 Facilisis Av.', 'Vandoeuvre-lès-Nancy', '15648', 'France'),
(73, 'Raymond', 'Hewitt', '502-7500 Purus, Ave', 'Limoges', '02694', 'France'),
(74, 'Stacy', 'Marks', '912-3778 Sed Ave', 'Bastia', '86404', 'France'),
(75, 'Jin', 'Solomon', 'P.O. Box 433, 6237 Tristique St.', 'Toulouse', '32636', 'France'),
(76, 'Zena', 'Harmon', '7846 Quis, Rd.', 'Lunel', '22481', 'France'),
(77, 'Matthew', 'Simmons', 'Ap #578-6634 Venenatis Rd.', 'Pontarlier', '94060', 'France'),
(78, 'Nehru', 'Small', 'Ap #390-806 Nullam St.', 'Besançon', '74585', 'France'),
(79, 'Pandora', 'Langley', 'P.O. Box 757, 5935 Libero St.', 'Laon', '05890', 'France'),
(80, 'Colton', 'Hampton', 'Ap #155-7338 Et Rd.', 'Saint-Louis', '38921', 'France'),
(81, 'Xenos', 'Mccarthy', '282-7569 Neque. Av.', 'Bastia', '80563', 'France'),
(82, 'Tucker', 'Richmond', '802-2035 Gravida Ave', 'Blois', '90580', 'France'),
(83, 'Austin', 'Conway', 'Ap #108-2161 Massa. Rd.', 'Angoulême', '05755', 'France'),
(84, 'Allen', 'Solomon', 'Ap #726-8933 Malesuada Street', 'Bastia', '69564', 'France'),
(85, 'Plato', 'Lang', 'P.O. Box 367, 6594 Nibh. Avenue', 'Troyes', '10973', 'France'),
(86, 'Cole', 'Lancaster', 'Ap #158-445 Nascetur Rd.', 'Saintes', '36487', 'France'),
(87, 'Kiayada', 'Goff', '361-2976 Dignissim. Rd.', 'Charleville-Mézières', '63229', 'France'),
(88, 'Hunter', 'Cooley', '628-8049 Fermentum Street', 'La Roche-sur-Yon', '65899', 'France'),
(89, 'Tyrone', 'Harrison', '440-8365 Urna, Road', 'Niort', '65467', 'France'),
(90, 'Lael', 'Delacruz', 'Ap #416-1778 Vestibulum Rd.', 'Hénin-Beaumont', '87423', 'France'),
(91, 'Cooper', 'Ramsey', '892-4884 Ac St.', 'Forbach', '21543', 'France'),
(92, 'Nissim', 'Mays', '438-9490 Lacus. St.', 'Saintes', '02730', 'France'),
(93, 'Sierra', 'Sanders', 'P.O. Box 820, 1508 Feugiat. Avenue', 'Saint-Brieuc', '82598', 'France'),
(94, 'Cody', 'Hodges', '7953 Sapien Rd.', 'Colmar', '45897', 'France'),
(95, 'Hayes', 'Kerr', '404-1878 Tempus St.', 'Beauvais', '10319', 'France'),
(96, 'MacKenzie', 'Blanchard', '8461 Cursus Ave', 'Hérouville-Saint-Clair', '62102', 'France'),
(97, 'Phoebe', 'Compton', '3981 Sapien. Road', 'Saint-Dizier', '67586', 'France'),
(98, 'Griffith', 'Roberts', '682-5103 Ipsum Av.', 'Dieppe', '87961', 'France'),
(99, 'Alexis', 'England', '8455 Fermentum St.', 'Béziers', '92017', 'France'),
(100, 'Yvonne', 'Reeves', '4878 In St.', 'Châtellerault', '82603', 'France'),
(101, '', '', '', '', '', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Personne`
--
ALTER TABLE `Personne`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Personne`
--
ALTER TABLE `Personne`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
