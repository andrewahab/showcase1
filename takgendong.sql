/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE TABLE `contactforms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` text NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(100) NOT NULL,
  `service` text NOT NULL,
  `distance_km` int(11) NOT NULL,
  `weight_kg` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `order_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `contactforms` (`id`, `name`, `email`, `message`) VALUES
(5, 'Andre Wahab Sandra', 'andrewahabsandra@gmail.com', 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz');
INSERT INTO `contactforms` (`id`, `name`, `email`, `message`) VALUES
(6, 'Andre Wahab Sandra', 'andrewahabsandra@gmail.com', 'huahuahauhauhauhauhauhauhauhauahuahuhuuu');
INSERT INTO `contactforms` (`id`, `name`, `email`, `message`) VALUES
(7, 'ngantuk', 'banget@gmail.com', 'euy');
INSERT INTO `contactforms` (`id`, `name`, `email`, `message`) VALUES
(8, 'Andre Wahab Sandra', 'andrewahabsandra@gmail.com', 'lagi showcase');

INSERT INTO `customers` (`id`, `name`, `email`, `password`) VALUES
(1, 'Andre Wahab Sandra', 'andrewahabsandra@gmail.com', '12345678');
INSERT INTO `customers` (`id`, `name`, `email`, `password`) VALUES
(2, 'Andre', 'andre@gmail.com', 'apaya');
INSERT INTO `customers` (`id`, `name`, `email`, `password`) VALUES
(3, 'siapakah', 'saya@gmail.com', 'gerangan');
INSERT INTO `customers` (`id`, `name`, `email`, `password`) VALUES
(4, 'Bruce Wayne', 'imbatman@gmail.com', 'batarang'),
(5, 'Barry Allen', 'theflash@gmail.com', 'redstreak'),
(6, 'Peter Parker', 'iamspiderman@gmail.com', 'spidey'),
(7, 'Tony Stark', 'iamironman@gmail.com', 'tony123'),
(8, 'Arthur Curry', 'aquaman@gmail.com', 'aqua'),
(9, 'Clark Kent', 'superman@gmail.com', 'super');




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;