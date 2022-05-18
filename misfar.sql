-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 01, 2022 at 10:01 AM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `misfar`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(3) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(500) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `name`, `email`) VALUES
(3, 'RandaBakhashwain', '$2y$10$eeKf2CPu3Zrpv5SP0TbmLuyYzxecb98.9JxWnAH/C6ySqX7XK7xkG', 'Randa Bakhashwain', 'RandaBakhashwain@gmail.com'),
(4, 'GhadeerAlmaymoon', '$2y$10$zfvR5noHoFIWbOPEr20Squsxazw0mBL4ri/I/7pUet7olFt4queu6', 'Ghadeer Almaymoon', 'GhadeerAlmaymoon@gmail.com'),
(6, 'ManarMutaieb', '$2y$10$jk0sfzMJInksjSkdB406beHfdeFc.K06oMf4AvJsshlYfJNdF3kZy', 'Manar Mutaieb', 'ManarMutaieb@gmail.com'),
(9, 'DhaiAlmurshed', '$2y$10$BuPRGW9Q04E9Jf/oehQz9.IUnF4t2JlvB02QkZMyHXL3y74xcchF.', 'Dhai Almurshed', 'DhaiAlmurshed@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `attractions`
--

CREATE TABLE `attractions` (
  `id` int(3) NOT NULL,
  `attractionName` varchar(70) NOT NULL,
  `field` varchar(20) NOT NULL,
  `description` varchar(3000) NOT NULL,
  `img` varchar(200) NOT NULL,
  `city_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attractions`
--

INSERT INTO `attractions` (`id`, `attractionName`, `field`, `description`, `img`, `city_id`) VALUES
(6, 'Diriyah', 'History', 'Considered by many to be the “pearl of Saudi Arabia,” Diriyah is becoming a major tourist destination. One of Saudi’s signature projects, developed to encourage tourism to the area, Diriyah will eventually encompass luxury resorts (the first of which is set to open in late 2021), numerous international hotel brands, as well as dining, shopping and entertainment options. But don’t let the modern glitz and glam distract you from Diriyah’s deep cultural roots. Diriyah’s history goes back thousands of years: It was once an ancient trade and pilgrimage route, and a meeting spot for people traveling to or from Asia, Africa or Europe.\r\n', 'turaif.jpeg', 1),
(7, 'Boulevard riyadh City', 'Entertainment', 'Boulevard Riyadh City is one of the biggest zones in the season. Triple in size this year, each of the sub-areas features its own set of activities, restaurants, events, and outlets that are catered to all visitors.', 'blvd.png', 1),
(8, 'Edge of The World', 'History', 'The cliffs are the result of tectonic movement of the Arabian plate toward the northeast caused by the spread of the Red Sea rift 1,000 kilometers to the west of the Tuwaiq escarpment. The clear cut it carved reveals the layers of sediments that accumulated there when the eastern part of the Arabian Peninsula was a shallow tropical sea during the Jurassic period (150 million years ago). As you walk along the path, keep an eye out for fossils, a vestige of when the region was part of an ocean bed. As you’re capturing the views around you, take pictures of any fossils you may come upon, as you will not be allowed to take these artifacts out of the area.', 'edg.jpg', 1),
(9, 'Tomb at Hegra', 'History', 'The Nabataeans carved around 100 monumental tombs at Hegra. These tombs are concentrated in groups carved into individual outcrops of rock around the city area, with views of the vast landscape between them. Significant concentrations of tombs include those at Qasr al-Bint, al-Khuraymat and Jabal al-Mahjar.\r\nThe tomb craftsmen of Hegra were exceptionally skilled, planning and carving out the design and layout of each tomb so that it was adapted to the size and shape of the natural rock outcrops, and accommodating any defects or geological characteristics such as quartz seams running through the rock. At Jabal al-Ahmar for example, the stonemasons have deliberately carved the tombs relatively high above the ground to avoid the issues of erosion.\r\nA large amount of stone must have been removed during the carving of the tombs at Hegra, over a relatively short timespan, and yet there is limited evidence for large spoil heaps. It therefore seems likely that stone was removed in blocks and re-used in construction works within the city, for example in the buildings, streets and to line the wells. Finer decoration, such as the carving of wings and tailfeathers of the eagles, would have been executed using picks, spindles, chisels and abrasives.', 'Hegra-3.jpg', 2),
(11, 'Elephant Rock', 'History', 'The Elephant Rock is one of the world’s most popular rocks and the highlight of the region of Al-\'Ula, a city of the Medina Region in Saudi Arabia. Looking at it from afar, this rocks seems like an elephant with a ground-bound trunk. The Elephant Rock is also known as Jabal-Al’fil in the Arabic language. Standing at a height of 52 meters, the giant rock climbs three stories into the Arabian sky. It is hard to look at the gargantuan Elephant Rock and not feel awestruck by its tremendous size. \r\nThere are some seating arrangements near the rock, with sunken sofa areas and the option to light a fire; visitors can sit and enjoy the music and mountains. Coffee shops are located nearby where drinks and snacks are available. Most of the food places open at 4 pm, therefore it is advised to carry water along with some snacks due to the hot weather.', 'elephant-rock.jpg', 2),
(12, 'Tayebat Museum', 'Museum', 'For a fascinating look into Jeddah’s long and cosmopolitan past, take a trip to the Tayebat Museum for a superbly curated representation of the city’s 2,500-year history. Located in the Al Faisaliyah district, the museum is housed in a multiroom complex that re-creates the traditional Hijazi archite', 'TayebatMuseum.png', 3),
(13, 'King Fahad Fountain', 'Entertainment', 'Located on the west coast of the kingdom of Saudi Arabia, in Jeddah, King Fahad’s Fountain is so named because it was donated to the city of Jeddah by King Fahad. Constructed between 1980 to 1983 and opened to the public in 1985, King Fahad’s Fountain is the tallest of its kind in the world, with a maximum water height of 853 ft which is taller than the Eiffel Tower (without the antenna).\r\nWith its powerful jets, unequaled elsewhere, King Fahd\'s Fountain will amaze those who come to see it.  it can reach heights of between 240 meters and 312 meters, depending on the wind. \r\nIf you can get there just before sunset you can easily find a good vantage point because most tourists get there after sunset. Plus you will be able to enjoy the view of the setting sun, shining over the sea as tiny water droplets from the fountain caress your skin and create a relaxing and soothing effect. ', 'KingFahdFountain.jpg', 3),
(14, 'Jeddah Waterfront', 'Parks', 'Enjoy the magnificent views of the Red Sea while taking a walk along the beautiful corniche.\r\nDeveloped as an ideal place for families to relax together, the waterfront offers both adventure and entertainment in the form of watersports, play areas and dancing fountains.\r\nJeddah Waterfront is located along the coast of the Red Sea, the New Jeddah Corniche takes up an area of 30 km kilometers and consists of a coastal road, recreation area, various sculptures, and the famous king Fahad’s fountain which is the highest fountain in the world. \r\nJeddah Corniche lives up to its popularity.  It is home to numerous five star hotels, restaurants, and cafes. You will also find phone charging stations, beautiful fountains, gardens and play parks that make this area the perfect spot to spend a weekend with your family or friends to relax and have fun. ', 'jeddah_waterfront.jpg', 3),
(21, 'MARAYA', 'Museum', 'Maraya is a stunning piece of art set in the desert canyon of Ashar Valley. Designed to blend into the surrounding landscape, it rises from the sand like a mirage. The state-of-the-art structure is covered in 9,740 mirrored panels reflecting AlUla\'s beauty, making it the largest mirrored building in the world, according to Guinness World Records.\r\n\r\nMaraya, meaning mirror or reflection in Arabic, celebrates AlUla\'s significant role in history as a crossroads of cultures for centuries. The mirrors themselves become a contemporary canvas, reflecting the remarkable heritage of the area. As the perfect modern ode to the past, Maraya is the centrepiece of AlUla\'s growing cultural scene. From spectacular concerts and thrilling performances to art residency programmes and arthouse films, AlUla is emerging as a cultural centre on a global scale.\r\n', 'Maraya-3.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `city` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `city`) VALUES
(1, 'Riyadh'),
(2, 'Alula'),
(3, 'Jeddah');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(3) NOT NULL,
  `attraction_ID` int(3) NOT NULL,
  `review` varchar(300) NOT NULL,
  `attachment1` varchar(300) DEFAULT NULL,
  `attachment2` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `attraction_ID`, `review`, `attachment1`, `attachment2`) VALUES
(1, 8, 'It was wonderful experence!', NULL, NULL),
(2, 6, 'they offer tours, if you plan to visit Diriyah you should apply for one\r\n\r\n', 'diriyah-1.jpg', 'diriyah.jpg'),
(3, 7, 'one of the best places in Riyadh! i recommend it for any one who is plan to visit Riyadh\r\n\r\n', NULL, NULL),
(16, 8, 'The best historical experence I\'ve had, It\'s a must', NULL, NULL),
(24, 6, 'Wonderful experience, definitely will visit it again.', '', ''),
(25, 6, 'I enjoyed the experience.', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attractions`
--
ALTER TABLE `attractions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attractionName` (`attractionName`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attraction_ID` (`attraction_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `attractions`
--
ALTER TABLE `attractions`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attractions`
--
ALTER TABLE `attractions`
  ADD CONSTRAINT `attractions_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`attraction_ID`) REFERENCES `attractions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
