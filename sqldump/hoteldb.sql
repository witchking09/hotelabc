-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 01 Tem 2026, 14:27:14
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `hoteldb`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `benutzer`
--

CREATE TABLE `benutzer` (
  `VName` varchar(80) NOT NULL,
  `NName` varchar(80) NOT NULL,
  `passwort` varchar(255) NOT NULL,
  `GebDat` date NOT NULL,
  `TelNr` varchar(15) NOT NULL,
  `email` varchar(80) NOT NULL,
  `geschlecht` enum('w','m','d') NOT NULL,
  `BID` int(11) NOT NULL,
  `erstellt_am` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` enum('user','company','admin') DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `benutzer`
--

INSERT INTO `benutzer` (`VName`, `NName`, `passwort`, `GebDat`, `TelNr`, `email`, `geschlecht`, `BID`, `erstellt_am`, `role`) VALUES
('cvxcvbxcvb', 'dfgsdfgsdfg', '$2y$10$grWuS3av2qfwxp90sctKR.OnhpcGZDu5wIDlZikL1RZcj3IHoPxri', '0000-00-00', '05615615665', 'kjdfgnkkjsdfgn@dgndsjkfg.com', 'm', 73, '2025-11-07 08:52:49', 'user'),
('sdfsdg', 'dfggsdf', '$2y$10$CR4HoH21cCERzSrFgxvVBevyTdpibot1cAd67ODUsgaJOtLeDJruW', '2024-10-24', '01765475675', 'kasinmfdbttz@fbf.com', 'm', 75, '2025-11-12 08:52:52', 'user'),
('adrimonasos', 'peterhansstrausmeter', '$2y$10$STcAFoUIHsi1UJZA1pVIre5aQApZ.yv6g8KA7wX6utvRHCfNubl9a', '2000-12-03', '012723627378253', 'Dddiyparty@justinbibber.com', 'm', 76, '2025-11-12 08:54:30', 'user'),
('kassim', 'husein', '$2y$10$ijFhBdbQIykc8IFrdcjCWOQeYnOSRtju02m1jqSU3HOxI2Qhb.kZu', '2006-09-13', '0176325905734', 'kassimhuccer@gmailvvdbdfb.com', 'm', 77, '2025-11-12 08:56:48', 'user'),
('caner', 'Ã¶ner', '$2y$10$p7gD2Q0DCVv8No3qGTGmo.xTKmhSEtv1n1YMu.rIyRv5lNhrbQYXW', '2002-07-09', '5159998459', 'dfsdfgsdfg@gmail.com', 'm', 79, '2025-11-21 06:25:22', 'user'),
('caner', 'Ã¶ner', '$2y$10$syIlBkBCHEqID7z4xyWjHuhaNZ2CR3Z9egOzbQDQvcZmkl5KIzd0C', '2025-11-13', '234432523452345', 'dfgsdfgdsg@gmail.com', 'm', 80, '2025-11-21 06:30:43', 'user'),
('irfan', 'azimi', '$2y$10$vzHRSxx3yDqF64RSx9H9tOzdaqla/JoJyxdkVPuf7Zm6YsQhVnOea', '2025-11-23', '12334421354323', 'jgbfjgsjdfg@gmail.com', 'w', 81, '2025-11-21 08:48:35', 'user'),
('sdfsdfsdsdf', 'sdsfdsdfsdf', '$2y$10$eF6dB3ZdDlkE9zV5M6AJcuwKTgyUWImorH6MBQmFBGk206QuIMf16', '0000-00-00', '999999999999999', '9999999999sdfsfd@sdfsdf.com', 'd', 82, '2025-11-26 07:58:05', 'user'),
('ralf', 'schumacher', '$2y$10$4ZP1mVTAuKLQw5NKtNzPBOzH0ln7q4wO2SLWcLsNtEVGCFiHpHkky', '5465-08-09', '125615615656', 'ralfschumacha@gmail.com', 'w', 83, '2025-11-26 08:45:27', 'user'),
('sdfsdf', 'sdfsdfsdf', '$2y$10$yyzWr9YMFtdkrCyXMrloMejozduKwId9wlH77Z/P3UQgXIP11uWZ.', '2002-07-09', '000001885252', '123@gmail.com', 'w', 84, '2026-06-23 08:18:41', 'admin'),
('sdfsdf', 'sdfsdfsdf', '$2y$10$mpG09d.mpZcQY3EVsu4EbO2DPpYjup9TrBDYK5EC6RwTND5JtoEt6', '2002-07-09', '000001885252', '123@gmail.com', 'w', 85, '2026-06-23 08:25:01', 'admin'),
('Caner', 'Öner', '$2y$10$kBrKZKYJIKbCfI6aaCOsD./F9JPq5tNjC6wX/1aoPJQiSQBZbQOs.', '2002-07-09', '0656655105151', 'caner.oener@gmail.com', 'm', 86, '2026-06-24 12:06:40', 'user'),
('Caner', 'Öner', '$2y$10$.mrLiAum1g8y9P62J8ORwO9usl1Hk7UB.1PyZhN0bt7O4S6IGovEu', '2002-07-09', '0238942734', 'caner123@gmail.com', 'm', 87, '2026-07-01 06:47:01', 'admin');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hotels`
--

CREATE TABLE `hotels` (
  `hotel_id` int(11) NOT NULL,
  `hotel_name` varchar(100) NOT NULL,
  `location` varchar(150) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `number_of_rooms` int(11) DEFAULT 0,
  `price_per_night` decimal(10,2) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `hotels`
--

INSERT INTO `hotels` (`hotel_id`, `hotel_name`, `location`, `address`, `city`, `state`, `country`, `postal_code`, `phone_number`, `email`, `number_of_rooms`, `price_per_night`, `description`) VALUES
(1, 'Grand Palace Hotel', 'Downtown', '101 Main Street', 'New York', 'New York', 'USA', '10001', '+1-212-555-1010', 'contact@grandpalace.com', 250, 282.16, NULL),
(2, 'Seaside Retreat', 'Beachfront', '25 Ocean Avenue', 'Santa Monica', 'California', 'USA', '90401', '+1-310-555-2525', 'info@seasideretreat.com', 180, 382.23, NULL),
(3, 'Mountain View Lodge', 'Highlands', '78 Alpine Road', 'Aspen', 'Colorado', 'USA', '81611', '+1-970-555-7878', 'reservations@mountainviewlodge.com', 120, 482.31, NULL),
(4, 'Urban Stay Hotel', 'City Center', '45 Queen Street', 'Toronto', 'Ontario', 'Canada', 'M5H 2N2', '+1-416-555-4545', 'stay@urbanstay.ca', 200, 126.79, NULL),
(5, 'Desert Oasis Resort', 'Palm Desert', '12 Mirage Blvd', 'Palm Springs', 'California', 'USA', '92262', '+1-760-555-1212', 'book@desertoasis.com', 300, 282.45, NULL),
(6, 'Lakeside Inn', 'Waterfront', '88 Shoreline Drive', 'Chicago', 'Illinois', 'USA', '60611', '+1-312-555-8888', 'hello@lakesideinn.com', 95, 382.53, NULL),
(7, 'Golden Sands Resort', 'Beach District', '33 Coral Way', 'Honolulu', 'Hawaii', 'USA', '96815', '+1-808-555-3333', 'reservations@goldensands.com', 220, 482.60, NULL),
(8, 'Eagle’s Nest Hotel', 'Mountain Ridge', '56 Summit Trail', 'Denver', 'Colorado', 'USA', '80202', '+1-303-555-5656', 'info@eaglesnest.com', 140, 182.67, NULL),
(9, 'Blue Horizon Resort', 'Coastal', '102 Marina Bay', 'San Diego', 'California', 'USA', '92101', '+1-619-555-1020', 'stay@bluehorizon.com', 175, 282.75, NULL),
(10, 'Silver Leaf Hotel', 'Midtown', '77 Elm Street', 'Boston', 'Massachusetts', 'USA', '02110', '+1-617-555-7777', 'contact@silverleaf.com', 160, 382.82, NULL),
(11, 'Royal Garden Hotel', 'Historic Quarter', '17 King’s Road', 'London', 'England', 'UK', 'SW3 4RP', '+44-20-5555-1717', 'contact@royalgarden.co.uk', 275, 558.26, NULL),
(12, 'Hilltop Heritage Hotel', 'Old Town', '5 Heritage Lane', 'Edinburgh', 'Scotland', 'UK', 'EH1 1AB', '+44-131-555-0505', 'info@hilltophotel.co.uk', 160, 220.84, NULL),
(13, 'Hotel de la Seine', 'Riverside', '9 Rue de Paris', 'Paris', 'Île-de-France', 'France', '75001', '+33-1-555-0909', 'bonjour@delaseine.fr', 210, 202.28, NULL),
(14, 'Alpenblick Lodge', 'Alpine Village', '44 Matterhorn Way', 'Zermatt', 'Valais', 'Switzerland', '3920', '+41-27-555-4444', 'stay@alpenblick.ch', 130, 594.67, NULL),
(15, 'Vienna Imperial Hotel', 'Central District', '1 Opernring', 'Vienna', 'Vienna', 'Austria', '1010', '+43-1-555-0101', 'contact@viennaimperial.at', 240, 352.39, NULL),
(16, 'Lago Blu Resort', 'Lakeside', '12 Via Lago', 'Como', 'Lombardy', 'Italy', '22100', '+39-031-555-1212', 'info@lagoblu.it', 180, 127.45, NULL),
(17, 'Andalus Palace', 'Historic Center', '23 Calle Real', 'Seville', 'Andalusia', 'Spain', '41001', '+34-955-555-2323', 'stay@andaluspalace.es', 150, 202.50, NULL),
(18, 'Emerald Bay Resort', 'Coastal Area', '2 Porto Road', 'Porto', 'Porto District', 'Portugal', '4000-001', '+351-22-555-0202', 'book@emeraldbay.pt', 190, 277.55, NULL),
(19, 'Nordic Lights Hotel', 'City Center', '19 Arctic Avenue', 'Oslo', 'Oslo', 'Norway', '0150', '+47-21-555-1919', 'hello@nordiclights.no', 110, 352.61, NULL),
(20, 'Aurora Borealis Lodge', 'Northern Lights', '9 Frost Circle', 'Reykjavik', 'Capital Region', 'Iceland', '101', '+354-555-0909', 'stay@auroralodge.is', 80, 127.66, NULL),
(21, 'Istanbul Grand Resort', 'Bosphorus View', '25 Dolmabahce Avenue', 'Istanbul', 'Marmara', 'Turkey', '34357', '+90-212-555-2525', 'contact@istanbulgrandresort.com', 320, 141.81, NULL),
(22, 'Antalya Beach Resort', 'Lara Beach', '88 Mediterranean Blvd', 'Antalya', 'Antalya', 'Turkey', '07100', '+90-242-555-8888', 'info@antalyabeachresort.com', 400, 191.85, NULL),
(23, 'Cappadocia Cave Suites', 'Göreme Valley', '3 Fairy Chimneys Road', 'Nevsehir', 'Cappadocia', 'Turkey', '50180', '+90-384-555-0303', 'stay@cappadociacaves.com', 75, 241.89, NULL),
(24, 'Bodrum Horizon Resort', 'Seaside', '56 Sunset Street', 'Bodrum', 'Muğla', 'Turkey', '48400', '+90-252-555-5656', 'book@bodrumhorizon.com', 280, 91.92, NULL),
(25, 'Kusadasi Marina Hotel', 'Marina District', '14 Coastal Avenue', 'Kusadasi', 'Aydın', 'Turkey', '09400', '+90-256-555-1414', 'reservations@kusadasimarina.com', 210, 141.96, NULL),
(26, 'Izmir City Hotel', 'City Center', '22 Agora Street', 'Izmir', 'Izmir', 'Turkey', '35210', '+90-232-555-2222', 'info@izmircityhotel.com', 180, 192.00, NULL),
(27, 'Fethiye Blue Lagoon Resort', 'Ölüdeniz', '5 Lagoon Road', 'Fethiye', 'Muğla', 'Turkey', '48340', '+90-252-555-0505', 'contact@bluelagoonfethiye.com', 260, 242.03, NULL),
(28, 'Marmaris Bay Resort', 'Coastal Zone', '30 Pine Grove', 'Marmaris', 'Muğla', 'Turkey', '48700', '+90-252-555-3030', 'stay@marmarisbayresort.com', 290, 92.07, NULL),
(29, 'Alanya Sun Resort', 'Beachfront', '7 Cleopatra Blvd', 'Alanya', 'Antalya', 'Turkey', '07400', '+90-242-555-0707', 'info@alanyasunresort.com', 240, 142.11, NULL),
(30, 'Pamukkale Thermal Hotel', 'Hot Springs Area', '11 Travertine Street', 'Denizli', 'Denizli', 'Turkey', '20190', '+90-258-555-1111', 'book@pamukkalethermal.com', 150, 192.14, NULL),
(31, 'Doha Skyline Hotel', 'West Bay', '19 Corniche Road', 'Doha', 'Doha', 'Qatar', '12233', '+974-5555-1919', 'stay@dohaskyline.qa', 220, 353.27, NULL),
(32, 'Dubai Pearl Resort', 'Palm Jumeirah', '88 Crescent Drive', 'Dubai', 'Dubai', 'UAE', '00000', '+971-4-555-8888', 'info@dubaipearlresort.ae', 500, 260.54, NULL),
(33, 'Abu Dhabi Dunes Hotel', 'City Center', '31 Desert Road', 'Abu Dhabi', 'Abu Dhabi', 'UAE', '00000', '+971-2-555-3131', 'contact@abudhabidunes.ae', 260, 385.63, NULL),
(34, 'Amman Citadel Hotel', 'Old City', '12 King Abdullah Street', 'Amman', 'Amman', 'Jordan', '11118', '+962-6-555-1212', 'reservations@ammancitadel.jo', 190, 278.43, NULL),
(35, 'Cairo Nile View Hotel', 'Riverside', '47 Zamalek Street', 'Cairo', 'Cairo', 'Egypt', '11561', '+20-2-555-4747', 'info@caironileview.eg', 350, 353.49, NULL),
(36, 'Bangkok Grand Palace Hotel', 'Sukhumvit', '55 Rama Road', 'Bangkok', 'Bangkok', 'Thailand', '10110', '+66-2-555-5555', 'contact@bangkokgrand.com', 280, 128.54, NULL),
(37, 'Bali Ocean View Resort', 'Uluwatu', '18 Sunset Beach Rd', 'Bali', 'Bali', 'Indonesia', '80361', '+62-361-555-1818', 'info@balioceanview.id', 310, 203.60, NULL),
(38, 'Phuket Island Resort', 'Patong Beach', '10 Coral Drive', 'Phuket', 'Phuket', 'Thailand', '83150', '+66-76-555-1010', 'book@phuketislandresort.com', 330, 278.65, NULL),
(39, 'Tokyo Garden Hotel', 'Shinjuku', '3 Sakura Lane', 'Tokyo', 'Tokyo', 'Japan', '160-0022', '+81-3-5555-0303', 'stay@tokyogarden.jp', 260, 353.71, NULL),
(40, 'Kyoto Zen Inn', 'Old Quarter', '5 Kiyomizu Street', 'Kyoto', 'Kyoto', 'Japan', '605-0862', '+81-75-555-0505', 'hello@kyotozeninn.jp', 95, 128.76, NULL),
(41, 'Sydney Harbour Hotel', 'Circular Quay', '2 Harbour Road', 'Sydney', 'NSW', 'Australia', '2000', '+61-2-5555-0202', 'contact@sydneyharbour.com.au', 240, 203.82, NULL),
(42, 'Melbourne Central Hotel', 'CBD', '8 Collins Street', 'Melbourne', 'Victoria', 'Australia', '3000', '+61-3-5555-0808', 'info@melbournecentral.com.au', 190, 278.87, NULL),
(43, 'Gold Coast Paradise Resort', 'Surfers Paradise', '15 Beachfront Ave', 'Gold Coast', 'Queensland', 'Australia', '4217', '+61-7-5555-1515', 'stay@goldcoastparadise.com.au', 280, 353.93, NULL),
(44, 'Perth Bayview Hotel', 'Waterfront', '12 Marine Parade', 'Perth', 'Western Australia', 'Australia', '6000', '+61-8-5555-1212', 'book@perthbayview.com.au', 170, 128.98, NULL),
(45, 'Auckland Skyline Resort', 'Harbour View', '7 Queen’s Wharf', 'Auckland', 'Auckland', 'New Zealand', '1010', '+64-9-555-7070', 'reservations@aucklandskyline.nz', 200, 204.04, NULL),
(46, 'Grand Palace Resort', 'Downtown', '103 Main Street', 'New York', 'New York', 'USA', '10001', '+1-212-555-1030', 'info@grandpalaceresort.com', 260, 385.46, NULL),
(47, 'The Palace Inn', 'Old Town', '11 Regent Avenue', 'London', 'England', 'UK', 'SW1A 1AA', '+44-20-5555-1111', 'stay@palaceinn.co.uk', 140, 561.22, NULL),
(48, 'Royal Palace Hotel', 'City Center', '19 Queen Road', 'Toronto', 'Ontario', 'Canada', 'M5V 2N1', '+1-416-555-1919', 'contact@royalpalace.ca', 210, 129.20, NULL),
(49, 'Ocean Palace Resort', 'Beachfront', '88 Coral Drive', 'Honolulu', 'Hawaii', 'USA', '96815', '+1-808-555-8888', 'info@oceanpalaceresort.com', 280, 285.68, NULL),
(50, 'Istanbul Grand Hotel', 'Bosphorus View', '27 Dolmabahce Avenue', 'Istanbul', 'Marmara', 'Turkey', '34357', '+90-212-555-2727', 'book@istanbulgrandhotel.com', 310, 192.88, NULL),
(51, 'Istanbul Grand Palace', 'Historic District', '33 Sultanahmet Street', 'Istanbul', 'Marmara', 'Turkey', '34110', '+90-212-555-3333', 'info@grandpalaceistanbul.com', 290, 242.91, NULL),
(52, 'Istanbul Seaside Resort', 'Bosphorus Coast', '45 Karaköy Avenue', 'Istanbul', 'Marmara', 'Turkey', '34425', '+90-212-555-4545', 'contact@istanbulseaside.com', 230, 92.95, NULL),
(53, 'Istanbul City Resort', 'Central Area', '18 Taksim Square', 'Istanbul', 'Marmara', 'Turkey', '34437', '+90-212-555-1818', 'stay@istanbulcityresort.com', 200, 142.99, NULL),
(54, 'Antalya Beach Hotel', 'Lara Beach', '89 Mediterranean Blvd', 'Antalya', 'Antalya', 'Turkey', '07100', '+90-242-555-8989', 'info@antalyabeachhotel.com', 380, 193.02, NULL),
(55, 'Antalya Sun Resort', 'Konyaaltı Beach', '12 Duden Street', 'Antalya', 'Antalya', 'Turkey', '07070', '+90-242-555-1212', 'contact@antalyasunresort.com', 340, 243.06, NULL),
(56, 'Antalya Grand Resort', 'Lara Beach', '77 Sea Road', 'Antalya', 'Antalya', 'Turkey', '07100', '+90-242-555-7777', 'stay@antalyagrandresort.com', 400, 93.09, NULL),
(57, 'Blue Lagoon Hotel', 'Beachfront', '6 Lagoon Road', 'Fethiye', 'Muğla', 'Turkey', '48340', '+90-252-555-0606', 'book@bluelagoonhotel.com', 240, 143.13, NULL),
(58, 'Blue Horizon Inn', 'Coastal Area', '104 Marina Bay', 'San Diego', 'California', 'USA', '92101', '+1-619-555-1040', 'info@bluehorizoninn.com', 160, 386.34, NULL),
(59, 'Blue Horizon Resort & Spa', 'Oceanfront', '105 Coral Bay', 'Miami', 'Florida', 'USA', '33139', '+1-305-555-1050', 'stay@bluehorizonspa.com', 210, 486.41, NULL),
(60, 'Lagoon View Resort', 'Waterfront', '8 Lagoon Street', 'Bali', 'Bali', 'Indonesia', '80361', '+62-361-555-0808', 'contact@lagoonviewresort.id', 190, 129.86, NULL),
(61, 'Mountain View Resort', 'Highlands', '80 Alpine Road', 'Aspen', 'Colorado', 'USA', '81611', '+1-970-555-8080', 'info@mountainviewresort.com', 150, 286.56, NULL),
(62, 'Mountain Peak Lodge', 'High Ridge', '82 Summit Trail', 'Denver', 'Colorado', 'USA', '80202', '+1-303-555-8282', 'stay@mountainpeaklodge.com', 130, 386.63, NULL),
(63, 'Mountain Valley Hotel', 'Forest Edge', '84 Pine Hill', 'Vail', 'Colorado', 'USA', '81657', '+1-970-555-8484', 'book@mountainvalleyhotel.com', 115, 486.70, NULL),
(64, 'Golden Sands Hotel', 'Beach District', '34 Coral Way', 'Honolulu', 'Hawaii', 'USA', '96815', '+1-808-555-3434', 'contact@goldensandshotel.com', 240, 186.78, NULL),
(65, 'Golden Sun Resort', 'Seaside', '36 Sunset Blvd', 'Bodrum', 'Muğla', 'Turkey', '48400', '+90-252-555-3636', 'info@goldensunresort.com', 270, 143.42, NULL),
(66, 'Sandy Shores Resort', 'Coastal Zone', '38 Shoreline Ave', 'Kusadasi', 'Aydın', 'Turkey', '09400', '+90-256-555-3838', 'stay@sandyshores.com', 210, 193.46, NULL),
(67, 'Golden Horizon Hotel', 'Harborfront', '40 Bay Street', 'Sydney', 'NSW', 'Australia', '2000', '+61-2-5555-4040', 'hello@goldenhorizon.com.au', 230, 355.25, NULL),
(68, 'Urban Stay Suites', 'Downtown', '46 Queen Street', 'Toronto', 'Ontario', 'Canada', 'M5H 2N2', '+1-416-555-4646', 'book@urbanstaysuites.ca', 180, 130.30, NULL),
(69, 'Urban Palace Hotel', 'Financial District', '48 Bay Avenue', 'Vancouver', 'British Columbia', 'Canada', 'V6C 1A1', '+1-604-555-4848', 'contact@urbanpalace.ca', 200, 205.36, NULL),
(70, 'City Stay Hotel', 'Business Zone', '22 Agora Street', 'Izmir', 'Izmir', 'Turkey', '35210', '+90-232-555-2223', 'info@citystayhotel.com', 190, 193.61, NULL),
(71, 'City View Inn', 'Central Area', '20 Market Road', 'Ankara', 'Ankara', 'Turkey', '06010', '+90-312-555-2020', 'stay@cityviewinn.com', 170, 243.64, NULL),
(72, 'Royal Garden Resort', 'Historic Quarter', '18 King’s Road', 'London', 'England', 'UK', 'SW3 4RP', '+44-20-5555-1818', 'reservations@royalgardenresort.co.uk', 260, 225.78, NULL),
(73, 'Royal View Hotel', 'Old Town', '6 Castle Lane', 'Edinburgh', 'Scotland', 'UK', 'EH1 1AB', '+44-131-555-0606', 'contact@royalview.co.uk', 150, 338.36, NULL),
(74, 'Royal Sands Resort', 'Beachfront', '44 Coral Beach Road', 'Antalya', 'Antalya', 'Turkey', '07100', '+90-242-555-4444', 'info@royalsandsresort.com', 310, 193.75, NULL),
(75, 'Garden Palace Hotel', 'Central Park', '50 Bloom Street', 'Paris', 'Île-de-France', 'France', '75001', '+33-1-555-5050', 'book@gardenpalace.fr', 200, 355.69, NULL),
(76, 'Sunrise Resort & Spa', 'Coastal Zone', '55 Ocean Road', 'Miami', 'Florida', 'USA', '33139', '+1-305-555-5555', 'info@sunrisespa.com', 250, 187.65, NULL),
(77, 'Sunrise Palace', 'Seaside', '57 Coral Road', 'Antalya', 'Antalya', 'Turkey', '07100', '+90-242-555-5757', 'contact@sunrisepalace.com', 260, 143.86, NULL),
(78, 'Sunset Paradise Resort', 'Beachfront', '59 Sunset Blvd', 'Phuket', 'Phuket', 'Thailand', '83150', '+66-76-555-5959', 'book@sunsetparadise.com', 280, 280.85, NULL),
(79, 'Paradise Bay Resort', 'Lagoon Area', '61 Lagoon Way', 'Fethiye', 'Muğla', 'Turkey', '48340', '+90-252-555-6161', 'stay@paradisebayresort.com', 300, 243.94, NULL),
(80, 'Paradise Grand Hotel', 'Ocean View', '63 Bayview Ave', 'Honolulu', 'Hawaii', 'USA', '96815', '+1-808-555-6363', 'hello@paradisegrand.com', 310, 187.95, NULL),
(81, 'Sunset Horizon Hotel', 'Coastal District', '65 Horizon Street', 'Bodrum', 'Muğla', 'Turkey', '48400', '+90-252-555-6565', 'info@sunsethorizon.com', 290, 144.01, NULL);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `benutzer`
--
ALTER TABLE `benutzer`
  ADD PRIMARY KEY (`BID`);

--
-- Tablo için indeksler `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`hotel_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `benutzer`
--
ALTER TABLE `benutzer`
  MODIFY `BID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- Tablo için AUTO_INCREMENT değeri `hotels`
--
ALTER TABLE `hotels`
  MODIFY `hotel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
