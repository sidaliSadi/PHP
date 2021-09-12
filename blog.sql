-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8888
-- Généré le : Dim 12 sep. 2021 à 15:22
-- Version du serveur :  5.7.24
-- Version de PHP : 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id_article` int(11) NOT NULL,
  `titre` varchar(200) NOT NULL,
  `contenu` text NOT NULL,
  `id_categorie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id_article`, `titre`, `contenu`, `id_categorie`) VALUES
(1, 'premier articles', 'bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla ', 2),
(2, 'test insertion', 'ceci est un test apres avoir mis en place le formulaire', 2),
(3, 'un second test insertion', 'ceci est un 2eme test apres avoir mis en place le formulaire', 2),
(4, 'Ressources de la planete terre', 'Actuellement, nous utilisons 74 % de plus que ce que les écosystèmes de la planète peuvent régénérer, soit l\'équivalent des ressources que produirait « 1,7 Terre » en une année. Depuis 1970, la date du Jour du dépassement n\'a cessé d\'avancer.', 5),
(5, 'Date d\'arrivée des oiseaux migrateurs', '\r\nNom complet de l\'indicateur : \r\nDécalage de la date de passage moyenne des oiseaux migrateurs transsahariens au printemps à la Pointe de Grave\r\nDéfinition:\r\nCet indicateur correspond à l\'évolution moyenne des dates de passages printanières de 15 espèces d\'oiseaux migrateurs à la pointe de Grave (33) entre 1989 et 2017. Pour chaque espèce, les dates de passage ont été calculées sur la base des moyennes triennales. Les valeurs annuelles de l\'indicateur correspondent aux moyennes des dates de passages respectives de 15 espèces de migrateurs transsahariens. La valeur de l\'indicateur correspond à la différence entre la moyenne triennale la plus récente et celle de référence (1989 sur les années 1987, 1988 et 1989). Les transsahariens ont été privilégiés afin d\'homogénéiser les stratégies de migration. En effet, chez ce cortège de migrateurs, les pressions et menaces encourues sont relativement proches (traversée de la Méditerranée et du Sahara en autres).\r\n', 5),
(6, '     biodiversité outre-mer     outre-mer', '2021, c’est le début d’une démarche collaborative et partenariale avec les acteurs des territoires, pour informer et mobiliser en faveur de leurs patrimoines naturels, pour relater les contextes culturels, pour mettre en avant leurs enjeux spécifiques et leurs solutions à partager.\r\n\r\nDes ateliers participatifs, des entretiens, des galeries photos, des cartographies et autres visuels co-construits viendront enrichir le dispositif.', 5),
(7, 'L’ONB présent au congrès mondial de la nature', 'L’ONB sera présent au congrès mondial de la nature pour apporter ses réponses à cette question, et plus généralement échanger avec le public sur ses travaux et son fonctionnement.\r\n\r\nPlusieurs conférences et interventions sont ainsi prévues :\r\nLogo ONB\r\n\r\n- Le dimanche 5 septembre à 10 heures sur les espaces génération nature (accessible à tout public) : Comment se porte la biodiversité en France ?\r\n- Le dimanche 5 septembre à 14 heures 45 sur le stand de l’OFB au congrès (accessible aux congressistes uniquement) : Présentation de l’ONB et de ses principaux résultats\r\n- Le mardi 7 septembre à 13 heures sur les espaces génération nature (accessible à tout public) : Quelles sont les pressions qui menacent la biodiversité ?\r\n', 5),
(8, 'The bittersweet story of how a geologist finally reached the Moon', 'In old cabinet drawers and aluminum boxes, Eugene Shoemaker kept his growing collection of minerals. His father took him traveling around Wyoming, where he picked up all kinds of rocks to bring back home. In 5th grade, Gene enrolled at the Buffalo Museum of Science in evening high school level science classes. There was no doubt that he was a science kid.\r\n\r\n \r\n\r\nShoemaker was born in Los Angeles in 1928 and moved back and forth between there and Buffalo a few times. But at a very early age, he was absolutely enamored with rocks. By nine he was a collector and regularly read geology textbooks. However, despite his enthusiasm, he had no idea how great a scientist he would grow up to be.', 1),
(9, 'Things you didn’t know about planets', 'The inner planets\r\n\r\nThe four planets closest to the sun, Mercury, Venus, Earth, and Mars, are classified as rocky planets. They have solid surfaces and molten centers. Mercury, which is a third the Earth’s distance from the sun, is a planet of extremes. The sunward side roasts at 800 degrees Fahrenheit while the shadowed side rests at a frigid -290 degrees.\r\n\r\nDespite these incredible differences in temperature, probes have found the building blocks for life in the polar caps on this tiny planet. Solar radiation makes it impossible for Mercury to hold onto an atmosphere, which means the chances of life developing are highly unlikely. Venus is an oddball in a few respects. First, it, like Mercury, has no moons.\r\n\r\nFor Mercury, it isn’t much of a surprise given how close it is to the Sun and how small of a planet it is. The size and distance from the sun make the lack of natural satellites a more unusual case for Venus. Stranger than the lack of moons, the planet’s slow rotation makes it almost a perfect sphere. Astronomers believe Venus collided with another large body during its formative years, slowing its rotation and knocking it on its head, explaining why it rotates in retrograde.\r\n\r\nFinally, if we ever managed to send a probe to the planet’s surface, it would have to survive the sulphuric acid in the atmosphere and the surface temperatures, which are hot enough to melt lead. On the near side of the asteroid belt sits Mars. Interesting facts about the Red Planet could fill several articles. Most notably, it’s the planet most suited to future human colonies and, at one point, it likely looked a lot like Earth.', 1),
(10, 'GPS needed to be updated since Earth’s magnetic north pole couldn’t stay still', 'Finding which direction is north with a compass has changed over the years. Not just with the new versions of the compass but also where magnetic north is located. Since 2015, the magnetic north has been traveling towards Siberia, each year it travels more than 30 miles. After a month-long partial government shutdown in the United States, humans have finally caught up with the change. On Monday, scientists released an emergency update to the World Magnetic Model, which is the center point for GPS systems and military navigators. Most of us wouldn’t notice the slight change but those who navigate by precise calculations close to the Arctic would.\r\nEarth’s magnetic field\r\n\r\nThe north magnetic pole’s change in location suggests something strange and powerful maybe going on beneath the surface of the Earth. Phil Livermore, at the University of Leeds, believes that the only way to truly understand the magnetic pole is to track it. The planet’s magnetic field is created nearly 2,000 miles beneath our feet, in the spinning ball of molten metal that forms the Earth’s core.\r\n\r\nWhen that underground flow changes, it can change the Earth’s magnetic field lines as well as the poles where they connect. Interestingly enough, the magnetic north doesn’t align with geographic north which is the end point of Earth’s rotational axis. It’s constantly moving and records of ancient magnetic fields from rocks show that the poles can even flip. This type of event has only occurred an average of three times every million years.', 1),
(11, 'Drunk-driving aliens and trash bags in space: mysterious space debris explained', 'The mind-boggling emptiness of space: Vast, vacuous expanses that are home to absolutely nothing, save for the sparse occurrence of a giant ball of rock or maybe a huge cloud of noxious gas. The more you think about it, space is objectively one boring place. Yet we still take one look out there and become instantly captivated by the possibilities. Captivated by the intrigue of weird things doing weird things. Especially when something comes around and we have no idea what it could be. Sometimes, these things scare us into finding out more about them; but every so often, something comes around that warrants investigation as a remedy for boredom. Well, as it turns out, one such object turned up recently: it’s weird, especially in regard to how it moves. In fact, it could end up hitting us at any second. Calm down; the thing only weighs about as much as a sack of potatoes, so you’d have to be pretty unlucky if you’re in its way.', 1);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `nom` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `nom`) VALUES
(5, 'Nature'),
(2, 'Politique'),
(1, 'Science');

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE `commentaires` (
  `id_commentaire` int(11) NOT NULL,
  `datee` varchar(50) NOT NULL,
  `commentaire` text NOT NULL,
  `id_article` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `commentaires`
--

INSERT INTO `commentaires` (`id_commentaire`, `datee`, `commentaire`, `id_article`) VALUES
(1, 'Sun, 12 Sep 2021 11:41:22 +0000', '    article interessant   ', 2),
(2, 'Sun, 12 Sep 2021 11:54:28 +0000', '    je trouve l\'article moyen !!!    ', 2),
(3, 'Sun, 12 Sep 2021 12:12:34 +0000', 'Whhhaaatt c\'est tellement grave, il faut vraiment faire attention !!!!!       ', 4),
(4, 'Sun, 12 Sep 2021 15:21:40 +0000', 'Super cet article <3        ', 8);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id_article`),
  ADD KEY `id_categorie` (`id_categorie`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicite` (`nom`);

--
-- Index pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD PRIMARY KEY (`id_commentaire`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id_article` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `commentaires`
--
ALTER TABLE `commentaires`
  MODIFY `id_commentaire` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`id_categorie`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD CONSTRAINT `commentaires_ibfk_1` FOREIGN KEY (`id_commentaire`) REFERENCES `articles` (`id_article`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
