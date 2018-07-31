-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 01, 2018 at 05:32 AM
-- Server version: 5.6.33
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo_jummum`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `CommentID` int(11) NOT NULL,
  `UserAccountID` int(11) NOT NULL,
  `Text` varchar(2000) NOT NULL,
  `Type` tinyint(4) NOT NULL,
  `ModifiedUser` varchar(50) NOT NULL,
  `ModifiedDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `country_id` int(11) NOT NULL,
  `code` char(2) NOT NULL COMMENT 'Two-letter country code (ISO 3166-1 alpha-2)',
  `name` varchar(64) NOT NULL COMMENT 'English country name',
  `full_name` varchar(128) NOT NULL COMMENT 'Full English country name',
  `iso3` char(3) NOT NULL COMMENT 'Three-letter country code (ISO 3166-1 alpha-3)',
  `number` smallint(3) UNSIGNED ZEROFILL NOT NULL COMMENT 'Three-digit country number (ISO 3166-1 numeric)',
  `continent_code` char(2) NOT NULL,
  `display_order` int(3) NOT NULL DEFAULT '900'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`country_id`, `code`, `name`, `full_name`, `iso3`, `number`, `continent_code`, `display_order`) VALUES
(1, 'AD', 'Andorra', 'Principality of Andorra', 'AND', 020, 'EU', 7),
(2, 'AE', 'United Arab Emirates', 'United Arab Emirates', 'ARE', 784, 'AS', 232),
(3, 'AF', 'Afghanistan', 'Islamic Republic of Afghanistan', 'AFG', 004, 'AS', 3),
(4, 'AG', 'Antigua and Barbuda', 'Antigua and Barbuda', 'ATG', 028, 'NA', 11),
(5, 'AI', 'Anguilla', 'Anguilla', 'AIA', 660, 'NA', 9),
(6, 'AL', 'Albania', 'Republic of Albania', 'ALB', 008, 'EU', 4),
(7, 'AM', 'Armenia', 'Republic of Armenia', 'ARM', 051, 'AS', 13),
(8, 'AN', 'Netherlands Antilles', 'Netherlands Antilles', 'ANT', 530, 'NA', 157),
(9, 'AO', 'Angola', 'Republic of Angola', 'AGO', 024, 'AF', 8),
(10, 'AQ', 'Antarctica', 'Antarctica (the territory South of 60 deg S)', 'ATA', 010, 'AN', 10),
(11, 'AR', 'Argentina', 'Argentine Republic', 'ARG', 032, 'SA', 12),
(12, 'AS', 'American Samoa', 'American Samoa', 'ASM', 016, 'OC', 6),
(13, 'AT', 'Austria', 'Republic of Austria', 'AUT', 040, 'EU', 16),
(14, 'AU', 'Australia', 'Commonwealth of Australia', 'AUS', 036, 'OC', 15),
(15, 'AW', 'Aruba', 'Aruba', 'ABW', 533, 'NA', 14),
(16, 'AX', 'Åland', 'Åland Islands', 'ALA', 248, 'EU', 246),
(17, 'AZ', 'Azerbaijan', 'Republic of Azerbaijan', 'AZE', 031, 'AS', 17),
(18, 'BA', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', 'BIH', 070, 'EU', 29),
(19, 'BB', 'Barbados', 'Barbados', 'BRB', 052, 'NA', 21),
(20, 'BD', 'Bangladesh', 'People\'s Republic of Bangladesh', 'BGD', 050, 'AS', 20),
(21, 'BE', 'Belgium', 'Kingdom of Belgium', 'BEL', 056, 'EU', 23),
(22, 'BF', 'Burkina Faso', 'Burkina Faso', 'BFA', 854, 'AF', 37),
(23, 'BG', 'Bulgaria', 'Republic of Bulgaria', 'BGR', 100, 'EU', 36),
(24, 'BH', 'Bahrain', 'Kingdom of Bahrain', 'BHR', 048, 'AS', 19),
(25, 'BI', 'Burundi', 'Republic of Burundi', 'BDI', 108, 'AF', 38),
(26, 'BJ', 'Benin', 'Republic of Benin', 'BEN', 204, 'AF', 25),
(27, 'BL', 'Saint Barthélemy', 'Saint Barthelemy', 'BLM', 652, 'NA', 185),
(28, 'BM', 'Bermuda', 'Bermuda', 'BMU', 060, 'NA', 26),
(29, 'BN', 'Brunei Darussalam', 'Brunei Darussalam', 'BRN', 096, 'AS', 35),
(30, 'BO', 'Bolivia', 'Republic of Bolivia', 'BOL', 068, 'SA', 28),
(31, 'BR', 'Brazil', 'Federative Republic of Brazil', 'BRA', 076, 'SA', 32),
(32, 'BS', 'Bahamas', 'Commonwealth of the Bahamas', 'BHS', 044, 'NA', 18),
(33, 'BT', 'Bhutan', 'Kingdom of Bhutan', 'BTN', 064, 'AS', 27),
(34, 'BV', 'Bouvet Island', 'Bouvet Island (Bouvetoya)', 'BVT', 074, 'AN', 31),
(35, 'BW', 'Botswana', 'Republic of Botswana', 'BWA', 072, 'AF', 30),
(36, 'BY', 'Belarus', 'Republic of Belarus', 'BLR', 112, 'EU', 22),
(37, 'BZ', 'Belize', 'Belize', 'BLZ', 084, 'NA', 24),
(38, 'CA', 'Canada', 'Canada', 'CAN', 124, 'NA', 2),
(39, 'CC', 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands', 'CCK', 166, 'AS', 48),
(40, 'CD', 'Congo (Kinshasa)', 'Democratic Republic of the Congo', 'COD', 180, 'AF', 51),
(41, 'CF', 'Central African Republic', 'Central African Republic', 'CAF', 140, 'AF', 43),
(42, 'CG', 'Congo (Brazzaville)', 'Republic of the Congo', 'COG', 178, 'AF', 52),
(43, 'CH', 'Switzerland', 'Swiss Confederation', 'CHE', 756, 'EU', 214),
(44, 'CI', 'Côte d\'Ivoire', 'Republic of Cote d\'Ivoire', 'CIV', 384, 'AF', 55),
(45, 'CK', 'Cook Islands', 'Cook Islands', 'COK', 184, 'OC', 53),
(46, 'CL', 'Chile', 'Republic of Chile', 'CHL', 152, 'SA', 45),
(47, 'CM', 'Cameroon', 'Republic of Cameroon', 'CMR', 120, 'AF', 40),
(48, 'CN', 'China', 'People\'s Republic of China', 'CHN', 156, 'AS', 46),
(49, 'CO', 'Colombia', 'Republic of Colombia', 'COL', 170, 'SA', 49),
(50, 'CR', 'Costa Rica', 'Republic of Costa Rica', 'CRI', 188, 'NA', 54),
(51, 'CU', 'Cuba', 'Republic of Cuba', 'CUB', 192, 'NA', 57),
(52, 'CV', 'Cape Verde', 'Republic of Cape Verde', 'CPV', 132, 'AF', 41),
(53, 'CX', 'Christmas Island', 'Christmas Island', 'CXR', 162, 'AS', 47),
(54, 'CY', 'Cyprus', 'Republic of Cyprus', 'CYP', 196, 'AS', 58),
(55, 'CZ', 'Czech Republic', 'Czech Republic', 'CZE', 203, 'EU', 59),
(56, 'DE', 'Germany', 'Federal Republic of Germany', 'DEU', 276, 'EU', 82),
(57, 'DJ', 'Djibouti', 'Republic of Djibouti', 'DJI', 262, 'AF', 61),
(58, 'DK', 'Denmark', 'Kingdom of Denmark', 'DNK', 208, 'EU', 60),
(59, 'DM', 'Dominica', 'Commonwealth of Dominica', 'DMA', 212, 'NA', 62),
(60, 'DO', 'Dominican Republic', 'Dominican Republic', 'DOM', 214, 'NA', 63),
(61, 'DZ', 'Algeria', 'People\'s Democratic Republic of Algeria', 'DZA', 012, 'AF', 5),
(62, 'EC', 'Ecuador', 'Republic of Ecuador', 'ECU', 218, 'SA', 64),
(63, 'EE', 'Estonia', 'Republic of Estonia', 'EST', 233, 'EU', 69),
(64, 'EG', 'Egypt', 'Arab Republic of Egypt', 'EGY', 818, 'AF', 65),
(65, 'EH', 'Western Sahara', 'Western Sahara', 'ESH', 732, 'AF', 242),
(66, 'ER', 'Eritrea', 'State of Eritrea', 'ERI', 232, 'AF', 68),
(67, 'ES', 'Spain', 'Kingdom of Spain', 'ESP', 724, 'EU', 207),
(68, 'ET', 'Ethiopia', 'Federal Democratic Republic of Ethiopia', 'ETH', 231, 'AF', 70),
(69, 'FI', 'Finland', 'Republic of Finland', 'FIN', 246, 'EU', 74),
(70, 'FJ', 'Fiji', 'Republic of the Fiji Islands', 'FJI', 242, 'OC', 73),
(71, 'FK', 'Falkland Islands', 'Falkland Islands (Malvinas)', 'FLK', 238, 'SA', 71),
(72, 'FM', 'Micronesia', 'Federated States of Micronesia', 'FSM', 583, 'OC', 144),
(73, 'FO', 'Faroe Islands', 'Faroe Islands', 'FRO', 234, 'EU', 72),
(74, 'FR', 'France', 'French Republic', 'FRA', 250, 'EU', 75),
(75, 'GA', 'Gabon', 'Gabonese Republic', 'GAB', 266, 'AF', 79),
(76, 'GB', 'United Kingdom', 'United Kingdom of Great Britain & Northern Ireland', 'GBR', 826, 'EU', 233),
(77, 'GD', 'Grenada', 'Grenada', 'GRD', 308, 'NA', 87),
(78, 'GE', 'Georgia', 'Georgia', 'GEO', 268, 'AS', 81),
(79, 'GF', 'French Guiana', 'French Guiana', 'GUF', 254, 'SA', 76),
(80, 'GG', 'Guernsey', 'Bailiwick of Guernsey', 'GGY', 831, 'EU', 91),
(81, 'GH', 'Ghana', 'Republic of Ghana', 'GHA', 288, 'AF', 83),
(82, 'GI', 'Gibraltar', 'Gibraltar', 'GIB', 292, 'EU', 84),
(83, 'GL', 'Greenland', 'Greenland', 'GRL', 304, 'NA', 86),
(84, 'GM', 'Gambia', 'Republic of the Gambia', 'GMB', 270, 'AF', 80),
(85, 'GN', 'Guinea', 'Republic of Guinea', 'GIN', 324, 'AF', 92),
(86, 'GP', 'Guadeloupe', 'Guadeloupe', 'GLP', 312, 'NA', 88),
(87, 'GQ', 'Equatorial Guinea', 'Republic of Equatorial Guinea', 'GNQ', 226, 'AF', 67),
(88, 'GR', 'Greece', 'Hellenic Republic Greece', 'GRC', 300, 'EU', 85),
(89, 'GS', 'South Georgia and South Sandwich Islands', 'South Georgia and the South Sandwich Islands', 'SGS', 239, 'AN', 206),
(90, 'GT', 'Guatemala', 'Republic of Guatemala', 'GTM', 320, 'NA', 90),
(91, 'GU', 'Guam', 'Guam', 'GUM', 316, 'OC', 89),
(92, 'GW', 'Guinea-Bissau', 'Republic of Guinea-Bissau', 'GNB', 624, 'AF', 93),
(93, 'GY', 'Guyana', 'Co-operative Republic of Guyana', 'GUY', 328, 'SA', 94),
(94, 'HK', 'Hong Kong', 'Hong Kong Special Administrative Region of China', 'HKG', 344, 'AS', 99),
(95, 'HM', 'Heard and McDonald Islands', 'Heard Island and McDonald Islands', 'HMD', 334, 'AN', 96),
(96, 'HN', 'Honduras', 'Republic of Honduras', 'HND', 340, 'NA', 98),
(97, 'HR', 'Croatia', 'Republic of Croatia', 'HRV', 191, 'EU', 56),
(98, 'HT', 'Haiti', 'Republic of Haiti', 'HTI', 332, 'NA', 95),
(99, 'HU', 'Hungary', 'Republic of Hungary', 'HUN', 348, 'EU', 100),
(100, 'ID', 'Indonesia', 'Republic of Indonesia', 'IDN', 360, 'AS', 103),
(101, 'IE', 'Ireland', 'Ireland', 'IRL', 372, 'EU', 106),
(102, 'IL', 'Israel', 'State of Israel', 'ISR', 376, 'AS', 108),
(103, 'IM', 'Isle of Man', 'Isle of Man', 'IMN', 833, 'EU', 107),
(104, 'IN', 'India', 'Republic of India', 'IND', 356, 'AS', 102),
(105, 'IO', 'British Indian Ocean Territory', 'British Indian Ocean Territory (Chagos Archipelago)', 'IOT', 086, 'AS', 33),
(106, 'IQ', 'Iraq', 'Republic of Iraq', 'IRQ', 368, 'AS', 105),
(107, 'IR', 'Iran', 'Islamic Republic of Iran', 'IRN', 364, 'AS', 104),
(108, 'IS', 'Iceland', 'Republic of Iceland', 'ISL', 352, 'EU', 101),
(109, 'IT', 'Italy', 'Italian Republic', 'ITA', 380, 'EU', 109),
(110, 'JE', 'Jersey', 'Bailiwick of Jersey', 'JEY', 832, 'EU', 112),
(111, 'JM', 'Jamaica', 'Jamaica', 'JAM', 388, 'NA', 110),
(112, 'JO', 'Jordan', 'Hashemite Kingdom of Jordan', 'JOR', 400, 'AS', 113),
(113, 'JP', 'Japan', 'Japan', 'JPN', 392, 'AS', 111),
(114, 'KE', 'Kenya', 'Republic of Kenya', 'KEN', 404, 'AF', 115),
(115, 'KG', 'Kyrgyzstan', 'Kyrgyz Republic', 'KGZ', 417, 'AS', 120),
(116, 'KH', 'Cambodia', 'Kingdom of Cambodia', 'KHM', 116, 'AS', 39),
(117, 'KI', 'Kiribati', 'Republic of Kiribati', 'KIR', 296, 'OC', 116),
(118, 'KM', 'Comoros', 'Union of the Comoros', 'COM', 174, 'AF', 50),
(119, 'KN', 'Saint Kitts and Nevis', 'Federation of Saint Kitts and Nevis', 'KNA', 659, 'NA', 187),
(120, 'KP', 'Korea, North', 'Democratic People\'s Republic of Korea', 'PRK', 408, 'AS', 117),
(121, 'KR', 'Korea, South', 'Republic of Korea', 'KOR', 410, 'AS', 118),
(122, 'KW', 'Kuwait', 'State of Kuwait', 'KWT', 414, 'AS', 119),
(123, 'KY', 'Cayman Islands', 'Cayman Islands', 'CYM', 136, 'NA', 42),
(124, 'KZ', 'Kazakhstan', 'Republic of Kazakhstan', 'KAZ', 398, 'AS', 114),
(125, 'LA', 'Laos', 'Lao People\'s Democratic Republic', 'LAO', 418, 'AS', 121),
(126, 'LB', 'Lebanon', 'Lebanese Republic', 'LBN', 422, 'AS', 123),
(127, 'LC', 'Saint Lucia', 'Saint Lucia', 'LCA', 662, 'NA', 188),
(128, 'LI', 'Liechtenstein', 'Principality of Liechtenstein', 'LIE', 438, 'EU', 127),
(129, 'LK', 'Sri Lanka', 'Democratic Socialist Republic of Sri Lanka', 'LKA', 144, 'AS', 208),
(130, 'LR', 'Liberia', 'Republic of Liberia', 'LBR', 430, 'AF', 125),
(131, 'LS', 'Lesotho', 'Kingdom of Lesotho', 'LSO', 426, 'AF', 124),
(132, 'LT', 'Lithuania', 'Republic of Lithuania', 'LTU', 440, 'EU', 128),
(133, 'LU', 'Luxembourg', 'Grand Duchy of Luxembourg', 'LUX', 442, 'EU', 129),
(134, 'LV', 'Latvia', 'Republic of Latvia', 'LVA', 428, 'EU', 122),
(135, 'LY', 'Libya', 'Libyan Arab Jamahiriya', 'LBY', 434, 'AF', 126),
(136, 'MA', 'Morocco', 'Kingdom of Morocco', 'MAR', 504, 'AF', 150),
(137, 'MC', 'Monaco', 'Principality of Monaco', 'MCO', 492, 'EU', 146),
(138, 'MD', 'Moldova', 'Republic of Moldova', 'MDA', 498, 'EU', 145),
(139, 'ME', 'Montenegro', 'Republic of Montenegro', 'MNE', 499, 'EU', 148),
(140, 'MF', 'Saint Martin (French part)', 'Saint Martin', 'MAF', 663, 'NA', 189),
(141, 'MG', 'Madagascar', 'Republic of Madagascar', 'MDG', 450, 'AF', 132),
(142, 'MH', 'Marshall Islands', 'Republic of the Marshall Islands', 'MHL', 584, 'OC', 138),
(143, 'MK', 'Macedonia', 'Republic of Macedonia', 'MKD', 807, 'EU', 131),
(144, 'ML', 'Mali', 'Republic of Mali', 'MLI', 466, 'AF', 136),
(145, 'MM', 'Myanmar', 'Union of Myanmar', 'MMR', 104, 'AS', 152),
(146, 'MN', 'Mongolia', 'Mongolia', 'MNG', 496, 'AS', 147),
(147, 'MO', 'Macau', 'Macao Special Administrative Region of China', 'MAC', 446, 'AS', 130),
(148, 'MP', 'Northern Mariana Islands', 'Commonwealth of the Northern Mariana Islands', 'MNP', 580, 'OC', 165),
(149, 'MQ', 'Martinique', 'Martinique', 'MTQ', 474, 'NA', 139),
(150, 'MR', 'Mauritania', 'Islamic Republic of Mauritania', 'MRT', 478, 'AF', 140),
(151, 'MS', 'Montserrat', 'Montserrat', 'MSR', 500, 'NA', 149),
(152, 'MT', 'Malta', 'Republic of Malta', 'MLT', 470, 'EU', 137),
(153, 'MU', 'Mauritius', 'Republic of Mauritius', 'MUS', 480, 'AF', 141),
(154, 'MV', 'Maldives', 'Republic of Maldives', 'MDV', 462, 'AS', 135),
(155, 'MW', 'Malawi', 'Republic of Malawi', 'MWI', 454, 'AF', 133),
(156, 'MX', 'Mexico', 'United Mexican States', 'MEX', 484, 'NA', 143),
(157, 'MY', 'Malaysia', 'Malaysia', 'MYS', 458, 'AS', 134),
(158, 'MZ', 'Mozambique', 'Republic of Mozambique', 'MOZ', 508, 'AF', 151),
(159, 'NA', 'Namibia', 'Republic of Namibia', 'NAM', 516, 'AF', 153),
(160, 'NC', 'New Caledonia', 'New Caledonia', 'NCL', 540, 'OC', 158),
(161, 'NE', 'Niger', 'Republic of Niger', 'NER', 562, 'AF', 161),
(162, 'NF', 'Norfolk Island', 'Norfolk Island', 'NFK', 574, 'OC', 164),
(163, 'NG', 'Nigeria', 'Federal Republic of Nigeria', 'NGA', 566, 'AF', 162),
(164, 'NI', 'Nicaragua', 'Republic of Nicaragua', 'NIC', 558, 'NA', 160),
(165, 'NL', 'Netherlands', 'Kingdom of the Netherlands', 'NLD', 528, 'EU', 156),
(166, 'NO', 'Norway', 'Kingdom of Norway', 'NOR', 578, 'EU', 166),
(167, 'NP', 'Nepal', 'State of Nepal', 'NPL', 524, 'AS', 155),
(168, 'NR', 'Nauru', 'Republic of Nauru', 'NRU', 520, 'OC', 154),
(169, 'NU', 'Niue', 'Niue', 'NIU', 570, 'OC', 163),
(170, 'NZ', 'New Zealand', 'New Zealand', 'NZL', 554, 'OC', 159),
(171, 'OM', 'Oman', 'Sultanate of Oman', 'OMN', 512, 'AS', 167),
(172, 'PA', 'Panama', 'Republic of Panama', 'PAN', 591, 'NA', 171),
(173, 'PE', 'Peru', 'Republic of Peru', 'PER', 604, 'SA', 174),
(174, 'PF', 'French Polynesia', 'French Polynesia', 'PYF', 258, 'OC', 77),
(175, 'PG', 'Papua New Guinea', 'Independent State of Papua New Guinea', 'PNG', 598, 'OC', 172),
(176, 'PH', 'Philippines', 'Republic of the Philippines', 'PHL', 608, 'AS', 175),
(177, 'PK', 'Pakistan', 'Islamic Republic of Pakistan', 'PAK', 586, 'AS', 168),
(178, 'PL', 'Poland', 'Republic of Poland', 'POL', 616, 'EU', 177),
(179, 'PM', 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', 'SPM', 666, 'NA', 190),
(180, 'PN', 'Pitcairn', 'Pitcairn Islands', 'PCN', 612, 'OC', 176),
(181, 'PR', 'Puerto Rico', 'Commonwealth of Puerto Rico', 'PRI', 630, 'NA', 179),
(182, 'PS', 'Palestine', 'Occupied Palestinian Territory', 'PSE', 275, 'AS', 170),
(183, 'PT', 'Portugal', 'Portuguese Republic', 'PRT', 620, 'EU', 178),
(184, 'PW', 'Palau', 'Republic of Palau', 'PLW', 585, 'OC', 169),
(185, 'PY', 'Paraguay', 'Republic of Paraguay', 'PRY', 600, 'SA', 173),
(186, 'QA', 'Qatar', 'State of Qatar', 'QAT', 634, 'AS', 180),
(187, 'RE', 'Reunion', 'Reunion', 'REU', 638, 'AF', 181),
(188, 'RO', 'Romania', 'Romania', 'ROU', 642, 'EU', 182),
(189, 'RS', 'Serbia', 'Republic of Serbia', 'SRB', 688, 'EU', 197),
(190, 'RU', 'Russian Federation', 'Russian Federation', 'RUS', 643, 'EU', 183),
(191, 'RW', 'Rwanda', 'Republic of Rwanda', 'RWA', 646, 'AF', 184),
(192, 'SA', 'Saudi Arabia', 'Kingdom of Saudi Arabia', 'SAU', 682, 'AS', 195),
(193, 'SB', 'Solomon Islands', 'Solomon Islands', 'SLB', 090, 'OC', 203),
(194, 'SC', 'Seychelles', 'Republic of Seychelles', 'SYC', 690, 'AF', 198),
(195, 'SD', 'Sudan', 'Republic of Sudan', 'SDN', 736, 'AF', 209),
(196, 'SE', 'Sweden', 'Kingdom of Sweden', 'SWE', 752, 'EU', 213),
(197, 'SG', 'Singapore', 'Republic of Singapore', 'SGP', 702, 'AS', 200),
(198, 'SH', 'Saint Helena', 'Saint Helena', 'SHN', 654, 'AF', 186),
(199, 'SI', 'Slovenia', 'Republic of Slovenia', 'SVN', 705, 'EU', 202),
(200, 'SJ', 'Svalbard and Jan Mayen Islands', 'Svalbard & Jan Mayen Islands', 'SJM', 744, 'EU', 211),
(201, 'SK', 'Slovakia', 'Slovakia (Slovak Republic)', 'SVK', 703, 'EU', 201),
(202, 'SL', 'Sierra Leone', 'Republic of Sierra Leone', 'SLE', 694, 'AF', 199),
(203, 'SM', 'San Marino', 'Republic of San Marino', 'SMR', 674, 'EU', 193),
(204, 'SN', 'Senegal', 'Republic of Senegal', 'SEN', 686, 'AF', 196),
(205, 'SO', 'Somalia', 'Somali Republic', 'SOM', 706, 'AF', 204),
(206, 'SR', 'Suriname', 'Republic of Suriname', 'SUR', 740, 'SA', 210),
(207, 'ST', 'Sao Tome and Principe', 'Democratic Republic of Sao Tome and Principe', 'STP', 678, 'AF', 194),
(208, 'SV', 'El Salvador', 'Republic of El Salvador', 'SLV', 222, 'NA', 66),
(209, 'SY', 'Syria', 'Syrian Arab Republic', 'SYR', 760, 'AS', 215),
(210, 'SZ', 'Swaziland', 'Kingdom of Swaziland', 'SWZ', 748, 'AF', 212),
(211, 'TC', 'Turks and Caicos Islands', 'Turks and Caicos Islands', 'TCA', 796, 'NA', 228),
(212, 'TD', 'Chad', 'Republic of Chad', 'TCD', 148, 'AF', 44),
(213, 'TF', 'French Southern Lands', 'French Southern Territories', 'ATF', 260, 'AN', 78),
(214, 'TG', 'Togo', 'Togolese Republic', 'TGO', 768, 'AF', 221),
(215, 'TH', 'Thailand', 'Kingdom of Thailand', 'THA', 764, 'AS', 219),
(216, 'TJ', 'Tajikistan', 'Republic of Tajikistan', 'TJK', 762, 'AS', 217),
(217, 'TK', 'Tokelau', 'Tokelau', 'TKL', 772, 'OC', 222),
(218, 'TL', 'Timor-Leste', 'Democratic Republic of Timor-Leste', 'TLS', 626, 'AS', 220),
(219, 'TM', 'Turkmenistan', 'Turkmenistan', 'TKM', 795, 'AS', 227),
(220, 'TN', 'Tunisia', 'Tunisian Republic', 'TUN', 788, 'AF', 225),
(221, 'TO', 'Tonga', 'Kingdom of Tonga', 'TON', 776, 'OC', 223),
(222, 'TR', 'Turkey', 'Republic of Turkey', 'TUR', 792, 'AS', 226),
(223, 'TT', 'Trinidad and Tobago', 'Republic of Trinidad and Tobago', 'TTO', 780, 'NA', 224),
(224, 'TV', 'Tuvalu', 'Tuvalu', 'TUV', 798, 'OC', 229),
(225, 'TW', 'Taiwan', 'Taiwan', 'TWN', 158, 'AS', 216),
(226, 'TZ', 'Tanzania', 'United Republic of Tanzania', 'TZA', 834, 'AF', 218),
(227, 'UA', 'Ukraine', 'Ukraine', 'UKR', 804, 'EU', 231),
(228, 'UG', 'Uganda', 'Republic of Uganda', 'UGA', 800, 'AF', 230),
(229, 'UM', 'United States Minor Outlying Islands', 'United States Minor Outlying Islands', 'UMI', 581, 'OC', 234),
(230, 'US', 'United States of America', 'United States of America', 'USA', 840, 'NA', 1),
(231, 'UY', 'Uruguay', 'Eastern Republic of Uruguay', 'URY', 858, 'SA', 236),
(232, 'UZ', 'Uzbekistan', 'Republic of Uzbekistan', 'UZB', 860, 'AS', 237),
(233, 'VA', 'Vatican City', 'Holy See (Vatican City State)', 'VAT', 336, 'EU', 97),
(234, 'VC', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', 'VCT', 670, 'NA', 191),
(235, 'VE', 'Venezuela', 'Bolivarian Republic of Venezuela', 'VEN', 862, 'SA', 239),
(236, 'VG', 'Virgin Islands, British', 'British Virgin Islands', 'VGB', 092, 'NA', 34),
(237, 'VI', 'Virgin Islands, U.S.', 'United States Virgin Islands', 'VIR', 850, 'NA', 235),
(238, 'VN', 'Vietnam', 'Socialist Republic of Vietnam', 'VNM', 704, 'AS', 240),
(239, 'VU', 'Vanuatu', 'Republic of Vanuatu', 'VUT', 548, 'OC', 238),
(240, 'WF', 'Wallis and Futuna Islands', 'Wallis and Futuna', 'WLF', 876, 'OC', 241),
(241, 'WS', 'Samoa', 'Independent State of Samoa', 'WSM', 882, 'OC', 192),
(242, 'YE', 'Yemen', 'Yemen', 'YEM', 887, 'AS', 243),
(243, 'YT', 'Mayotte', 'Mayotte', 'MYT', 175, 'AF', 142),
(244, 'ZA', 'South Africa', 'Republic of South Africa', 'ZAF', 710, 'AF', 205),
(245, 'ZM', 'Zambia', 'Republic of Zambia', 'ZMB', 894, 'AF', 244),
(246, 'ZW', 'Zimbabwe', 'Republic of Zimbabwe', 'ZWE', 716, 'AF', 245);

-- --------------------------------------------------------

--
-- Table structure for table `device`
--

CREATE TABLE `device` (
  `DeviceID` int(11) NOT NULL,
  `DeviceToken` varchar(100) NOT NULL,
  `Remark` varchar(100) NOT NULL,
  `ModifiedDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dispute`
--

CREATE TABLE `dispute` (
  `DisputeID` int(11) NOT NULL,
  `ReceiptID` int(11) NOT NULL,
  `DisputeReasonID` int(11) NOT NULL,
  `RefundAmount` float NOT NULL,
  `Detail` varchar(512) NOT NULL,
  `PhoneNo` varchar(100) NOT NULL,
  `Type` tinyint(4) NOT NULL COMMENT '1=cancel order,2=open dispute,3=shop cancel order',
  `ModifiedUser` varchar(50) NOT NULL,
  `ModifiedDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dispute`
--

INSERT INTO `dispute` (`DisputeID`, `ReceiptID`, `DisputeReasonID`, `RefundAmount`, `Detail`, `PhoneNo`, `Type`, `ModifiedUser`, `ModifiedDate`) VALUES
(1, 2, 10, 2, 'Test', '0823336666', 4, 'jinglejill@hotmail.com', '2018-07-28 08:25:51'),
(2, 3, 14, 0, '', '0851112222', 3, 'jinglejill@hotmail.com', '2018-07-28 08:26:12'),
(3, 12, 10, 2, 'Y', '085666333', 4, 'jinglejill@hotmail.com', '2018-07-30 07:39:04'),
(4, 47, 14, 0, '', '08522236333', 3, 'jinglejill@hotmail.com', '2018-07-30 07:40:28'),
(5, 46, 1, 2, 'Uuu', '0852223333', 2, 'jinglejill@hotmail.com', '2018-07-30 07:41:31'),
(6, 1, 1, 3, 'Oo', '0853339966', 2, 'jinglejill@hotmail.com', '2018-07-30 07:45:02'),
(7, 4, 1, 8, 'Uu', '0896663333', 2, 'jinglejill@hotmail.com', '2018-07-30 15:30:02'),
(8, 5, 1, 3, 'Jj', '813', 2, 'jinglejill@hotmail.com', '2018-07-30 15:52:54'),
(9, 6, 1, 3, 'Jj', '3333', 2, 'jinglejill@hotmail.com', '2018-07-30 15:54:11'),
(10, 7, 1, 33, 'Oe', '04', 2, 'jinglejill@hotmail.com', '2018-07-30 16:51:34'),
(11, 8, 1, 14, 'Gsj', '04818', 2, 'jinglejill@hotmail.com', '2018-07-30 16:53:52'),
(12, 14, 10, 23, 'Hh', '0854443333', 4, 'jinglejill@hotmail.com', '2018-07-30 17:40:09'),
(13, 18, 10, 30, 'Tt', '085', 4, 'jinglejill@hotmail.com', '2018-07-30 17:44:57'),
(14, 15, 10, 2, 'Op', '04', 4, 'jinglejill@hotmail.com', '2018-07-31 03:32:14');

-- --------------------------------------------------------

--
-- Table structure for table `disputereason`
--

CREATE TABLE `disputereason` (
  `DisputeReasonID` int(11) NOT NULL,
  `Text` varchar(100) NOT NULL,
  `Type` tinyint(4) NOT NULL,
  `Status` tinyint(4) NOT NULL,
  `OrderNo` int(11) NOT NULL,
  `ModifiedUser` varchar(50) NOT NULL,
  `ModifiedDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `disputereason`
--

INSERT INTO `disputereason` (`DisputeReasonID`, `Text`, `Type`, `Status`, `OrderNo`, `ModifiedUser`, `ModifiedDate`) VALUES
(1, 'อาหารมาช้า', 2, 1, 1, '', '0000-00-00 00:00:00'),
(2, 'อาหารทำมาผิด', 2, 1, 2, '', '0000-00-00 00:00:00'),
(3, 'ร้านไม่สามารถเสิร์ฟอาหารได้ ของหมด', 2, 1, 3, '', '0000-00-00 00:00:00'),
(4, 'อื่นๆ', 2, 1, 4, '', '0000-00-00 00:00:00'),
(5, 'เปลี่ยนใจ ไม่ต้องการสั่งรายการนี้แล้ว', 1, 1, 1, '', '0000-00-00 00:00:00'),
(6, 'รอนาน', 1, 1, 2, '', '0000-00-00 00:00:00'),
(7, 'ร้านค้าแจ้งว่าของหมด', 1, 1, 3, '', '0000-00-00 00:00:00'),
(8, 'ร้านค้าแจ้งว่าทำไม่ได้', 1, 1, 4, '', '0000-00-00 00:00:00'),
(9, 'อื่นๆ', 1, 1, 5, '', '0000-00-00 00:00:00'),
(10, 'อาหารมาช้า', 4, 1, 1, '', '0000-00-00 00:00:00'),
(11, 'อาหารทำมาผิด', 4, 1, 2, '', '0000-00-00 00:00:00'),
(12, 'ร้านไม่สามารถเสิร์ฟอาหารได้ ของหมด', 4, 1, 3, '', '0000-00-00 00:00:00'),
(13, 'อื่นๆ', 4, 1, 4, '', '0000-00-00 00:00:00'),
(14, 'เปลี่ยนใจ ไม่ต้องการสั่งรายการนี้แล้ว', 3, 1, 1, '', '0000-00-00 00:00:00'),
(15, 'รอนาน', 3, 1, 2, '', '0000-00-00 00:00:00'),
(16, 'ร้านค้าแจ้งว่าของหมด', 3, 1, 3, '', '0000-00-00 00:00:00'),
(17, 'ร้านค้าแจ้งว่าทำไม่ได้', 3, 1, 4, '', '0000-00-00 00:00:00'),
(18, 'อื่นๆ', 3, 1, 5, '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `forgotpassword`
--

CREATE TABLE `forgotpassword` (
  `ForgotPasswordID` int(11) NOT NULL,
  `CodeReset` varchar(200) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `RequestDate` datetime NOT NULL,
  `Status` tinyint(4) NOT NULL COMMENT '1=request,2=password changed',
  `ModifiedUser` varchar(50) NOT NULL,
  `ModifiedDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hotdeal`
--

CREATE TABLE `hotdeal` (
  `HotDealID` int(11) NOT NULL,
  `BranchID` int(11) NOT NULL,
  `StartDate` datetime NOT NULL,
  `EndDate` datetime NOT NULL,
  `Header` varchar(100) NOT NULL,
  `SubTitle` varchar(200) NOT NULL,
  `ImageUrl` varchar(250) NOT NULL,
  `TermsConditions` varchar(2000) NOT NULL,
  `OrderNo` int(11) NOT NULL,
  `Status` tinyint(4) NOT NULL,
  `ModifiedUser` varchar(50) NOT NULL,
  `ModifiedDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hotdeal`
--

INSERT INTO `hotdeal` (`HotDealID`, `BranchID`, `StartDate`, `EndDate`, `Header`, `SubTitle`, `ImageUrl`, `TermsConditions`, `OrderNo`, `Status`, `ModifiedUser`, `ModifiedDate`) VALUES
(1, 0, '2018-04-23 00:00:00', '2018-09-30 00:00:00', 'ส่วนลดจาก Dtac', '2561.04.01 - 04.30', 'promoBanner.jpg', 'สายการบินไทยสมายล์ ร่วมกับ บริษัท เคาน์เตอร์เซอร์วิส มอบคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท เมื่อซื้อบัตรโดยสารของสายการบินไทยสมายล์ผ่านเคาน์เตอร์เซอร์วิส *เงื่อนไขเป็นไปตามที่กำหนด เงื่อนไขรายการส่งเสริมการขาย – รับคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท ท้ายสลิปเมื่อซื้อบัตรโดยสารสายการบินไทยสมายล์ผ่าน เคาน์เตอร์ เซอร์วิส (ร้าน 7-Eleven) ระหว่างวันที่ 15 ธันวาคม 2559 ถึง วันที่ 5 มกราคม 2560 – 1 คูปองแลกซื้อ ต่อ 1 สลิป/transaction เท่านั้น ยอดเงินต่อ 1 สลิป/transaction จะต้องไม่เกิน 60,000 บาท – คูปองแลกซื้อนี้สามารถใช้ได้ระหว่างวันที่ 15 ธันวาคม 2559 ถึง 15 มกราคม 2560 เท่านั้น – คูปองแลกซื้อนี้ไม่สามารถนำมาแลกหรือเปลี่ยนเป็นเงินสดได้ กรณีที่ยอดซื้อต่ำกว่ามูลค่าของคูปองแลกซื้อ บริษัทฯ จะไม่คืนส่วนต่างของมูลค่าของคูปองแลกซื้อ – กรุณาเก็บเอกสารฉบับนี้ไว้กับท่านเพื่อเป็นหลักฐาน ในกรณีที่เอกสารชำรุดหรือเสียหาย ทางสายการบินจะไม่สามารถออกจดหมายฉบับใหม่ได้ และจะถือว่าท่านสละสิทธิ์ – ท่านสามารถศึกษารายละเอียดเพิ่มเติมได้ที่ www.counterservice.co.th หรือ เฟสบุ๊คของเคาน์เตอร์เซอร์วิส @Counterservice *บริษัท เคาน์เตอร์เซอร์วิส จำกัดขอสงวนสิทธิ์เปลี่ยนแปลงเงื่อนไขรายการส่งเสริมการขายนี้โดยไม่ต้องแจ้งล่วงหน้า ---คุณมีเวลาหลังจากกดรับสิทธิ์ 30 วินาที ---PromoCode นี้ใช้ได้ไม่จำกัด จนถึง 31 พฤษภาคม', 1, 1, '', '0000-00-00 00:00:00'),
(2, 1, '2018-04-23 00:00:00', '2018-09-30 00:00:00', 'Cheesy King Gyoza ห้วยขวาง', 'เพียง 498 บาท เมื่อสั่งเกี๊ยวซ่าหมูดับเบิ้ลชีส 24 ชิ้น คู่กับ เกี๊ยวซ่าไก่เผ็ด', 'promoThumbNail.jpg', 'สายการบินไทยสมายล์ ร่วมกับ บริษัท เคาน์เตอร์เซอร์วิส มอบคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท เมื่อซื้อบัตรโดยสารของสายการบินไทยสมายล์ผ่านเคาน์เตอร์เซอร์วิส *เงื่อนไขเป็นไปตามที่กำหนด เงื่อนไขรายการส่งเสริมการขาย – รับคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท ท้ายสลิปเมื่อซื้อบัตรโดยสารสายการบินไทยสมายล์ผ่าน เคาน์เตอร์ เซอร์วิส (ร้าน 7-Eleven) ระหว่างวันที่ 15 ธันวาคม 2559 ถึง วันที่ 5 มกราคม 2560 – 1 คูปองแลกซื้อ ต่อ 1 สลิป/transaction เท่านั้น ยอดเงินต่อ 1 สลิป/transaction จะต้องไม่เกิน 60,000 บาท – คูปองแลกซื้อนี้สามารถใช้ได้ระหว่างวันที่ 15 ธันวาคม 2559 ถึง 15 มกราคม 2560 เท่านั้น – คูปองแลกซื้อนี้ไม่สามารถนำมาแลกหรือเปลี่ยนเป็นเงินสดได้ กรณีที่ยอดซื้อต่ำกว่ามูลค่าของคูปองแลกซื้อ บริษัทฯ จะไม่คืนส่วนต่างของมูลค่าของคูปองแลกซื้อ – กรุณาเก็บเอกสารฉบับนี้ไว้กับท่านเพื่อเป็นหลักฐาน ในกรณีที่เอกสารชำรุดหรือเสียหาย ทางสายการบินจะไม่สามารถออกจดหมายฉบับใหม่ได้ และจะถือว่าท่านสละสิทธิ์ – ท่านสามารถศึกษารายละเอียดเพิ่มเติมได้ที่ www.counterservice.co.th หรือ เฟสบุ๊คของเคาน์เตอร์เซอร์วิส @Counterservice *บริษัท เคาน์เตอร์เซอร์วิส จำกัดขอสงวนสิทธิ์เปลี่ยนแปลงเงื่อนไขรายการส่งเสริมการขายนี้โดยไม่ต้องแจ้งล่วงหน้า ---คุณมีเวลาหลังจากกดรับสิทธิ์ 30 วินาที ---PromoCode นี้ใช้ได้ไม่จำกัด จนถึง 31 พฤษภาคม', 3, 1, '', '0000-00-00 00:00:00'),
(3, 0, '2018-04-23 00:00:00', '2018-09-30 00:00:00', 'สั่งอาหาร จ่ายผ่าน Credit card รับส่วนลด 75 บาท ใส่โค้ด CCFOOD75', 'เพียง 498 บาท เมื่อสั่งเกี๊ยวซ่าหมูดับเบิ้ลชีส 24 ชิ้น คู่กับ เกี๊ยวซ่าไก่เผ็ด', 'promoBanner.jpg', 'สายการบินไทยสมายล์ ร่วมกับ บริษัท เคาน์เตอร์เซอร์วิส มอบคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท เมื่อซื้อบัตรโดยสารของสายการบินไทยสมายล์ผ่านเคาน์เตอร์เซอร์วิส *เงื่อนไขเป็นไปตามที่กำหนด เงื่อนไขรายการส่งเสริมการขาย – รับคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท ท้ายสลิปเมื่อซื้อบัตรโดยสารสายการบินไทยสมายล์ผ่าน เคาน์เตอร์ เซอร์วิส (ร้าน 7-Eleven) ระหว่างวันที่ 15 ธันวาคม 2559 ถึง วันที่ 5 มกราคม 2560 – 1 คูปองแลกซื้อ ต่อ 1 สลิป/transaction เท่านั้น ยอดเงินต่อ 1 สลิป/transaction จะต้องไม่เกิน 60,000 บาท – คูปองแลกซื้อนี้สามารถใช้ได้ระหว่างวันที่ 15 ธันวาคม 2559 ถึง 15 มกราคม 2560 เท่านั้น – คูปองแลกซื้อนี้ไม่สามารถนำมาแลกหรือเปลี่ยนเป็นเงินสดได้ กรณีที่ยอดซื้อต่ำกว่ามูลค่าของคูปองแลกซื้อ บริษัทฯ จะไม่คืนส่วนต่างของมูลค่าของคูปองแลกซื้อ – กรุณาเก็บเอกสารฉบับนี้ไว้กับท่านเพื่อเป็นหลักฐาน ในกรณีที่เอกสารชำรุดหรือเสียหาย ทางสายการบินจะไม่สามารถออกจดหมายฉบับใหม่ได้ และจะถือว่าท่านสละสิทธิ์ – ท่านสามารถศึกษารายละเอียดเพิ่มเติมได้ที่ www.counterservice.co.th หรือ เฟสบุ๊คของเคาน์เตอร์เซอร์วิส @Counterservice *บริษัท เคาน์เตอร์เซอร์วิส จำกัดขอสงวนสิทธิ์เปลี่ยนแปลงเงื่อนไขรายการส่งเสริมการขายนี้โดยไม่ต้องแจ้งล่วงหน้า ---คุณมีเวลาหลังจากกดรับสิทธิ์ 30 วินาที ---PromoCode นี้ใช้ได้ไม่จำกัด จนถึง 31 พฤษภาคม', 2, 1, '', '0000-00-00 00:00:00'),
(4, 1, '2018-04-23 00:00:00', '2018-09-30 00:00:00', 'Crab and Claw (แคร็บ แอนด์ คลอว์) สยามพารากอน', 'เพียง 498 บาท เมื่อสั่งเกี๊ยวซ่าหมูดับเบิ้ลชีส 24 ชิ้น คู่กับ เกี๊ยวซ่าไก่เผ็ด --  เพียง 498 บาท เมื่อสั่งเกี๊ยวซ่าหมูดับเบิ้ลชีส 24 ชิ้น คู่กับ เกี๊ยวซ่าไก่เผ็ด --  เพียง 498 บาท เมื่อสั่งเกี๊ยวซ่าหม', 'promoThumbNail.jpg', 'สายการบินไทยสมายล์ ร่วมกับ บริษัท เคาน์เตอร์เซอร์วิส มอบคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท เมื่อซื้อบัตรโดยสารของสายการบินไทยสมายล์ผ่านเคาน์เตอร์เซอร์วิส *เงื่อนไขเป็นไปตามที่กำหนด เงื่อนไขรายการส่งเสริมการขาย – รับคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท ท้ายสลิปเมื่อซื้อบัตรโดยสารสายการบินไทยสมายล์ผ่าน เคาน์เตอร์ เซอร์วิส (ร้าน 7-Eleven) ระหว่างวันที่ 15 ธันวาคม 2559 ถึง วันที่ 5 มกราคม 2560 – 1 คูปองแลกซื้อ ต่อ 1 สลิป/transaction เท่านั้น ยอดเงินต่อ 1 สลิป/transaction จะต้องไม่เกิน 60,000 บาท – คูปองแลกซื้อนี้สามารถใช้ได้ระหว่างวันที่ 15 ธันวาคม 2559 ถึง 15 มกราคม 2560 เท่านั้น – คูปองแลกซื้อนี้ไม่สามารถนำมาแลกหรือเปลี่ยนเป็นเงินสดได้ กรณีที่ยอดซื้อต่ำกว่ามูลค่าของคูปองแลกซื้อ บริษัทฯ จะไม่คืนส่วนต่างของมูลค่าของคูปองแลกซื้อ – กรุณาเก็บเอกสารฉบับนี้ไว้กับท่านเพื่อเป็นหลักฐาน ในกรณีที่เอกสารชำรุดหรือเสียหาย ทางสายการบินจะไม่สามารถออกจดหมายฉบับใหม่ได้ และจะถือว่าท่านสละสิทธิ์ – ท่านสามารถศึกษารายละเอียดเพิ่มเติมได้ที่ www.counterservice.co.th หรือ เฟสบุ๊คของเคาน์เตอร์เซอร์วิส @Counterservice *บริษัท เคาน์เตอร์เซอร์วิส จำกัดขอสงวนสิทธิ์เปลี่ยนแปลงเงื่อนไขรายการส่งเสริมการขายนี้โดยไม่ต้องแจ้งล่วงหน้า ---คุณมีเวลาหลังจากกดรับสิทธิ์ 30 วินาที ---PromoCode นี้ใช้ได้ไม่จำกัด จนถึง 31 พฤษภาคม', 4, 1, '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `LogInID` int(11) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Status` tinyint(4) NOT NULL COMMENT '1=login,0=log out',
  `DeviceToken` varchar(64) NOT NULL,
  `ModifiedUser` varchar(100) NOT NULL,
  `ModifiedDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`LogInID`, `Username`, `Status`, `DeviceToken`, `ModifiedUser`, `ModifiedDate`) VALUES
(1, 'jinglejill@hotmail.com', 1, '31be96ad782611e865410524dcf9593044a448506b69fdf591bd818d59a77cc1', 'jinglejill@hotmail.com', '2018-07-27 17:24:40'),
(2, 'jinglejill@hotmail.com', 1, 'simulator', 'jinglejill@hotmail.com', '2018-07-28 06:13:14'),
(3, 'jinglejill@hotmail.com', 1, '', 'jinglejill@hotmail.com', '2018-07-28 07:40:29'),
(4, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-28 08:15:13'),
(5, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-28 08:15:46'),
(6, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-28 08:32:39'),
(7, 'jinglejill@hotmail.com', 1, 'simulator', 'jinglejill@hotmail.com', '2018-07-28 08:43:00'),
(8, 'jinglejill@hotmail.com', 1, 'simulator', 'jinglejill@hotmail.com', '2018-07-28 10:55:00'),
(9, 'jinglejill@hotmail.com', 1, 'simulator', 'jinglejill@hotmail.com', '2018-07-28 11:03:51'),
(10, 'jinglejill@hotmail.com', 1, 'simulator', 'jinglejill@hotmail.com', '2018-07-28 11:04:14'),
(11, 'jinglejill@hotmail.com', 1, 'simulator', 'jinglejill@hotmail.com', '2018-07-28 11:04:41'),
(12, 'jinglejill@hotmail.com', 1, 'simulator', 'jinglejill@hotmail.com', '2018-07-28 11:05:28'),
(13, 'jinglejill@hotmail.com', 1, 'simulator', 'jinglejill@hotmail.com', '2018-07-28 11:05:58'),
(14, 'jinglejill@hotmail.com', 1, 'simulator', 'jinglejill@hotmail.com', '2018-07-28 11:06:30'),
(15, 'jinglejill@hotmail.com', 1, 'simulator', 'jinglejill@hotmail.com', '2018-07-28 11:08:17'),
(16, 'jinglejill@hotmail.com', 1, 'simulator', 'jinglejill@hotmail.com', '2018-07-28 11:10:12'),
(17, 'jinglejill@hotmail.com', 1, 'simulator', 'jinglejill@hotmail.com', '2018-07-28 11:10:29'),
(18, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-28 11:11:31'),
(19, 'jinglejill@hotmail.com', 1, 'simulator', 'jinglejill@hotmail.com', '2018-07-28 11:13:53'),
(20, 'jinglejill@hotmail.com', 1, 'simulator', 'jinglejill@hotmail.com', '2018-07-28 11:17:50'),
(21, 'jinglejill@hotmail.com', 1, 'simulator', 'jinglejill@hotmail.com', '2018-07-28 11:19:04'),
(22, 'jinglejill@hotmail.com', 1, 'simulator', 'jinglejill@hotmail.com', '2018-07-28 11:22:27'),
(23, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-28 11:34:34'),
(24, 'jinglejill@hotmail.com', 1, 'simulator', 'jinglejill@hotmail.com', '2018-07-28 11:36:40'),
(25, 'jinglejill@hotmail.com', 1, 'simulator', 'jinglejill@hotmail.com', '2018-07-28 11:51:40'),
(26, 'jinglejill@hotmail.com', 1, 'simulator', 'jinglejill@hotmail.com', '2018-07-28 11:52:26'),
(27, 'jinglejill@hotmail.com', 1, 'simulator', 'jinglejill@hotmail.com', '2018-07-28 11:59:34'),
(28, 'jinglejill@hotmail.com', 1, 'simulator', 'jinglejill@hotmail.com', '2018-07-28 12:02:27'),
(29, 'jinglejill@hotmail.com', 1, 'simulator', 'jinglejill@hotmail.com', '2018-07-28 12:05:43'),
(30, 'jinglejill@hotmail.com', 1, 'simulator', 'jinglejill@hotmail.com', '2018-07-28 13:42:47'),
(31, 'jinglejill@hotmail.com', 1, 'simulator', 'jinglejill@hotmail.com', '2018-07-28 14:22:35'),
(32, 'jinglejill@hotmail.com', 1, 'simulator', 'jinglejill@hotmail.com', '2018-07-28 14:34:50'),
(33, 'jinglejill@hotmail.com', 1, 'simulator', 'jinglejill@hotmail.com', '2018-07-28 14:42:05'),
(34, 'jinglejill@hotmail.com', 1, 'simulator', 'jinglejill@hotmail.com', '2018-07-28 14:44:49'),
(35, 'jinglejill@hotmail.com', 1, 'simulator', 'jinglejill@hotmail.com', '2018-07-28 14:46:51'),
(36, 'jinglejill@hotmail.com', 1, 'simulator', 'jinglejill@hotmail.com', '2018-07-28 14:48:49'),
(37, 'jinglejill@hotmail.com', 1, 'simulator', 'jinglejill@hotmail.com', '2018-07-28 14:53:06'),
(38, 'jinglejill@hotmail.com', 1, 'simulator', 'jinglejill@hotmail.com', '2018-07-28 14:54:53'),
(39, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-28 19:05:57'),
(40, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-28 19:35:07'),
(41, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-28 19:48:44'),
(42, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 08:11:43'),
(43, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 08:23:03'),
(44, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 08:29:39'),
(45, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 08:32:44'),
(46, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 08:33:20'),
(47, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 08:35:58'),
(48, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 08:42:51'),
(49, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 08:52:58'),
(50, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 09:53:15'),
(51, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 10:02:25'),
(52, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 10:23:08'),
(53, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 10:25:56'),
(54, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 10:29:48'),
(55, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 10:32:37'),
(56, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 10:37:17'),
(57, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 10:48:45'),
(58, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 10:51:18'),
(59, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 10:53:39'),
(60, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 10:58:04'),
(61, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 10:59:08'),
(62, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 10:59:42'),
(63, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 11:06:57'),
(64, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 11:12:36'),
(65, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 11:43:20'),
(66, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 11:45:29'),
(67, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 11:47:49'),
(68, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 15:41:06'),
(69, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 15:45:51'),
(70, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 16:05:42'),
(71, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 16:34:11'),
(72, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 16:41:07'),
(73, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 16:52:24'),
(74, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 16:52:46'),
(75, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 16:55:25'),
(76, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 16:56:36'),
(77, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 16:58:17'),
(78, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 17:01:32'),
(79, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 17:03:03'),
(80, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 17:07:04'),
(81, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 17:13:30'),
(82, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 17:14:34'),
(83, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 17:15:08'),
(84, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 17:17:24'),
(85, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 17:21:26'),
(86, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 17:22:10'),
(87, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 17:24:19'),
(88, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 17:26:46'),
(89, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 18:07:32'),
(90, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 18:46:16'),
(91, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 20:08:15'),
(92, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 20:29:44'),
(93, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 20:30:58'),
(94, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-29 20:41:09'),
(95, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-30 06:08:52'),
(96, 'jinglejill@hotmail.com', 1, 'simulator', 'jinglejill@hotmail.com', '2018-07-30 06:26:56'),
(97, 'jinglejill@hotmail.com', 1, 'simulator', 'jinglejill@hotmail.com', '2018-07-30 06:36:12'),
(98, 'jinglejill@hotmail.com', 1, 'simulator', 'jinglejill@hotmail.com', '2018-07-30 06:40:16'),
(99, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-30 06:41:15'),
(100, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-30 06:42:49'),
(101, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-30 06:47:50'),
(102, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-30 07:29:06'),
(103, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-30 09:23:40'),
(104, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-30 15:29:39'),
(105, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-30 15:35:34'),
(106, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-30 15:52:28'),
(107, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-30 16:28:02'),
(108, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-30 16:51:09'),
(109, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-30 17:01:27'),
(110, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-31 03:31:49'),
(111, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-31 03:49:22'),
(112, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-31 03:50:45'),
(113, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-31 03:52:54'),
(114, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-31 03:57:46'),
(115, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-31 04:09:38'),
(116, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-31 07:41:54'),
(117, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-31 07:42:13'),
(118, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-31 15:52:34'),
(119, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-31 16:57:14'),
(120, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-31 17:14:44'),
(121, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-31 17:37:20'),
(122, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-31 18:57:40'),
(123, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-31 19:02:26'),
(124, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-31 19:04:50'),
(125, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-31 19:06:44'),
(126, 'jinglejill@hotmail.com', 1, '86cda2480d9647f2b51571c91869169cf8a3d5ab8660a975ef75b00a467064f8', 'jinglejill@hotmail.com', '2018-07-31 19:08:56'),
(127, 'Natee.rueng@gmail.com', 1, 'deb66c9d1e61c9bc7b49648784b8238da8a82e8cd20adac58dc0c75bf197e07d', 'Natee.rueng@gmail.com', '2018-08-01 05:07:03'),
(128, 'Natee.rueng@gmail.com', 1, 'deb66c9d1e61c9bc7b49648784b8238da8a82e8cd20adac58dc0c75bf197e07d', 'Natee.rueng@gmail.com', '2018-08-01 05:11:26'),
(129, 'Natee.rueng@gmail.com', 1, 'deb66c9d1e61c9bc7b49648784b8238da8a82e8cd20adac58dc0c75bf197e07d', 'Natee.rueng@gmail.com', '2018-08-01 05:17:26'),
(130, 'Natee.rueng@gmail.com', 1, 'deb66c9d1e61c9bc7b49648784b8238da8a82e8cd20adac58dc0c75bf197e07d', 'Natee.rueng@gmail.com', '2018-08-01 05:19:51');

-- --------------------------------------------------------

--
-- Table structure for table `ordernote`
--

CREATE TABLE `ordernote` (
  `OrderNoteID` int(11) NOT NULL,
  `OrderTakingID` int(11) NOT NULL,
  `NoteID` int(11) NOT NULL,
  `ModifiedUser` varchar(50) NOT NULL,
  `ModifiedDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ordertaking`
--

CREATE TABLE `ordertaking` (
  `OrderTakingID` int(11) NOT NULL,
  `BranchID` int(11) NOT NULL,
  `CustomerTableID` int(11) NOT NULL,
  `MenuID` int(11) NOT NULL,
  `Quantity` float NOT NULL,
  `SpecialPrice` float NOT NULL,
  `Price` float NOT NULL,
  `TakeAway` tinyint(4) NOT NULL,
  `NoteIDListInText` varchar(100) NOT NULL,
  `OrderNo` int(11) NOT NULL,
  `Status` tinyint(4) NOT NULL COMMENT '1=order taking,2=sent to kitchen,0=close table,3=cancel order',
  `ReceiptID` int(11) NOT NULL,
  `ModifiedUser` varchar(50) NOT NULL,
  `ModifiedDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ordertaking`
--

INSERT INTO `ordertaking` (`OrderTakingID`, `BranchID`, `CustomerTableID`, `MenuID`, `Quantity`, `SpecialPrice`, `Price`, `TakeAway`, `NoteIDListInText`, `OrderNo`, `Status`, `ReceiptID`, `ModifiedUser`, `ModifiedDate`) VALUES
(1, 1, 1, 99, 1, 250, 250, 0, '', 0, 0, 1, 'jinglejill@hotmail.com', '2018-07-27 17:25:27'),
(2, 1, 1, 100, 1, 230, 230, 0, '', 0, 0, 1, 'jinglejill@hotmail.com', '2018-07-27 17:25:27'),
(3, 1, 2, 97, 1, 99, 99, 0, '', 0, 0, 2, 'jinglejill@hotmail.com', '2018-07-27 17:25:50'),
(4, 1, 2, 97, 1, 99, 99, 0, '', 0, 0, 2, 'jinglejill@hotmail.com', '2018-07-27 17:25:50'),
(5, 1, 3, 96, 1, 330, 330, 0, '', 0, 0, 3, 'jinglejill@hotmail.com', '2018-07-27 17:26:13'),
(6, 1, 4, 101, 1, 185, 185, 0, '', 0, 0, 4, 'jinglejill@hotmail.com', '2018-07-27 17:26:34'),
(7, 1, 4, 101, 1, 185, 185, 0, '', 0, 0, 4, 'jinglejill@hotmail.com', '2018-07-27 17:26:34'),
(8, 1, 4, 101, 1, 185, 185, 0, '', 0, 0, 4, 'jinglejill@hotmail.com', '2018-07-27 17:26:34'),
(9, 1, 5, 1, 1, 79, 79, 0, '', 0, 0, 5, 'jinglejill@hotmail.com', '2018-07-27 17:26:58'),
(10, 1, 5, 11, 1, 79, 79, 0, '', 0, 0, 5, 'jinglejill@hotmail.com', '2018-07-27 17:26:58'),
(11, 1, 5, 16, 1, 89, 89, 0, '', 0, 0, 5, 'jinglejill@hotmail.com', '2018-07-27 17:26:58'),
(12, 1, 5, 21, 1, 99, 99, 0, '', 0, 0, 5, 'jinglejill@hotmail.com', '2018-07-27 17:26:58'),
(13, 1, 6, 1, 1, 79, 79, 0, '', 0, 0, 6, 'jinglejill@hotmail.com', '2018-07-27 17:27:27'),
(14, 1, 6, 41, 1, 49, 49, 0, '', 0, 0, 6, 'jinglejill@hotmail.com', '2018-07-27 17:27:27'),
(15, 1, 6, 53, 1, 45, 45, 0, '', 0, 0, 6, 'jinglejill@hotmail.com', '2018-07-27 17:27:27'),
(16, 1, 7, 97, 1, 99, 99, 0, '', 0, 0, 7, 'jinglejill@hotmail.com', '2018-07-27 17:27:48'),
(17, 1, 7, 97, 1, 99, 99, 0, '', 0, 0, 7, 'jinglejill@hotmail.com', '2018-07-27 17:27:48'),
(18, 1, 7, 97, 1, 99, 99, 0, '', 0, 0, 7, 'jinglejill@hotmail.com', '2018-07-27 17:27:48'),
(19, 1, 7, 97, 1, 99, 99, 0, '', 0, 0, 7, 'jinglejill@hotmail.com', '2018-07-27 17:27:48'),
(20, 1, 7, 97, 1, 99, 99, 0, '', 0, 0, 7, 'jinglejill@hotmail.com', '2018-07-27 17:27:48'),
(21, 1, 8, 42, 1, 85, 85, 0, '', 0, 0, 8, 'jinglejill@hotmail.com', '2018-07-27 17:28:17'),
(22, 1, 8, 73, 1, 115, 115, 0, '', 0, 0, 8, 'jinglejill@hotmail.com', '2018-07-27 17:28:17'),
(23, 1, 8, 53, 1, 45, 45, 0, '', 0, 0, 8, 'jinglejill@hotmail.com', '2018-07-27 17:28:17'),
(24, 1, 9, 26, 1, 109, 109, 0, '', 0, 0, 9, 'jinglejill@hotmail.com', '2018-07-27 17:28:43'),
(25, 1, 9, 26, 1, 109, 109, 0, '', 0, 0, 9, 'jinglejill@hotmail.com', '2018-07-27 17:28:43'),
(26, 1, 9, 26, 1, 109, 109, 0, '', 0, 0, 9, 'jinglejill@hotmail.com', '2018-07-27 17:28:43'),
(27, 1, 9, 26, 1, 109, 109, 0, '', 0, 0, 9, 'jinglejill@hotmail.com', '2018-07-27 17:28:43'),
(28, 1, 9, 6, 1, 79, 79, 0, '', 0, 0, 9, 'jinglejill@hotmail.com', '2018-07-27 17:28:43'),
(29, 1, 9, 21, 1, 99, 99, 0, '', 0, 0, 9, 'jinglejill@hotmail.com', '2018-07-27 17:28:43'),
(30, 1, 10, 41, 1, 49, 49, 0, '', 0, 0, 10, 'jinglejill@hotmail.com', '2018-07-27 17:29:49'),
(31, 1, 10, 42, 1, 85, 85, 0, '', 0, 0, 10, 'jinglejill@hotmail.com', '2018-07-27 17:29:49'),
(32, 1, 10, 41, 1, 49, 49, 0, '', 0, 0, 10, 'jinglejill@hotmail.com', '2018-07-27 17:29:49'),
(33, 1, 10, 42, 1, 85, 85, 0, '', 0, 0, 10, 'jinglejill@hotmail.com', '2018-07-27 17:29:49'),
(34, 1, 21, 50, 1, 65, 65, 0, '', 0, 0, 11, 'jinglejill@hotmail.com', '2018-07-27 17:30:26'),
(35, 1, 21, 50, 1, 65, 65, 0, '', 0, 0, 11, 'jinglejill@hotmail.com', '2018-07-27 17:30:26'),
(36, 1, 21, 50, 1, 65, 65, 0, '', 0, 0, 11, 'jinglejill@hotmail.com', '2018-07-27 17:30:26'),
(37, 1, 21, 50, 1, 65, 65, 0, '', 0, 0, 11, 'jinglejill@hotmail.com', '2018-07-27 17:30:26'),
(38, 1, 21, 50, 1, 65, 65, 0, '', 0, 0, 11, 'jinglejill@hotmail.com', '2018-07-27 17:30:26'),
(39, 1, 21, 50, 1, 65, 65, 0, '', 0, 0, 11, 'jinglejill@hotmail.com', '2018-07-27 17:30:26'),
(40, 1, 21, 50, 1, 65, 65, 0, '', 0, 0, 11, 'jinglejill@hotmail.com', '2018-07-27 17:30:26'),
(41, 1, 21, 50, 1, 65, 65, 0, '', 0, 0, 11, 'jinglejill@hotmail.com', '2018-07-27 17:30:26'),
(42, 1, 21, 50, 1, 65, 65, 0, '', 0, 0, 11, 'jinglejill@hotmail.com', '2018-07-27 17:30:26'),
(43, 1, 21, 50, 1, 65, 65, 0, '', 0, 0, 11, 'jinglejill@hotmail.com', '2018-07-27 17:30:26'),
(44, 1, 22, 18, 1, 89, 89, 0, '', 0, 0, 12, 'jinglejill@hotmail.com', '2018-07-27 17:30:52'),
(45, 1, 22, 18, 1, 89, 89, 0, '', 0, 0, 12, 'jinglejill@hotmail.com', '2018-07-27 17:30:52'),
(46, 1, 22, 18, 1, 89, 89, 0, '', 0, 0, 12, 'jinglejill@hotmail.com', '2018-07-27 17:30:52'),
(47, 1, 22, 18, 1, 89, 89, 0, '', 0, 0, 12, 'jinglejill@hotmail.com', '2018-07-27 17:30:52'),
(48, 1, 23, 14, 1, 99, 99, 0, '', 0, 0, 13, 'jinglejill@hotmail.com', '2018-07-27 17:31:23'),
(49, 1, 23, 14, 1, 99, 99, 0, '', 0, 0, 13, 'jinglejill@hotmail.com', '2018-07-27 17:31:23'),
(50, 1, 23, 14, 1, 99, 99, 0, '', 0, 0, 13, 'jinglejill@hotmail.com', '2018-07-27 17:31:23'),
(51, 1, 23, 14, 1, 99, 99, 0, '', 0, 0, 13, 'jinglejill@hotmail.com', '2018-07-27 17:31:23'),
(52, 1, 23, 14, 1, 99, 99, 0, '', 0, 0, 13, 'jinglejill@hotmail.com', '2018-07-27 17:31:23'),
(53, 1, 24, 101, 1, 185, 185, 0, '', 0, 0, 14, 'jinglejill@hotmail.com', '2018-07-27 17:31:48'),
(54, 1, 24, 101, 1, 185, 185, 0, '', 0, 0, 14, 'jinglejill@hotmail.com', '2018-07-27 17:31:48'),
(55, 1, 25, 100, 1, 230, 230, 0, '', 0, 0, 15, 'jinglejill@hotmail.com', '2018-07-27 17:32:43'),
(56, 1, 25, 100, 1, 230, 230, 0, '', 0, 0, 15, 'jinglejill@hotmail.com', '2018-07-27 17:32:43'),
(57, 1, 2, 99, 1, 250, 250, 0, '', 0, 0, 16, 'jinglejill@hotmail.com', '2018-07-28 06:13:48'),
(58, 1, 1, 97, 1, 99, 99, 0, '', 0, 0, 17, 'jinglejill@hotmail.com', '2018-07-28 07:44:00'),
(59, 1, 1, 96, 1, 330, 330, 0, '', 0, 0, 17, 'jinglejill@hotmail.com', '2018-07-28 07:44:00'),
(60, 1, 2, 100, 1, 230, 230, 0, '', 0, 0, 18, 'jinglejill@hotmail.com', '2018-07-28 07:59:46'),
(61, 1, 4, 101, 1, 185, 185, 0, '', 0, 0, 19, 'jinglejill@hotmail.com', '2018-07-28 08:05:24'),
(62, 1, 1, 99, 1, 250, 250, 0, '', 0, 0, 20, 'jinglejill@hotmail.com', '2018-07-28 08:16:32'),
(63, 1, 5, 97, 1, 99, 99, 0, '', 0, 0, 21, 'jinglejill@hotmail.com', '2018-07-28 08:23:50'),
(64, 1, 1, 99, 1, 250, 250, 0, '', 0, 0, 22, 'jinglejill@hotmail.com', '2018-07-29 16:34:25'),
(65, 1, 1, 99, 1, 250, 250, 0, '', 0, 0, 22, 'jinglejill@hotmail.com', '2018-07-29 16:34:25'),
(66, 1, 2, 100, 1, 230, 230, 0, '', 0, 0, 23, 'jinglejill@hotmail.com', '2018-07-29 16:34:38'),
(67, 1, 1, 97, 1, 99, 99, 0, '', 0, 0, 24, 'jinglejill@hotmail.com', '2018-07-29 16:34:55'),
(68, 1, 4, 96, 1, 330, 330, 0, '', 0, 0, 25, 'jinglejill@hotmail.com', '2018-07-29 16:35:08'),
(69, 1, 5, 101, 1, 185, 185, 0, '', 0, 0, 26, 'jinglejill@hotmail.com', '2018-07-29 16:35:21'),
(70, 1, 1, 99, 1, 250, 250, 0, '', 0, 0, 27, 'jinglejill@hotmail.com', '2018-07-29 16:58:27'),
(71, 1, 1, 99, 1, 250, 250, 0, '', 0, 0, 27, 'jinglejill@hotmail.com', '2018-07-29 16:58:27'),
(72, 1, 2, 100, 1, 230, 230, 0, '', 0, 0, 28, 'jinglejill@hotmail.com', '2018-07-29 16:58:42'),
(73, 1, 3, 97, 1, 99, 99, 0, '', 0, 0, 29, 'jinglejill@hotmail.com', '2018-07-29 16:58:56'),
(74, 1, 4, 96, 1, 330, 330, 0, '', 0, 0, 30, 'jinglejill@hotmail.com', '2018-07-29 16:59:09'),
(75, 1, 5, 101, 1, 185, 185, 0, '', 0, 0, 31, 'jinglejill@hotmail.com', '2018-07-29 16:59:22'),
(76, 1, 1, 99, 1, 250, 250, 0, '', 0, 0, 32, 'jinglejill@hotmail.com', '2018-07-29 17:04:24'),
(77, 1, 1, 99, 1, 250, 250, 0, '', 0, 0, 32, 'jinglejill@hotmail.com', '2018-07-29 17:04:24'),
(78, 1, 1, 99, 1, 250, 250, 0, '', 0, 0, 32, 'jinglejill@hotmail.com', '2018-07-29 17:04:24'),
(79, 1, 2, 100, 1, 230, 230, 0, '', 0, 0, 33, 'jinglejill@hotmail.com', '2018-07-29 17:04:37'),
(80, 1, 2, 100, 1, 230, 230, 0, '', 0, 0, 33, 'jinglejill@hotmail.com', '2018-07-29 17:04:37'),
(81, 1, 3, 97, 1, 99, 99, 0, '', 0, 0, 34, 'jinglejill@hotmail.com', '2018-07-29 17:04:49'),
(82, 1, 4, 96, 1, 330, 330, 0, '', 0, 0, 35, 'jinglejill@hotmail.com', '2018-07-29 17:05:01'),
(83, 1, 5, 101, 1, 185, 185, 0, '', 0, 0, 36, 'jinglejill@hotmail.com', '2018-07-29 17:05:14'),
(84, 1, 1, 99, 1, 250, 250, 0, '', 0, 0, 37, 'jinglejill@hotmail.com', '2018-07-29 18:46:57'),
(85, 1, 2, 100, 1, 230, 230, 0, '', 0, 0, 38, 'jinglejill@hotmail.com', '2018-07-29 18:47:11'),
(86, 1, 1, 101, 1, 185, 185, 0, '', 0, 0, 39, 'jinglejill@hotmail.com', '2018-07-29 20:08:37'),
(87, 1, 3, 100, 1, 230, 230, 0, '', 0, 0, 40, 'jinglejill@hotmail.com', '2018-07-29 20:08:52'),
(88, 1, 4, 101, 1, 185, 185, 0, '', 0, 0, 41, 'jinglejill@hotmail.com', '2018-07-29 20:09:07'),
(89, 1, 1, 99, 1, 250, 250, 0, '', 0, 0, 42, 'jinglejill@hotmail.com', '2018-07-29 20:41:29'),
(90, 1, 4, 96, 1, 330, 330, 0, '', 0, 0, 43, 'jinglejill@hotmail.com', '2018-07-29 20:41:43'),
(91, 1, 2, 99, 1, 250, 250, 0, '', 0, 0, 44, 'jinglejill@hotmail.com', '2018-07-30 06:09:09'),
(92, 1, 4, 97, 1, 99, 99, 0, '', 0, 0, 45, 'jinglejill@hotmail.com', '2018-07-30 06:09:29'),
(93, 1, 4, 101, 1, 185, 185, 0, '', 0, 0, 45, 'jinglejill@hotmail.com', '2018-07-30 06:09:29'),
(94, 1, 1, 99, 1, 250, 250, 0, '', 0, 0, 46, 'jinglejill@hotmail.com', '2018-07-30 07:23:47'),
(95, 1, 2, 100, 1, 230, 230, 0, '', 0, 0, 47, 'jinglejill@hotmail.com', '2018-07-30 07:24:04'),
(96, 1, 3, 97, 1, 99, 99, 0, '', 0, 0, 48, 'jinglejill@hotmail.com', '2018-07-30 07:24:19'),
(97, 1, 4, 101, 1, 185, 185, 0, '', 0, 0, 49, 'jinglejill@hotmail.com', '2018-07-30 07:24:33'),
(98, 1, 1, 100, 1, 230, 230, 0, '', 0, 0, 50, 'jinglejill@hotmail.com', '2018-07-31 16:57:40'),
(99, 1, 4, 99, 1, 250, 250, 0, '', 0, 0, 51, 'jinglejill@hotmail.com', '2018-07-31 16:58:28'),
(100, 1, 3, 96, 1, 330, 330, 0, '', 0, 0, 52, 'jinglejill@hotmail.com', '2018-07-31 17:00:17'),
(101, 1, 4, 101, 1, 185, 185, 0, '', 0, 0, 53, 'jinglejill@hotmail.com', '2018-07-31 17:02:51'),
(102, 1, 4, 97, 1, 99, 99, 0, '', 0, 0, 54, 'jinglejill@hotmail.com', '2018-07-31 17:04:15'),
(103, 1, 4, 100, 1, 230, 230, 0, '', 0, 0, 54, 'jinglejill@hotmail.com', '2018-07-31 17:04:15'),
(104, 1, 4, 96, 1, 330, 330, 0, '', 0, 0, 55, 'jinglejill@hotmail.com', '2018-07-31 17:06:58'),
(105, 1, 4, 97, 1, 99, 99, 0, '', 0, 0, 55, 'jinglejill@hotmail.com', '2018-07-31 17:06:58'),
(106, 1, 4, 100, 1, 230, 230, 0, '', 0, 0, 55, 'jinglejill@hotmail.com', '2018-07-31 17:06:58'),
(107, 1, 1, 99, 1, 250, 250, 0, '', 0, 0, 56, 'jinglejill@hotmail.com', '2018-07-31 17:07:59'),
(108, 1, 4, 99, 1, 250, 250, 0, '', 0, 0, 57, 'jinglejill@hotmail.com', '2018-07-31 17:37:43'),
(109, 1, 4, 99, 1, 250, 250, 0, '', 0, 0, 58, 'jinglejill@hotmail.com', '2018-07-31 18:57:51'),
(110, 1, 4, 100, 1, 230, 230, 0, '', 0, 0, 58, 'jinglejill@hotmail.com', '2018-07-31 18:57:51'),
(111, 1, 1, 97, 1, 99, 99, 0, '', 0, 0, 59, 'jinglejill@hotmail.com', '2018-07-31 18:59:15'),
(112, 1, 4, 97, 1, 99, 99, 0, '', 0, 0, 60, 'jinglejill@hotmail.com', '2018-07-31 19:00:56'),
(113, 1, 4, 101, 1, 185, 185, 0, '', 0, 0, 60, 'jinglejill@hotmail.com', '2018-07-31 19:00:56'),
(114, 2, 1, 99, 1, 250, 250, 0, '', 0, 0, 61, 'Natee.rueng@gmail.com', '2018-08-01 05:10:22'),
(115, 2, 1, 11, 1, 79, 79, 0, '', 0, 0, 61, 'Natee.rueng@gmail.com', '2018-08-01 05:10:22');

-- --------------------------------------------------------

--
-- Table structure for table `promocode`
--

CREATE TABLE `promocode` (
  `PromoCodeID` int(11) NOT NULL,
  `Code` varchar(20) NOT NULL,
  `RewardRedemptionID` int(11) NOT NULL,
  `OrderNo` int(11) NOT NULL,
  `Status` tinyint(4) NOT NULL COMMENT '0=new,1=redeem,2=used',
  `ModifiedUser` varchar(50) NOT NULL,
  `ModifiedDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `promocode`
--

INSERT INTO `promocode` (`PromoCodeID`, `Code`, `RewardRedemptionID`, `OrderNo`, `Status`, `ModifiedUser`, `ModifiedDate`) VALUES
(1, 'XJG7BQ', 1, 1, 1, 'jinglejill@hotmail.com', '2018-07-31 15:52:48'),
(2, 'NVR3XB', 1, 2, 1, 'jinglejill@hotmail.com', '2018-07-31 19:02:53'),
(3, 'JH94R8', 1, 3, 1, 'abcdefg@jummum.co', '2018-07-11 16:20:27'),
(4, 'VVFKKA', 1, 4, 1, 'abcdefg@jummum.co', '2018-07-11 16:22:43'),
(5, '4NW8DA', 1, 5, 0, '', '0000-00-00 00:00:00'),
(6, 'RT4YTJ', 1, 6, 0, '', '0000-00-00 00:00:00'),
(7, 'NXCR6T', 1, 7, 0, '', '0000-00-00 00:00:00'),
(8, 'JBJCJB', 1, 8, 0, '', '0000-00-00 00:00:00'),
(9, 'A77FMK', 1, 9, 0, '', '0000-00-00 00:00:00'),
(10, 'GDHAGJ', 1, 10, 0, '', '0000-00-00 00:00:00'),
(11, 'T7UJPP', 1, 11, 0, '', '0000-00-00 00:00:00'),
(12, 'VNTSUF', 1, 12, 0, '', '0000-00-00 00:00:00'),
(13, 'EFKVNR', 1, 13, 0, '', '0000-00-00 00:00:00'),
(14, '5T6AMT', 1, 14, 0, '', '0000-00-00 00:00:00'),
(15, 'FDVWQ9', 1, 15, 0, '', '0000-00-00 00:00:00'),
(16, '3TBKUV', 1, 16, 0, '', '0000-00-00 00:00:00'),
(17, 'JPHTPH', 1, 17, 0, '', '0000-00-00 00:00:00'),
(18, 'QKVK58', 1, 18, 0, '', '0000-00-00 00:00:00'),
(19, 'JVYYE3', 1, 19, 0, '', '0000-00-00 00:00:00'),
(20, '6Q8MUV', 1, 20, 0, '', '0000-00-00 00:00:00'),
(21, '858EYR', 1, 21, 0, '', '0000-00-00 00:00:00'),
(22, 'WNY8ES', 1, 22, 0, '', '0000-00-00 00:00:00'),
(23, '3TWWY9', 1, 23, 0, '', '0000-00-00 00:00:00'),
(24, 'CUK79P', 1, 24, 0, '', '0000-00-00 00:00:00'),
(25, 'TJAYWC', 1, 25, 0, '', '0000-00-00 00:00:00'),
(26, 'BJVDTA', 1, 26, 0, '', '0000-00-00 00:00:00'),
(27, 'AW7NVW', 1, 27, 0, '', '0000-00-00 00:00:00'),
(28, '43EDEC', 1, 28, 0, '', '0000-00-00 00:00:00'),
(29, 'XWXY5U', 1, 29, 0, '', '0000-00-00 00:00:00'),
(30, 'U8FNMS', 1, 30, 0, '', '0000-00-00 00:00:00'),
(31, 'JNJ4RG', 2, 1, 0, '', '0000-00-00 00:00:00'),
(32, 'QN5XM6', 2, 2, 0, '', '0000-00-00 00:00:00'),
(33, 'HMYK88', 2, 3, 0, '', '0000-00-00 00:00:00'),
(34, 'TEGQY4', 2, 4, 0, '', '0000-00-00 00:00:00'),
(35, 'MWNSHR', 2, 5, 0, '', '0000-00-00 00:00:00'),
(36, 'G3SCNY', 2, 6, 0, '', '0000-00-00 00:00:00'),
(37, 'AWSYR8', 2, 7, 0, '', '0000-00-00 00:00:00'),
(38, 'PHR53H', 2, 8, 0, '', '0000-00-00 00:00:00'),
(39, '56WK84', 2, 9, 0, '', '0000-00-00 00:00:00'),
(40, 'HMUN88', 2, 10, 0, '', '0000-00-00 00:00:00'),
(41, 'BBB4TV', 2, 11, 0, '', '0000-00-00 00:00:00'),
(42, '36P4GG', 2, 12, 0, '', '0000-00-00 00:00:00'),
(43, 'VFE6AA', 2, 13, 0, '', '0000-00-00 00:00:00'),
(44, 'FJDBG4', 2, 14, 0, '', '0000-00-00 00:00:00'),
(45, 'NMU7PH', 2, 15, 0, '', '0000-00-00 00:00:00'),
(46, 'RWSRN8', 2, 16, 0, '', '0000-00-00 00:00:00'),
(47, '7GNM3P', 2, 17, 0, '', '0000-00-00 00:00:00'),
(48, 'DFW6CE', 2, 18, 0, '', '0000-00-00 00:00:00'),
(49, 'GWBNGM', 2, 19, 0, '', '0000-00-00 00:00:00'),
(50, '3PR7WM', 2, 20, 0, '', '0000-00-00 00:00:00'),
(51, '6TQM78', 2, 21, 0, '', '0000-00-00 00:00:00'),
(52, '7XTPMY', 2, 22, 0, '', '0000-00-00 00:00:00'),
(53, 'B66TU7', 2, 23, 0, '', '0000-00-00 00:00:00'),
(54, 'CT96N4', 2, 24, 0, '', '0000-00-00 00:00:00'),
(55, 'GX88D3', 2, 25, 0, '', '0000-00-00 00:00:00'),
(56, 'XJFS59', 2, 26, 0, '', '0000-00-00 00:00:00'),
(57, 'BE8JD4', 2, 27, 0, '', '0000-00-00 00:00:00'),
(58, 'KX7XRA', 2, 28, 0, '', '0000-00-00 00:00:00'),
(59, 'YN7U8T', 2, 29, 0, '', '0000-00-00 00:00:00'),
(60, 'DYNEDN', 2, 30, 0, '', '0000-00-00 00:00:00'),
(61, 'K93HBB', 3, 1, 0, '', '0000-00-00 00:00:00'),
(62, 'JA9AMV', 3, 2, 0, '', '0000-00-00 00:00:00'),
(63, 'YDXXHP', 3, 3, 0, '', '0000-00-00 00:00:00'),
(64, 'TV7EAB', 3, 4, 0, '', '0000-00-00 00:00:00'),
(65, 'QHUJK7', 3, 5, 0, '', '0000-00-00 00:00:00'),
(66, 'PSHENH', 3, 6, 0, '', '0000-00-00 00:00:00'),
(67, 'HRMK98', 3, 7, 0, '', '0000-00-00 00:00:00'),
(68, 'GU8T6U', 3, 8, 0, '', '0000-00-00 00:00:00'),
(69, '7JVPRM', 3, 9, 0, '', '0000-00-00 00:00:00'),
(70, '7PJVKS', 3, 10, 0, '', '0000-00-00 00:00:00'),
(71, 'MMV4BK', 3, 11, 0, '', '0000-00-00 00:00:00'),
(72, 'XERYBJ', 3, 12, 0, '', '0000-00-00 00:00:00'),
(73, 'ESDC7P', 3, 13, 0, '', '0000-00-00 00:00:00'),
(74, '35E4BP', 3, 14, 0, '', '0000-00-00 00:00:00'),
(75, 'DB6NUA', 3, 15, 0, '', '0000-00-00 00:00:00'),
(76, 'PH88JU', 3, 16, 0, '', '0000-00-00 00:00:00'),
(77, '4SJWGY', 3, 17, 0, '', '0000-00-00 00:00:00'),
(78, 'DX6ND4', 3, 18, 0, '', '0000-00-00 00:00:00'),
(79, 'DX6PEK', 3, 19, 0, '', '0000-00-00 00:00:00'),
(80, 'XE6MC5', 3, 20, 0, '', '0000-00-00 00:00:00'),
(81, 'CDA39N', 3, 21, 0, '', '0000-00-00 00:00:00'),
(82, 'TNTXQX', 3, 22, 0, '', '0000-00-00 00:00:00'),
(83, 'U7P76C', 3, 23, 0, '', '0000-00-00 00:00:00'),
(84, 'NW5S5S', 3, 24, 0, '', '0000-00-00 00:00:00'),
(85, 'NGBJGW', 3, 25, 0, '', '0000-00-00 00:00:00'),
(86, 'VSMWC7', 3, 26, 0, '', '0000-00-00 00:00:00'),
(87, 'N5VJFY', 3, 27, 0, '', '0000-00-00 00:00:00'),
(88, 'EN5XYK', 3, 28, 0, '', '0000-00-00 00:00:00'),
(89, 'JTFYCV', 3, 29, 0, '', '0000-00-00 00:00:00'),
(90, 'P738NQ', 3, 30, 0, '', '0000-00-00 00:00:00'),
(91, '36NEKT', 4, 1, 0, '', '0000-00-00 00:00:00'),
(92, 'YBVFC6', 4, 2, 0, '', '0000-00-00 00:00:00'),
(93, 'A9WSDX', 4, 3, 0, '', '0000-00-00 00:00:00'),
(94, 'P9GEKX', 4, 4, 0, '', '0000-00-00 00:00:00'),
(95, 'E8F33K', 4, 5, 0, '', '0000-00-00 00:00:00'),
(96, 'UUQ3V9', 4, 6, 0, '', '0000-00-00 00:00:00'),
(97, 'D5XD3R', 4, 7, 0, '', '0000-00-00 00:00:00'),
(98, 'MEFWSH', 4, 8, 0, '', '0000-00-00 00:00:00'),
(99, 'SJ35DM', 4, 9, 0, '', '0000-00-00 00:00:00'),
(100, 'K7V8Y7', 4, 10, 0, '', '0000-00-00 00:00:00'),
(101, 'C34RYG', 4, 11, 0, '', '0000-00-00 00:00:00'),
(102, 'MEP3EU', 4, 12, 0, '', '0000-00-00 00:00:00'),
(103, 'SMSE7X', 4, 13, 0, '', '0000-00-00 00:00:00'),
(104, '3BMBDQ', 4, 14, 0, '', '0000-00-00 00:00:00'),
(105, 'FTGFYS', 4, 15, 0, '', '0000-00-00 00:00:00'),
(106, 'DG7CUK', 4, 16, 0, '', '0000-00-00 00:00:00'),
(107, 'WNQBUV', 4, 17, 0, '', '0000-00-00 00:00:00'),
(108, 'UEKWSW', 4, 18, 0, '', '0000-00-00 00:00:00'),
(109, 'G4P3JP', 4, 19, 0, '', '0000-00-00 00:00:00'),
(110, '9GGY3J', 4, 20, 0, '', '0000-00-00 00:00:00'),
(111, 'RDCTYT', 4, 21, 0, '', '0000-00-00 00:00:00'),
(112, 'NJ5JHK', 4, 22, 0, '', '0000-00-00 00:00:00'),
(113, 'GECA3G', 4, 23, 0, '', '0000-00-00 00:00:00'),
(114, 'SVC88C', 4, 24, 0, '', '0000-00-00 00:00:00'),
(115, 'VRF3RF', 4, 25, 0, '', '0000-00-00 00:00:00'),
(116, 'KT5VMH', 4, 26, 0, '', '0000-00-00 00:00:00'),
(117, 'KXHFAQ', 4, 27, 0, '', '0000-00-00 00:00:00'),
(118, 'Q5CRFM', 4, 28, 0, '', '0000-00-00 00:00:00'),
(119, '8GYRVD', 4, 29, 0, '', '0000-00-00 00:00:00'),
(120, 'KKGU7N', 4, 30, 0, '', '0000-00-00 00:00:00'),
(121, 'KPXH9Q', 5, 1, 0, '', '0000-00-00 00:00:00'),
(122, 'MSEWN6', 5, 2, 0, '', '0000-00-00 00:00:00'),
(123, 'JUTD9G', 5, 3, 0, '', '0000-00-00 00:00:00'),
(124, '6N7RKF', 5, 4, 0, '', '0000-00-00 00:00:00'),
(125, 'P3UFN5', 5, 5, 0, '', '0000-00-00 00:00:00'),
(126, 'EJNUYF', 5, 6, 0, '', '0000-00-00 00:00:00'),
(127, 'XQRBPW', 5, 7, 0, '', '0000-00-00 00:00:00'),
(128, 'NVA7EQ', 5, 8, 0, '', '0000-00-00 00:00:00'),
(129, 'E6XKXP', 5, 9, 0, '', '0000-00-00 00:00:00'),
(130, '74XCUW', 5, 10, 0, '', '0000-00-00 00:00:00'),
(131, 'HH6CQG', 5, 11, 0, '', '0000-00-00 00:00:00'),
(132, 'B6C3TW', 5, 12, 0, '', '0000-00-00 00:00:00'),
(133, 'QEMDH5', 5, 13, 0, '', '0000-00-00 00:00:00'),
(134, 'EQ6S5F', 5, 14, 0, '', '0000-00-00 00:00:00'),
(135, 'KETGFR', 5, 15, 0, '', '0000-00-00 00:00:00'),
(136, 'BJ8TJ8', 5, 16, 0, '', '0000-00-00 00:00:00'),
(137, 'DDGXD7', 5, 17, 0, '', '0000-00-00 00:00:00'),
(138, 'MVHH6K', 5, 18, 0, '', '0000-00-00 00:00:00'),
(139, 'C6NEQA', 5, 19, 0, '', '0000-00-00 00:00:00'),
(140, 'HMN6X5', 5, 20, 0, '', '0000-00-00 00:00:00'),
(141, 'R9Q6YW', 5, 21, 0, '', '0000-00-00 00:00:00'),
(142, 'QUAK4V', 5, 22, 0, '', '0000-00-00 00:00:00'),
(143, '7J4EQ3', 5, 23, 0, '', '0000-00-00 00:00:00'),
(144, '6V8W6B', 5, 24, 0, '', '0000-00-00 00:00:00'),
(145, 'XD9R8F', 5, 25, 0, '', '0000-00-00 00:00:00'),
(146, 'GEYRVH', 5, 26, 0, '', '0000-00-00 00:00:00'),
(147, 'HCGEGV', 5, 27, 0, '', '0000-00-00 00:00:00'),
(148, 'Q3WPBS', 5, 28, 0, '', '0000-00-00 00:00:00'),
(149, '6D4V3W', 5, 29, 0, '', '0000-00-00 00:00:00'),
(150, 'FA4UBR', 5, 30, 0, '', '0000-00-00 00:00:00'),
(151, 'JRDPDS', 6, 1, 0, '', '0000-00-00 00:00:00'),
(152, 'RFT786', 6, 2, 0, '', '0000-00-00 00:00:00'),
(153, 'BCH899', 6, 3, 0, '', '0000-00-00 00:00:00'),
(154, 'RHGH4V', 6, 4, 0, '', '0000-00-00 00:00:00'),
(155, 'XFYPRF', 6, 5, 0, '', '0000-00-00 00:00:00'),
(156, 'JP5PTG', 6, 6, 0, '', '0000-00-00 00:00:00'),
(157, 'DFFR7W', 6, 7, 0, '', '0000-00-00 00:00:00'),
(158, '5H5M64', 6, 8, 0, '', '0000-00-00 00:00:00'),
(159, 'VFE5JQ', 6, 9, 0, '', '0000-00-00 00:00:00'),
(160, 'GQD8KH', 6, 10, 0, '', '0000-00-00 00:00:00'),
(161, 'EHP85M', 6, 11, 0, '', '0000-00-00 00:00:00'),
(162, 'NT4VSF', 6, 12, 0, '', '0000-00-00 00:00:00'),
(163, 'NQGPTE', 6, 13, 0, '', '0000-00-00 00:00:00'),
(164, 'BFUDBM', 6, 14, 0, '', '0000-00-00 00:00:00'),
(165, '3CWMXG', 6, 15, 0, '', '0000-00-00 00:00:00'),
(166, 'M5SDVA', 6, 16, 0, '', '0000-00-00 00:00:00'),
(167, 'JRFB7Y', 6, 17, 0, '', '0000-00-00 00:00:00'),
(168, 'VM5Y9T', 6, 18, 0, '', '0000-00-00 00:00:00'),
(169, '3GH3X7', 6, 19, 0, '', '0000-00-00 00:00:00'),
(170, '8V3FRN', 6, 20, 0, '', '0000-00-00 00:00:00'),
(171, 'M6QG5Q', 6, 21, 0, '', '0000-00-00 00:00:00'),
(172, '9RBPMY', 6, 22, 0, '', '0000-00-00 00:00:00'),
(173, '943658', 6, 23, 0, '', '0000-00-00 00:00:00'),
(174, '4KDU5V', 6, 24, 0, '', '0000-00-00 00:00:00'),
(175, 'M955NW', 6, 25, 0, '', '0000-00-00 00:00:00'),
(176, 'AMBCJH', 6, 26, 0, '', '0000-00-00 00:00:00'),
(177, '3D4HSG', 6, 27, 0, '', '0000-00-00 00:00:00'),
(178, '3HKXMN', 6, 28, 0, '', '0000-00-00 00:00:00'),
(179, 'SAJNSJ', 6, 29, 0, '', '0000-00-00 00:00:00'),
(180, 'TSWS8U', 6, 30, 0, '', '0000-00-00 00:00:00'),
(181, 'QRT576', 7, 1, 0, '', '0000-00-00 00:00:00'),
(182, 'GG3TFG', 7, 2, 0, '', '0000-00-00 00:00:00'),
(183, '5JRXMT', 7, 3, 0, '', '0000-00-00 00:00:00'),
(184, 'Q3GETX', 7, 4, 0, '', '0000-00-00 00:00:00'),
(185, '9WTE9U', 7, 5, 0, '', '0000-00-00 00:00:00'),
(186, 'QKHWXN', 7, 6, 0, '', '0000-00-00 00:00:00'),
(187, '43BPVV', 7, 7, 0, '', '0000-00-00 00:00:00'),
(188, 'Y5PXM9', 7, 8, 0, '', '0000-00-00 00:00:00'),
(189, 'PGHD3W', 7, 9, 0, '', '0000-00-00 00:00:00'),
(190, 'N6ENSU', 7, 10, 0, '', '0000-00-00 00:00:00'),
(191, 'TPUUX9', 7, 11, 0, '', '0000-00-00 00:00:00'),
(192, '6KQ56R', 7, 12, 0, '', '0000-00-00 00:00:00'),
(193, '3W76WH', 7, 13, 0, '', '0000-00-00 00:00:00'),
(194, '4RG49N', 7, 14, 0, '', '0000-00-00 00:00:00'),
(195, 'H7DVEF', 7, 15, 0, '', '0000-00-00 00:00:00'),
(196, '49GPP9', 7, 16, 0, '', '0000-00-00 00:00:00'),
(197, '44KVCD', 7, 17, 0, '', '0000-00-00 00:00:00'),
(198, 'UYFHGC', 7, 18, 0, '', '0000-00-00 00:00:00'),
(199, 'WBFXTT', 7, 19, 0, '', '0000-00-00 00:00:00'),
(200, 'ENBNRH', 7, 20, 0, '', '0000-00-00 00:00:00'),
(201, 'ATMTYB', 7, 21, 0, '', '0000-00-00 00:00:00'),
(202, 'D97EC9', 7, 22, 0, '', '0000-00-00 00:00:00'),
(203, 'B4UNXU', 7, 23, 0, '', '0000-00-00 00:00:00'),
(204, 'DXJ3HB', 7, 24, 0, '', '0000-00-00 00:00:00'),
(205, 'J3G94X', 7, 25, 0, '', '0000-00-00 00:00:00'),
(206, 'U7JTNF', 7, 26, 0, '', '0000-00-00 00:00:00'),
(207, '39AQGU', 7, 27, 0, '', '0000-00-00 00:00:00'),
(208, 'N674KS', 7, 28, 0, '', '0000-00-00 00:00:00'),
(209, 'APAF8F', 7, 29, 0, '', '0000-00-00 00:00:00'),
(210, 'NRBQBA', 7, 30, 0, '', '0000-00-00 00:00:00'),
(211, 'AEG6GR', 8, 1, 0, '', '0000-00-00 00:00:00'),
(212, 'G75GX6', 8, 2, 0, '', '0000-00-00 00:00:00'),
(213, 'Y8PAER', 8, 3, 0, '', '0000-00-00 00:00:00'),
(214, '449VBQ', 8, 4, 0, '', '0000-00-00 00:00:00'),
(215, 'RAFRKK', 8, 5, 0, '', '0000-00-00 00:00:00'),
(216, 'D8YMHF', 8, 6, 0, '', '0000-00-00 00:00:00'),
(217, 'XJCR39', 8, 7, 0, '', '0000-00-00 00:00:00'),
(218, 'PX64DV', 8, 8, 0, '', '0000-00-00 00:00:00'),
(219, 'TM3NBQ', 8, 9, 0, '', '0000-00-00 00:00:00'),
(220, 'WN5AQH', 8, 10, 0, '', '0000-00-00 00:00:00'),
(221, '5RDHRT', 8, 11, 0, '', '0000-00-00 00:00:00'),
(222, 'R6UAMX', 8, 12, 0, '', '0000-00-00 00:00:00'),
(223, 'ETXMQ8', 8, 13, 0, '', '0000-00-00 00:00:00'),
(224, 'H6U493', 8, 14, 0, '', '0000-00-00 00:00:00'),
(225, '8R5RAF', 8, 15, 0, '', '0000-00-00 00:00:00'),
(226, 'GRNMSQ', 8, 16, 0, '', '0000-00-00 00:00:00'),
(227, 'G93MUM', 8, 17, 0, '', '0000-00-00 00:00:00'),
(228, '6Y5TJ7', 8, 18, 0, '', '0000-00-00 00:00:00'),
(229, 'EWY38H', 8, 19, 0, '', '0000-00-00 00:00:00'),
(230, 'DS6CQH', 8, 20, 0, '', '0000-00-00 00:00:00'),
(231, 'Y3KT5H', 8, 21, 0, '', '0000-00-00 00:00:00'),
(232, 'BADWD4', 8, 22, 0, '', '0000-00-00 00:00:00'),
(233, 'T5HVH6', 8, 23, 0, '', '0000-00-00 00:00:00'),
(234, 'QBWNYC', 8, 24, 0, '', '0000-00-00 00:00:00'),
(235, '3B5TFR', 8, 25, 0, '', '0000-00-00 00:00:00'),
(236, '6VE7TY', 8, 26, 0, '', '0000-00-00 00:00:00'),
(237, '6MUPR4', 8, 27, 0, '', '0000-00-00 00:00:00'),
(238, '6TEPDA', 8, 28, 0, '', '0000-00-00 00:00:00'),
(239, 'VPVDUP', 8, 29, 0, '', '0000-00-00 00:00:00'),
(240, 'TBH6CA', 8, 30, 0, '', '0000-00-00 00:00:00'),
(241, '8P48UC', 9, 1, 0, '', '0000-00-00 00:00:00'),
(242, 'GFXWW7', 9, 2, 0, '', '0000-00-00 00:00:00'),
(243, 'K5SGH4', 9, 3, 0, '', '0000-00-00 00:00:00'),
(244, 'PTTQPD', 9, 4, 0, '', '0000-00-00 00:00:00'),
(245, 'W4F999', 9, 5, 0, '', '0000-00-00 00:00:00'),
(246, 'WTE4PR', 9, 6, 0, '', '0000-00-00 00:00:00'),
(247, 'UB8VQY', 9, 7, 0, '', '0000-00-00 00:00:00'),
(248, 'A68RUS', 9, 8, 0, '', '0000-00-00 00:00:00'),
(249, 'A5GKYK', 9, 9, 0, '', '0000-00-00 00:00:00'),
(250, '84S63F', 9, 10, 0, '', '0000-00-00 00:00:00'),
(251, 'BS7PRW', 9, 11, 0, '', '0000-00-00 00:00:00'),
(252, 'WGFWAW', 9, 12, 0, '', '0000-00-00 00:00:00'),
(253, 'TTVN6F', 9, 13, 0, '', '0000-00-00 00:00:00'),
(254, 'NBMQBC', 9, 14, 0, '', '0000-00-00 00:00:00'),
(255, 'CPCXW8', 9, 15, 0, '', '0000-00-00 00:00:00'),
(256, 'TRVMCK', 9, 16, 0, '', '0000-00-00 00:00:00'),
(257, 'RBYXUW', 9, 17, 0, '', '0000-00-00 00:00:00'),
(258, 'B65XC3', 9, 18, 0, '', '0000-00-00 00:00:00'),
(259, 'PNQB4J', 9, 19, 0, '', '0000-00-00 00:00:00'),
(260, 'QGSGFB', 9, 20, 0, '', '0000-00-00 00:00:00'),
(261, 'AVFJ4T', 9, 21, 0, '', '0000-00-00 00:00:00'),
(262, 'G7YUHP', 9, 22, 0, '', '0000-00-00 00:00:00'),
(263, '65EMN7', 9, 23, 0, '', '0000-00-00 00:00:00'),
(264, '9SJ5JH', 9, 24, 0, '', '0000-00-00 00:00:00'),
(265, 'KWMXV4', 9, 25, 0, '', '0000-00-00 00:00:00'),
(266, 'TFH7BP', 9, 26, 0, '', '0000-00-00 00:00:00'),
(267, 'SQFY3P', 9, 27, 0, '', '0000-00-00 00:00:00'),
(268, 'K4DX4R', 9, 28, 0, '', '0000-00-00 00:00:00'),
(269, 'QYT9GH', 9, 29, 0, '', '0000-00-00 00:00:00'),
(270, 'SW8NFJ', 9, 30, 0, '', '0000-00-00 00:00:00'),
(271, 'H3E4GS', 10, 1, 0, '', '0000-00-00 00:00:00'),
(272, 'VUYBHT', 10, 2, 0, '', '0000-00-00 00:00:00'),
(273, '8DVB9U', 10, 3, 0, '', '0000-00-00 00:00:00'),
(274, 'UVBD79', 10, 4, 0, '', '0000-00-00 00:00:00'),
(275, 'BGNAEA', 10, 5, 0, '', '0000-00-00 00:00:00'),
(276, 'YG4CP5', 10, 6, 0, '', '0000-00-00 00:00:00'),
(277, 'YCHBR6', 10, 7, 0, '', '0000-00-00 00:00:00'),
(278, 'SW5YUB', 10, 8, 0, '', '0000-00-00 00:00:00'),
(279, 'FV3SMJ', 10, 9, 0, '', '0000-00-00 00:00:00'),
(280, 'F8J3VU', 10, 10, 0, '', '0000-00-00 00:00:00'),
(281, '3Q8975', 10, 11, 0, '', '0000-00-00 00:00:00'),
(282, 'RRHUFV', 10, 12, 0, '', '0000-00-00 00:00:00'),
(283, 'RU7CDM', 10, 13, 0, '', '0000-00-00 00:00:00'),
(284, 'M9V6KR', 10, 14, 0, '', '0000-00-00 00:00:00'),
(285, 'GVSWQX', 10, 15, 0, '', '0000-00-00 00:00:00'),
(286, 'GKMMX5', 10, 16, 0, '', '0000-00-00 00:00:00'),
(287, 'GQPVXT', 10, 17, 0, '', '0000-00-00 00:00:00'),
(288, 'K8CDV3', 10, 18, 0, '', '0000-00-00 00:00:00'),
(289, 'MAPAFH', 10, 19, 0, '', '0000-00-00 00:00:00'),
(290, 'PUARSE', 10, 20, 0, '', '0000-00-00 00:00:00'),
(291, 'VNK3DA', 10, 21, 0, '', '0000-00-00 00:00:00'),
(292, 'EXYWWV', 10, 22, 0, '', '0000-00-00 00:00:00'),
(293, 'MA87X7', 10, 23, 0, '', '0000-00-00 00:00:00'),
(294, 'Y7U3QP', 10, 24, 0, '', '0000-00-00 00:00:00'),
(295, '7QRHT4', 10, 25, 0, '', '0000-00-00 00:00:00'),
(296, 'YN5PM5', 10, 26, 0, '', '0000-00-00 00:00:00'),
(297, 'CXBP4D', 10, 27, 0, '', '0000-00-00 00:00:00'),
(298, 'AQAGS3', 10, 28, 0, '', '0000-00-00 00:00:00'),
(299, 'T7GRSC', 10, 29, 0, '', '0000-00-00 00:00:00'),
(300, 'HVM5FW', 10, 30, 0, '', '0000-00-00 00:00:00'),
(301, 'KPAFHG', 11, 1, 0, '', '0000-00-00 00:00:00'),
(302, 'MY6PFK', 11, 2, 0, '', '0000-00-00 00:00:00'),
(303, 'GXCUSG', 11, 3, 0, '', '0000-00-00 00:00:00'),
(304, 'CREEND', 11, 4, 0, '', '0000-00-00 00:00:00'),
(305, 'M5GDT5', 11, 5, 0, '', '0000-00-00 00:00:00'),
(306, 'PUB6SY', 11, 6, 0, '', '0000-00-00 00:00:00'),
(307, 'EFJ37F', 11, 7, 0, '', '0000-00-00 00:00:00'),
(308, 'VT6GC6', 11, 8, 0, '', '0000-00-00 00:00:00'),
(309, 'NQR49K', 11, 9, 0, '', '0000-00-00 00:00:00'),
(310, '98WYRA', 11, 10, 0, '', '0000-00-00 00:00:00'),
(311, 'JNTQ3Y', 11, 11, 0, '', '0000-00-00 00:00:00'),
(312, 'FFUKKN', 11, 12, 0, '', '0000-00-00 00:00:00'),
(313, '5SSRDM', 11, 13, 0, '', '0000-00-00 00:00:00'),
(314, 'REMWBC', 11, 14, 0, '', '0000-00-00 00:00:00'),
(315, 'JP5UB5', 11, 15, 0, '', '0000-00-00 00:00:00'),
(316, 'RN954G', 11, 16, 0, '', '0000-00-00 00:00:00'),
(317, 'JR74XW', 11, 17, 0, '', '0000-00-00 00:00:00'),
(318, '3677T3', 11, 18, 0, '', '0000-00-00 00:00:00'),
(319, 'MBJYSC', 11, 19, 0, '', '0000-00-00 00:00:00'),
(320, 'AY637K', 11, 20, 0, '', '0000-00-00 00:00:00'),
(321, 'EUSNUP', 11, 21, 0, '', '0000-00-00 00:00:00'),
(322, '8T3KHG', 11, 22, 0, '', '0000-00-00 00:00:00'),
(323, 'RHWEB6', 11, 23, 0, '', '0000-00-00 00:00:00'),
(324, 'DBDB9X', 11, 24, 0, '', '0000-00-00 00:00:00'),
(325, '6YQ694', 11, 25, 0, '', '0000-00-00 00:00:00'),
(326, '49EQVP', 11, 26, 0, '', '0000-00-00 00:00:00'),
(327, '9WHDWX', 11, 27, 0, '', '0000-00-00 00:00:00'),
(328, 'VMFWSA', 11, 28, 0, '', '0000-00-00 00:00:00'),
(329, 'C8G87W', 11, 29, 0, '', '0000-00-00 00:00:00'),
(330, 'JPP497', 11, 30, 0, '', '0000-00-00 00:00:00'),
(331, 'MMX6N9', 12, 1, 0, '', '0000-00-00 00:00:00'),
(332, 'Q76P8M', 12, 2, 0, '', '0000-00-00 00:00:00'),
(333, 'AWPYJK', 12, 3, 0, '', '0000-00-00 00:00:00'),
(334, 'ASXYFC', 12, 4, 0, '', '0000-00-00 00:00:00'),
(335, 'H9UXXB', 12, 5, 0, '', '0000-00-00 00:00:00'),
(336, 'CYBPCY', 12, 6, 0, '', '0000-00-00 00:00:00'),
(337, '6JRYE6', 12, 7, 0, '', '0000-00-00 00:00:00'),
(338, '3XPPMD', 12, 8, 0, '', '0000-00-00 00:00:00'),
(339, 'CX6P38', 12, 9, 0, '', '0000-00-00 00:00:00'),
(340, 'PAYF5E', 12, 10, 0, '', '0000-00-00 00:00:00'),
(341, 'W3T849', 12, 11, 0, '', '0000-00-00 00:00:00'),
(342, 'HBV6C7', 12, 12, 0, '', '0000-00-00 00:00:00'),
(343, '4ANCV6', 12, 13, 0, '', '0000-00-00 00:00:00'),
(344, 'WHQPHA', 12, 14, 0, '', '0000-00-00 00:00:00'),
(345, 'JQSKB9', 12, 15, 0, '', '0000-00-00 00:00:00'),
(346, '3HMXR9', 12, 16, 0, '', '0000-00-00 00:00:00'),
(347, 'EE8CKW', 12, 17, 0, '', '0000-00-00 00:00:00'),
(348, '87EKGU', 12, 18, 0, '', '0000-00-00 00:00:00'),
(349, 'SUE893', 12, 19, 0, '', '0000-00-00 00:00:00'),
(350, 'MWPTSQ', 12, 20, 0, '', '0000-00-00 00:00:00'),
(351, 'D4AYS8', 12, 21, 0, '', '0000-00-00 00:00:00'),
(352, 'NPDHFH', 12, 22, 0, '', '0000-00-00 00:00:00'),
(353, 'NWSRWF', 12, 23, 0, '', '0000-00-00 00:00:00'),
(354, 'GT7WTF', 12, 24, 0, '', '0000-00-00 00:00:00'),
(355, 'QFXUBS', 12, 25, 0, '', '0000-00-00 00:00:00'),
(356, 'R5RA8P', 12, 26, 0, '', '0000-00-00 00:00:00'),
(357, 'UJSPUD', 12, 27, 0, '', '0000-00-00 00:00:00'),
(358, 'MDB73U', 12, 28, 0, '', '0000-00-00 00:00:00'),
(359, 'QKWP89', 12, 29, 0, '', '0000-00-00 00:00:00'),
(360, 'NF5VSV', 12, 30, 0, '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `PromotionID` int(11) NOT NULL,
  `MainBranchID` int(11) NOT NULL,
  `StartDate` datetime NOT NULL,
  `EndDate` datetime NOT NULL,
  `UsingStartDate` datetime NOT NULL,
  `UsingEndDate` datetime NOT NULL,
  `Header` varchar(100) NOT NULL,
  `SubTitle` varchar(200) NOT NULL,
  `ImageUrl` varchar(250) NOT NULL,
  `DiscountType` tinyint(4) NOT NULL,
  `DiscountAmount` float NOT NULL,
  `MinimumSpending` int(11) NOT NULL,
  `MaxDiscountAmountPerDay` int(11) NOT NULL COMMENT 'Per day',
  `AllowEveryone` int(11) NOT NULL,
  `AllowDiscountForAllMenuType` tinyint(4) NOT NULL,
  `DiscountMenuID` int(11) NOT NULL,
  `NoOfLimitUse` int(11) NOT NULL,
  `NoOfLimitUsePerUser` int(11) NOT NULL,
  `NoOfLimitUsePerUserPerDay` int(11) NOT NULL,
  `VoucherCode` varchar(50) NOT NULL,
  `TermsConditions` varchar(2000) NOT NULL,
  `Type` tinyint(4) NOT NULL COMMENT '0=high priority,1=general',
  `OrderNo` int(11) NOT NULL,
  `Status` int(11) NOT NULL,
  `ModifiedUser` varchar(20) NOT NULL,
  `ModifiedDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `promotion`
--

INSERT INTO `promotion` (`PromotionID`, `MainBranchID`, `StartDate`, `EndDate`, `UsingStartDate`, `UsingEndDate`, `Header`, `SubTitle`, `ImageUrl`, `DiscountType`, `DiscountAmount`, `MinimumSpending`, `MaxDiscountAmountPerDay`, `AllowEveryone`, `AllowDiscountForAllMenuType`, `DiscountMenuID`, `NoOfLimitUse`, `NoOfLimitUsePerUser`, `NoOfLimitUsePerUserPerDay`, `VoucherCode`, `TermsConditions`, `Type`, `OrderNo`, `Status`, `ModifiedUser`, `ModifiedDate`) VALUES
(1, 0, '2018-04-01 00:00:00', '2018-07-31 00:00:00', '2018-04-01 00:00:00', '2018-07-31 00:00:00', 'ส่วนลดจาก Dtac 10 บาท ใส่โค้ด DISCOUNT10', '2561.04.01 - 04.30 ลดสูงสุด 12 บาท/วัน --ทั้งหมด 500 สิทธิ์ จำกัด  --10 สิทธิ์/ผู้ใช้  --สำหรับ ​MAMARIN และ sushi shin sukhumvit  -- วันนี้-31 ก.ค. 61', 'promoBanner.jpg', 1, 10, 0, 12, 1, 0, 0, 500, 10, 0, 'DISCOUNT10', 'สายการบินไทยสมายล์ ร่วมกับ บริษัท เคาน์เตอร์เซอร์วิส มอบคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท เมื่อซื้อบัตรโดยสารของสายการบินไทยสมายล์ผ่านเคาน์เตอร์เซอร์วิส *เงื่อนไขเป็นไปตามที่กำหนด เงื่อนไขรายการส่งเสริมการขาย – รับคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท ท้ายสลิปเมื่อซื้อบัตรโดยสารสายการบินไทยสมายล์ผ่าน เคาน์เตอร์ เซอร์วิส (ร้าน 7-Eleven) ระหว่างวันที่ 15 ธันวาคม 2559 ถึง วันที่ 5 มกราคม 2560 – 1 คูปองแลกซื้อ ต่อ 1 สลิป/transaction เท่านั้น ยอดเงินต่อ 1 สลิป/transaction จะต้องไม่เกิน 60,000 บาท – คูปองแลกซื้อนี้สามารถใช้ได้ระหว่างวันที่ 15 ธันวาคม 2559 ถึง 15 มกราคม 2560 เท่านั้น – คูปองแลกซื้อนี้ไม่สามารถนำมาแลกหรือเปลี่ยนเป็นเงินสดได้ กรณีที่ยอดซื้อต่ำกว่ามูลค่าของคูปองแลกซื้อ บริษัทฯ จะไม่คืนส่วนต่างของมูลค่าของคูปองแลกซื้อ – กรุณาเก็บเอกสารฉบับนี้ไว้กับท่านเพื่อเป็นหลักฐาน ในกรณีที่เอกสารชำรุดหรือเสียหาย ทางสายการบินจะไม่สามารถออกจดหมายฉบับใหม่ได้ และจะถือว่าท่านสละสิทธิ์ – ท่านสามารถศึกษารายละเอียดเพิ่มเติมได้ที่ www.counterservice.co.th หรือ เฟสบุ๊คของเคาน์เตอร์เซอร์วิส @Counterservice *บริษัท เคาน์เตอร์เซอร์วิส จำกัดขอสงวนสิทธิ์เปลี่ยนแปลงเงื่อนไขรายการส่งเสริมการขายนี้โดยไม่ต้องแจ้งล่วงหน้า ---คุณมีเวลาหลังจากกดรับสิทธิ์ 30 วินาที ---PromoCode นี้ใช้ได้ไม่จำกัด จนถึง 31 พฤษภาคม', 0, 1, 1, '0', '0000-00-00 00:00:00'),
(2, 0, '2018-04-01 00:00:00', '2018-07-31 00:00:00', '2018-04-01 00:00:00', '2018-07-31 00:00:00', 'สั่งอาหาร จ่ายผ่าน Credit card รับส่วนลด 10% ใส่โค้ด 10PERCENTOFF', 'ลดสูงสุด 100 บาท/วัน --ทั้งหมด 500 สิทธิ์ --10 สิทธิ์/ผู้ใช้  --สำหรับ ​MAMARIN และ sushi shin sukhumvit -- วันนี้-31 ก.ค. 61', 'promoBanner.jpg', 2, 10, 0, 500, 1, 0, 0, 500, 10, 0, '10PERCENTOFF', 'สายการบินไทยสมายล์ ร่วมกับ บริษัท เคาน์เตอร์เซอร์วิส มอบคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท เมื่อซื้อบัตรโดยสารของสายการบินไทยสมายล์ผ่านเคาน์เตอร์เซอร์วิส *เงื่อนไขเป็นไปตามที่กำหนด เงื่อนไขรายการส่งเสริมการขาย – รับคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท ท้ายสลิปเมื่อซื้อบัตรโดยสารสายการบินไทยสมายล์ผ่าน เคาน์เตอร์ เซอร์วิส (ร้าน 7-Eleven) ระหว่างวันที่ 15 ธันวาคม 2559 ถึง วันที่ 5 มกราคม 2560 – 1 คูปองแลกซื้อ ต่อ 1 สลิป/transaction เท่านั้น ยอดเงินต่อ 1 สลิป/transaction จะต้องไม่เกิน 60,000 บาท – คูปองแลกซื้อนี้สามารถใช้ได้ระหว่างวันที่ 15 ธันวาคม 2559 ถึง 15 มกราคม 2560 เท่านั้น – คูปองแลกซื้อนี้ไม่สามารถนำมาแลกหรือเปลี่ยนเป็นเงินสดได้ กรณีที่ยอดซื้อต่ำกว่ามูลค่าของคูปองแลกซื้อ บริษัทฯ จะไม่คืนส่วนต่างของมูลค่าของคูปองแลกซื้อ – กรุณาเก็บเอกสารฉบับนี้ไว้กับท่านเพื่อเป็นหลักฐาน ในกรณีที่เอกสารชำรุดหรือเสียหาย ทางสายการบินจะไม่สามารถออกจดหมายฉบับใหม่ได้ และจะถือว่าท่านสละสิทธิ์ – ท่านสามารถศึกษารายละเอียดเพิ่มเติมได้ที่ www.counterservice.co.th หรือ เฟสบุ๊คของเคาน์เตอร์เซอร์วิส @Counterservice *บริษัท เคาน์เตอร์เซอร์วิส จำกัดขอสงวนสิทธิ์เปลี่ยนแปลงเงื่อนไขรายการส่งเสริมการขายนี้โดยไม่ต้องแจ้งล่วงหน้า ---คุณมีเวลาหลังจากกดรับสิทธิ์ 30 วินาที ---PromoCode นี้ใช้ได้ไม่จำกัด จนถึง 31 พฤษภาคม', 0, 2, 1, '0', '0000-00-00 00:00:00'),
(3, 1, '2018-04-01 00:00:00', '2018-07-31 00:00:00', '2018-04-01 00:00:00', '2018-07-31 00:00:00', 'Cheesy King Gyoza ห้วยขวาง', 'เพียง 498 บาท เมื่อสั่งเกี๊ยวซ่าหมูดับเบิ้ลชีส 24 ชิ้น คู่กับ เกี๊ยวซ่าไก่เผ็ด -- วันนี้-31 ก.ค. 61', 'promoThumbNail.jpg', 1, 10, 0, 12, 1, 0, 50, 500, 10, 0, 'DISCOUNT10CHEESY1', 'สายการบินไทยสมายล์ ร่วมกับ บริษัท เคาน์เตอร์เซอร์วิส มอบคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท เมื่อซื้อบัตรโดยสารของสายการบินไทยสมายล์ผ่านเคาน์เตอร์เซอร์วิส *เงื่อนไขเป็นไปตามที่กำหนด เงื่อนไขรายการส่งเสริมการขาย – รับคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท ท้ายสลิปเมื่อซื้อบัตรโดยสารสายการบินไทยสมายล์ผ่าน เคาน์เตอร์ เซอร์วิส (ร้าน 7-Eleven) ระหว่างวันที่ 15 ธันวาคม 2559 ถึง วันที่ 5 มกราคม 2560 – 1 คูปองแลกซื้อ ต่อ 1 สลิป/transaction เท่านั้น ยอดเงินต่อ 1 สลิป/transaction จะต้องไม่เกิน 60,000 บาท – คูปองแลกซื้อนี้สามารถใช้ได้ระหว่างวันที่ 15 ธันวาคม 2559 ถึง 15 มกราคม 2560 เท่านั้น – คูปองแลกซื้อนี้ไม่สามารถนำมาแลกหรือเปลี่ยนเป็นเงินสดได้ กรณีที่ยอดซื้อต่ำกว่ามูลค่าของคูปองแลกซื้อ บริษัทฯ จะไม่คืนส่วนต่างของมูลค่าของคูปองแลกซื้อ – กรุณาเก็บเอกสารฉบับนี้ไว้กับท่านเพื่อเป็นหลักฐาน ในกรณีที่เอกสารชำรุดหรือเสียหาย ทางสายการบินจะไม่สามารถออกจดหมายฉบับใหม่ได้ และจะถือว่าท่านสละสิทธิ์ – ท่านสามารถศึกษารายละเอียดเพิ่มเติมได้ที่ www.counterservice.co.th หรือ เฟสบุ๊คของเคาน์เตอร์เซอร์วิส @Counterservice *บริษัท เคาน์เตอร์เซอร์วิส จำกัดขอสงวนสิทธิ์เปลี่ยนแปลงเงื่อนไขรายการส่งเสริมการขายนี้โดยไม่ต้องแจ้งล่วงหน้า ---คุณมีเวลาหลังจากกดรับสิทธิ์ 30 วินาที ---PromoCode นี้ใช้ได้ไม่จำกัด จนถึง 31 พฤษภาคม', 1, 3, 1, '0', '0000-00-00 00:00:00'),
(4, 0, '2018-04-01 00:00:00', '2018-07-31 00:00:00', '2018-04-01 00:00:00', '2018-07-31 00:00:00', 'Crab and Claw (แคร็บ แอนด์ คลอว์) สยามพารากอน', 'เพียง 498 บาท เมื่อสั่งเกี๊ยวซ่าหมูดับเบิ้ลชีส 24 ชิ้น คู่กับ เกี๊ยวซ่าไก่เผ็ด -- วันนี้-31 ก.ค. 61', 'promoThumbNail.jpg', 2, 10, 0, 100, 1, 0, 0, 500, 10, 0, '10PERCENTOFFCRABCLAW1', 'สายการบินไทยสมายล์ ร่วมกับ บริษัท เคาน์เตอร์เซอร์วิส มอบคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท เมื่อซื้อบัตรโดยสารของสายการบินไทยสมายล์ผ่านเคาน์เตอร์เซอร์วิส *เงื่อนไขเป็นไปตามที่กำหนด เงื่อนไขรายการส่งเสริมการขาย – รับคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท ท้ายสลิปเมื่อซื้อบัตรโดยสารสายการบินไทยสมายล์ผ่าน เคาน์เตอร์ เซอร์วิส (ร้าน 7-Eleven) ระหว่างวันที่ 15 ธันวาคม 2559 ถึง วันที่ 5 มกราคม 2560 – 1 คูปองแลกซื้อ ต่อ 1 สลิป/transaction เท่านั้น ยอดเงินต่อ 1 สลิป/transaction จะต้องไม่เกิน 60,000 บาท – คูปองแลกซื้อนี้สามารถใช้ได้ระหว่างวันที่ 15 ธันวาคม 2559 ถึง 15 มกราคม 2560 เท่านั้น – คูปองแลกซื้อนี้ไม่สามารถนำมาแลกหรือเปลี่ยนเป็นเงินสดได้ กรณีที่ยอดซื้อต่ำกว่ามูลค่าของคูปองแลกซื้อ บริษัทฯ จะไม่คืนส่วนต่างของมูลค่าของคูปองแลกซื้อ – กรุณาเก็บเอกสารฉบับนี้ไว้กับท่านเพื่อเป็นหลักฐาน ในกรณีที่เอกสารชำรุดหรือเสียหาย ทางสายการบินจะไม่สามารถออกจดหมายฉบับใหม่ได้ และจะถือว่าท่านสละสิทธิ์ – ท่านสามารถศึกษารายละเอียดเพิ่มเติมได้ที่ www.counterservice.co.th หรือ เฟสบุ๊คของเคาน์เตอร์เซอร์วิส @Counterservice *บริษัท เคาน์เตอร์เซอร์วิส จำกัดขอสงวนสิทธิ์เปลี่ยนแปลงเงื่อนไขรายการส่งเสริมการขายนี้โดยไม่ต้องแจ้งล่วงหน้า ---คุณมีเวลาหลังจากกดรับสิทธิ์ 30 วินาที ---PromoCode นี้ใช้ได้ไม่จำกัด จนถึง 31 พฤษภาคม', 1, 4, 1, '0', '0000-00-00 00:00:00'),
(5, 0, '2018-04-01 00:00:00', '2018-07-31 00:00:00', '2018-04-01 00:00:00', '2018-07-31 00:00:00', 'ส่วนลดจาก Dtac 10 บาท ใส่โค้ด DISCOUNT10', '2561.04.01 - 04.30 ลดสูงสุด 12 บาท/วัน --ทั้งหมด 500 สิทธิ์ จำกัด --10 สิทธิ์/ผู้ใช้  --สำหรับ ​MAMARIN และ sushi shin sukhumvit -- วันนี้-31 ก.ค. 61', 'promoBanner.jpg', 1, 10, 0, 12, 1, 0, 0, 500, 10, 0, 'DISCOUNT10_2', 'สายการบินไทยสมายล์ ร่วมกับ บริษัท เคาน์เตอร์เซอร์วิส มอบคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท เมื่อซื้อบัตรโดยสารของสายการบินไทยสมายล์ผ่านเคาน์เตอร์เซอร์วิส *เงื่อนไขเป็นไปตามที่กำหนด เงื่อนไขรายการส่งเสริมการขาย – รับคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท ท้ายสลิปเมื่อซื้อบัตรโดยสารสายการบินไทยสมายล์ผ่าน เคาน์เตอร์ เซอร์วิส (ร้าน 7-Eleven) ระหว่างวันที่ 15 ธันวาคม 2559 ถึง วันที่ 5 มกราคม 2560 – 1 คูปองแลกซื้อ ต่อ 1 สลิป/transaction เท่านั้น ยอดเงินต่อ 1 สลิป/transaction จะต้องไม่เกิน 60,000 บาท – คูปองแลกซื้อนี้สามารถใช้ได้ระหว่างวันที่ 15 ธันวาคม 2559 ถึง 15 มกราคม 2560 เท่านั้น – คูปองแลกซื้อนี้ไม่สามารถนำมาแลกหรือเปลี่ยนเป็นเงินสดได้ กรณีที่ยอดซื้อต่ำกว่ามูลค่าของคูปองแลกซื้อ บริษัทฯ จะไม่คืนส่วนต่างของมูลค่าของคูปองแลกซื้อ – กรุณาเก็บเอกสารฉบับนี้ไว้กับท่านเพื่อเป็นหลักฐาน ในกรณีที่เอกสารชำรุดหรือเสียหาย ทางสายการบินจะไม่สามารถออกจดหมายฉบับใหม่ได้ และจะถือว่าท่านสละสิทธิ์ – ท่านสามารถศึกษารายละเอียดเพิ่มเติมได้ที่ www.counterservice.co.th หรือ เฟสบุ๊คของเคาน์เตอร์เซอร์วิส @Counterservice *บริษัท เคาน์เตอร์เซอร์วิส จำกัดขอสงวนสิทธิ์เปลี่ยนแปลงเงื่อนไขรายการส่งเสริมการขายนี้โดยไม่ต้องแจ้งล่วงหน้า ---คุณมีเวลาหลังจากกดรับสิทธิ์ 30 วินาที ---PromoCode นี้ใช้ได้ไม่จำกัด จนถึง 31 พฤษภาคม', 0, 5, 1, '0', '0000-00-00 00:00:00'),
(6, 0, '2018-04-01 00:00:00', '2018-07-31 00:00:00', '2018-04-01 00:00:00', '2018-07-31 00:00:00', 'สั่งอาหาร จ่ายผ่าน Credit card รับส่วนลด 10% ใส่โค้ด 10PERCENTOFF', 'ลดสูงสุด 100 บาท/วัน --ทั้งหมด 500 สิทธิ์ จำกัด --10 สิทธิ์/ผู้ใช้  --สำหรับ ​MAMARIN และ sushi shin sukhumvit -- วันนี้-31 ก.ค. 61', 'promoBanner.jpg', 2, 10, 0, 100, 1, 0, 0, 500, 10, 0, '10PERCENTOFF_2', 'สายการบินไทยสมายล์ ร่วมกับ บริษัท เคาน์เตอร์เซอร์วิส มอบคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท เมื่อซื้อบัตรโดยสารของสายการบินไทยสมายล์ผ่านเคาน์เตอร์เซอร์วิส *เงื่อนไขเป็นไปตามที่กำหนด เงื่อนไขรายการส่งเสริมการขาย – รับคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท ท้ายสลิปเมื่อซื้อบัตรโดยสารสายการบินไทยสมายล์ผ่าน เคาน์เตอร์ เซอร์วิส (ร้าน 7-Eleven) ระหว่างวันที่ 15 ธันวาคม 2559 ถึง วันที่ 5 มกราคม 2560 – 1 คูปองแลกซื้อ ต่อ 1 สลิป/transaction เท่านั้น ยอดเงินต่อ 1 สลิป/transaction จะต้องไม่เกิน 60,000 บาท – คูปองแลกซื้อนี้สามารถใช้ได้ระหว่างวันที่ 15 ธันวาคม 2559 ถึง 15 มกราคม 2560 เท่านั้น – คูปองแลกซื้อนี้ไม่สามารถนำมาแลกหรือเปลี่ยนเป็นเงินสดได้ กรณีที่ยอดซื้อต่ำกว่ามูลค่าของคูปองแลกซื้อ บริษัทฯ จะไม่คืนส่วนต่างของมูลค่าของคูปองแลกซื้อ – กรุณาเก็บเอกสารฉบับนี้ไว้กับท่านเพื่อเป็นหลักฐาน ในกรณีที่เอกสารชำรุดหรือเสียหาย ทางสายการบินจะไม่สามารถออกจดหมายฉบับใหม่ได้ และจะถือว่าท่านสละสิทธิ์ – ท่านสามารถศึกษารายละเอียดเพิ่มเติมได้ที่ www.counterservice.co.th หรือ เฟสบุ๊คของเคาน์เตอร์เซอร์วิส @Counterservice *บริษัท เคาน์เตอร์เซอร์วิส จำกัดขอสงวนสิทธิ์เปลี่ยนแปลงเงื่อนไขรายการส่งเสริมการขายนี้โดยไม่ต้องแจ้งล่วงหน้า ---คุณมีเวลาหลังจากกดรับสิทธิ์ 30 วินาที ---PromoCode นี้ใช้ได้ไม่จำกัด จนถึง 31 พฤษภาคม', 0, 6, 1, '0', '0000-00-00 00:00:00'),
(7, 0, '2018-04-01 00:00:00', '2018-07-31 00:00:00', '2018-04-01 00:00:00', '2018-07-31 00:00:00', 'Cheesy King Gyoza ห้วยขวาง', 'เพียง 498 บาท เมื่อสั่งเกี๊ยวซ่าหมูดับเบิ้ลชีส 24 ชิ้น คู่กับ เกี๊ยวซ่าไก่เผ็ด -- วันนี้-31 ก.ค. 61', 'promoThumbNail.jpg', 1, 10, 0, 12, 1, 0, 0, 500, 10, 0, 'DISCOUNT10CHEESY2', 'สายการบินไทยสมายล์ ร่วมกับ บริษัท เคาน์เตอร์เซอร์วิส มอบคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท เมื่อซื้อบัตรโดยสารของสายการบินไทยสมายล์ผ่านเคาน์เตอร์เซอร์วิส *เงื่อนไขเป็นไปตามที่กำหนด เงื่อนไขรายการส่งเสริมการขาย – รับคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท ท้ายสลิปเมื่อซื้อบัตรโดยสารสายการบินไทยสมายล์ผ่าน เคาน์เตอร์ เซอร์วิส (ร้าน 7-Eleven) ระหว่างวันที่ 15 ธันวาคม 2559 ถึง วันที่ 5 มกราคม 2560 – 1 คูปองแลกซื้อ ต่อ 1 สลิป/transaction เท่านั้น ยอดเงินต่อ 1 สลิป/transaction จะต้องไม่เกิน 60,000 บาท – คูปองแลกซื้อนี้สามารถใช้ได้ระหว่างวันที่ 15 ธันวาคม 2559 ถึง 15 มกราคม 2560 เท่านั้น – คูปองแลกซื้อนี้ไม่สามารถนำมาแลกหรือเปลี่ยนเป็นเงินสดได้ กรณีที่ยอดซื้อต่ำกว่ามูลค่าของคูปองแลกซื้อ บริษัทฯ จะไม่คืนส่วนต่างของมูลค่าของคูปองแลกซื้อ – กรุณาเก็บเอกสารฉบับนี้ไว้กับท่านเพื่อเป็นหลักฐาน ในกรณีที่เอกสารชำรุดหรือเสียหาย ทางสายการบินจะไม่สามารถออกจดหมายฉบับใหม่ได้ และจะถือว่าท่านสละสิทธิ์ – ท่านสามารถศึกษารายละเอียดเพิ่มเติมได้ที่ www.counterservice.co.th หรือ เฟสบุ๊คของเคาน์เตอร์เซอร์วิส @Counterservice *บริษัท เคาน์เตอร์เซอร์วิส จำกัดขอสงวนสิทธิ์เปลี่ยนแปลงเงื่อนไขรายการส่งเสริมการขายนี้โดยไม่ต้องแจ้งล่วงหน้า ---คุณมีเวลาหลังจากกดรับสิทธิ์ 30 วินาที ---PromoCode นี้ใช้ได้ไม่จำกัด จนถึง 31 พฤษภาคม', 1, 7, 1, '0', '0000-00-00 00:00:00'),
(8, 0, '2018-04-01 00:00:00', '2018-07-31 00:00:00', '2018-04-01 00:00:00', '2018-07-31 00:00:00', 'Crab and Claw (แคร็บ แอนด์ คลอว์) สยามพารากอน', 'เพียง 498 บาท เมื่อสั่งเกี๊ยวซ่าหมูดับเบิ้ลชีส 24 ชิ้น คู่กับ เกี๊ยวซ่าไก่เผ็ด -- วันนี้-31 ก.ค. 61', 'promoThumbNail.jpg', 2, 10, 0, 100, 1, 0, 0, 500, 10, 0, '10PERCENTOFFCRABCLAW2', 'สายการบินไทยสมายล์ ร่วมกับ บริษัท เคาน์เตอร์เซอร์วิส มอบคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท เมื่อซื้อบัตรโดยสารของสายการบินไทยสมายล์ผ่านเคาน์เตอร์เซอร์วิส *เงื่อนไขเป็นไปตามที่กำหนด เงื่อนไขรายการส่งเสริมการขาย – รับคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท ท้ายสลิปเมื่อซื้อบัตรโดยสารสายการบินไทยสมายล์ผ่าน เคาน์เตอร์ เซอร์วิส (ร้าน 7-Eleven) ระหว่างวันที่ 15 ธันวาคม 2559 ถึง วันที่ 5 มกราคม 2560 – 1 คูปองแลกซื้อ ต่อ 1 สลิป/transaction เท่านั้น ยอดเงินต่อ 1 สลิป/transaction จะต้องไม่เกิน 60,000 บาท – คูปองแลกซื้อนี้สามารถใช้ได้ระหว่างวันที่ 15 ธันวาคม 2559 ถึง 15 มกราคม 2560 เท่านั้น – คูปองแลกซื้อนี้ไม่สามารถนำมาแลกหรือเปลี่ยนเป็นเงินสดได้ กรณีที่ยอดซื้อต่ำกว่ามูลค่าของคูปองแลกซื้อ บริษัทฯ จะไม่คืนส่วนต่างของมูลค่าของคูปองแลกซื้อ – กรุณาเก็บเอกสารฉบับนี้ไว้กับท่านเพื่อเป็นหลักฐาน ในกรณีที่เอกสารชำรุดหรือเสียหาย ทางสายการบินจะไม่สามารถออกจดหมายฉบับใหม่ได้ และจะถือว่าท่านสละสิทธิ์ – ท่านสามารถศึกษารายละเอียดเพิ่มเติมได้ที่ www.counterservice.co.th หรือ เฟสบุ๊คของเคาน์เตอร์เซอร์วิส @Counterservice *บริษัท เคาน์เตอร์เซอร์วิส จำกัดขอสงวนสิทธิ์เปลี่ยนแปลงเงื่อนไขรายการส่งเสริมการขายนี้โดยไม่ต้องแจ้งล่วงหน้า ---คุณมีเวลาหลังจากกดรับสิทธิ์ 30 วินาที ---PromoCode นี้ใช้ได้ไม่จำกัด จนถึง 31 พฤษภาคม', 1, 8, 1, '0', '0000-00-00 00:00:00'),
(9, 0, '2018-04-01 00:00:00', '2018-07-31 00:00:00', '2018-04-01 00:00:00', '2018-07-31 00:00:00', 'ส่วนลดจาก Dtac 10 บาท ใส่โค้ด DISCOUNT10', '2561.04.01 - 04.30 ลดสูงสุด 12 บาท/วัน --ทั้งหมด 500 สิทธิ์ จำกัด --10 สิทธิ์/ผู้ใช้  --สำหรับ ​MAMARIN และ sushi shin sukhumvit -- วันนี้-31 ก.ค. 61', 'promoBanner.jpg', 1, 10, 0, 12, 1, 0, 0, 500, 10, 0, 'DISCOUNT10_3', 'สายการบินไทยสมายล์ ร่วมกับ บริษัท เคาน์เตอร์เซอร์วิส มอบคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท เมื่อซื้อบัตรโดยสารของสายการบินไทยสมายล์ผ่านเคาน์เตอร์เซอร์วิส *เงื่อนไขเป็นไปตามที่กำหนด เงื่อนไขรายการส่งเสริมการขาย – รับคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท ท้ายสลิปเมื่อซื้อบัตรโดยสารสายการบินไทยสมายล์ผ่าน เคาน์เตอร์ เซอร์วิส (ร้าน 7-Eleven) ระหว่างวันที่ 15 ธันวาคม 2559 ถึง วันที่ 5 มกราคม 2560 – 1 คูปองแลกซื้อ ต่อ 1 สลิป/transaction เท่านั้น ยอดเงินต่อ 1 สลิป/transaction จะต้องไม่เกิน 60,000 บาท – คูปองแลกซื้อนี้สามารถใช้ได้ระหว่างวันที่ 15 ธันวาคม 2559 ถึง 15 มกราคม 2560 เท่านั้น – คูปองแลกซื้อนี้ไม่สามารถนำมาแลกหรือเปลี่ยนเป็นเงินสดได้ กรณีที่ยอดซื้อต่ำกว่ามูลค่าของคูปองแลกซื้อ บริษัทฯ จะไม่คืนส่วนต่างของมูลค่าของคูปองแลกซื้อ – กรุณาเก็บเอกสารฉบับนี้ไว้กับท่านเพื่อเป็นหลักฐาน ในกรณีที่เอกสารชำรุดหรือเสียหาย ทางสายการบินจะไม่สามารถออกจดหมายฉบับใหม่ได้ และจะถือว่าท่านสละสิทธิ์ – ท่านสามารถศึกษารายละเอียดเพิ่มเติมได้ที่ www.counterservice.co.th หรือ เฟสบุ๊คของเคาน์เตอร์เซอร์วิส @Counterservice *บริษัท เคาน์เตอร์เซอร์วิส จำกัดขอสงวนสิทธิ์เปลี่ยนแปลงเงื่อนไขรายการส่งเสริมการขายนี้โดยไม่ต้องแจ้งล่วงหน้า ---คุณมีเวลาหลังจากกดรับสิทธิ์ 30 วินาที ---PromoCode นี้ใช้ได้ไม่จำกัด จนถึง 31 พฤษภาคม', 0, 9, 1, '0', '0000-00-00 00:00:00'),
(10, 0, '2018-04-01 00:00:00', '2018-07-31 00:00:00', '2018-04-01 00:00:00', '2018-07-31 00:00:00', 'สั่งอาหาร จ่ายผ่าน Credit card รับส่วนลด 10% ใส่โค้ด 10PERCENTOFF', 'ลดสูงสุด 100 บาท/วัน --ทั้งหมด 500 สิทธิ์ จำกัด --10 สิทธิ์/ผู้ใช้  --สำหรับ ​MAMARIN และ sushi shin sukhumvit -- วันนี้-31 ก.ค. 61', 'promoBanner.jpg', 2, 10, 0, 100, 1, 0, 0, 500, 10, 0, '10PERCENTOFF_3', 'สายการบินไทยสมายล์ ร่วมกับ บริษัท เคาน์เตอร์เซอร์วิส มอบคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท เมื่อซื้อบัตรโดยสารของสายการบินไทยสมายล์ผ่านเคาน์เตอร์เซอร์วิส *เงื่อนไขเป็นไปตามที่กำหนด เงื่อนไขรายการส่งเสริมการขาย – รับคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท ท้ายสลิปเมื่อซื้อบัตรโดยสารสายการบินไทยสมายล์ผ่าน เคาน์เตอร์ เซอร์วิส (ร้าน 7-Eleven) ระหว่างวันที่ 15 ธันวาคม 2559 ถึง วันที่ 5 มกราคม 2560 – 1 คูปองแลกซื้อ ต่อ 1 สลิป/transaction เท่านั้น ยอดเงินต่อ 1 สลิป/transaction จะต้องไม่เกิน 60,000 บาท – คูปองแลกซื้อนี้สามารถใช้ได้ระหว่างวันที่ 15 ธันวาคม 2559 ถึง 15 มกราคม 2560 เท่านั้น – คูปองแลกซื้อนี้ไม่สามารถนำมาแลกหรือเปลี่ยนเป็นเงินสดได้ กรณีที่ยอดซื้อต่ำกว่ามูลค่าของคูปองแลกซื้อ บริษัทฯ จะไม่คืนส่วนต่างของมูลค่าของคูปองแลกซื้อ – กรุณาเก็บเอกสารฉบับนี้ไว้กับท่านเพื่อเป็นหลักฐาน ในกรณีที่เอกสารชำรุดหรือเสียหาย ทางสายการบินจะไม่สามารถออกจดหมายฉบับใหม่ได้ และจะถือว่าท่านสละสิทธิ์ – ท่านสามารถศึกษารายละเอียดเพิ่มเติมได้ที่ www.counterservice.co.th หรือ เฟสบุ๊คของเคาน์เตอร์เซอร์วิส @Counterservice *บริษัท เคาน์เตอร์เซอร์วิส จำกัดขอสงวนสิทธิ์เปลี่ยนแปลงเงื่อนไขรายการส่งเสริมการขายนี้โดยไม่ต้องแจ้งล่วงหน้า ---คุณมีเวลาหลังจากกดรับสิทธิ์ 30 วินาที ---PromoCode นี้ใช้ได้ไม่จำกัด จนถึง 31 พฤษภาคม', 0, 10, 1, '0', '0000-00-00 00:00:00'),
(11, 0, '2018-04-01 00:00:00', '2018-07-31 00:00:00', '2018-04-01 00:00:00', '2018-07-31 00:00:00', 'Cheesy King Gyoza ห้วยขวาง', 'เพียง 498 บาท เมื่อสั่งเกี๊ยวซ่าหมูดับเบิ้ลชีส 24 ชิ้น คู่กับ เกี๊ยวซ่าไก่เผ็ด -- วันนี้-31 ก.ค. 61', 'promoThumbNail.jpg', 1, 10, 0, 12, 1, 0, 0, 500, 10, 0, 'DISCOUNT10CHEESY3', 'สายการบินไทยสมายล์ ร่วมกับ บริษัท เคาน์เตอร์เซอร์วิส มอบคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท เมื่อซื้อบัตรโดยสารของสายการบินไทยสมายล์ผ่านเคาน์เตอร์เซอร์วิส *เงื่อนไขเป็นไปตามที่กำหนด เงื่อนไขรายการส่งเสริมการขาย – รับคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท ท้ายสลิปเมื่อซื้อบัตรโดยสารสายการบินไทยสมายล์ผ่าน เคาน์เตอร์ เซอร์วิส (ร้าน 7-Eleven) ระหว่างวันที่ 15 ธันวาคม 2559 ถึง วันที่ 5 มกราคม 2560 – 1 คูปองแลกซื้อ ต่อ 1 สลิป/transaction เท่านั้น ยอดเงินต่อ 1 สลิป/transaction จะต้องไม่เกิน 60,000 บาท – คูปองแลกซื้อนี้สามารถใช้ได้ระหว่างวันที่ 15 ธันวาคม 2559 ถึง 15 มกราคม 2560 เท่านั้น – คูปองแลกซื้อนี้ไม่สามารถนำมาแลกหรือเปลี่ยนเป็นเงินสดได้ กรณีที่ยอดซื้อต่ำกว่ามูลค่าของคูปองแลกซื้อ บริษัทฯ จะไม่คืนส่วนต่างของมูลค่าของคูปองแลกซื้อ – กรุณาเก็บเอกสารฉบับนี้ไว้กับท่านเพื่อเป็นหลักฐาน ในกรณีที่เอกสารชำรุดหรือเสียหาย ทางสายการบินจะไม่สามารถออกจดหมายฉบับใหม่ได้ และจะถือว่าท่านสละสิทธิ์ – ท่านสามารถศึกษารายละเอียดเพิ่มเติมได้ที่ www.counterservice.co.th หรือ เฟสบุ๊คของเคาน์เตอร์เซอร์วิส @Counterservice *บริษัท เคาน์เตอร์เซอร์วิส จำกัดขอสงวนสิทธิ์เปลี่ยนแปลงเงื่อนไขรายการส่งเสริมการขายนี้โดยไม่ต้องแจ้งล่วงหน้า ---คุณมีเวลาหลังจากกดรับสิทธิ์ 30 วินาที ---PromoCode นี้ใช้ได้ไม่จำกัด จนถึง 31 พฤษภาคม', 1, 11, 1, '0', '0000-00-00 00:00:00'),
(12, 0, '2018-04-01 00:00:00', '2018-07-31 00:00:00', '2018-04-01 00:00:00', '2018-07-31 00:00:00', 'Crab and Claw (แคร็บ แอนด์ คลอว์) สยามพารากอน', 'เพียง 498 บาท เมื่อสั่งเกี๊ยวซ่าหมูดับเบิ้ลชีส 24 ชิ้น คู่กับ เกี๊ยวซ่าไก่เผ็ด -- วันนี้-31 ก.ค. 61', 'promoThumbNail.jpg', 2, 10, 0, 100, 1, 0, 0, 500, 10, 0, '10PERCENTOFFCRABCLAW3', 'สายการบินไทยสมายล์ ร่วมกับ บริษัท เคาน์เตอร์เซอร์วิส มอบคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท เมื่อซื้อบัตรโดยสารของสายการบินไทยสมายล์ผ่านเคาน์เตอร์เซอร์วิส *เงื่อนไขเป็นไปตามที่กำหนด เงื่อนไขรายการส่งเสริมการขาย – รับคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท ท้ายสลิปเมื่อซื้อบัตรโดยสารสายการบินไทยสมายล์ผ่าน เคาน์เตอร์ เซอร์วิส (ร้าน 7-Eleven) ระหว่างวันที่ 15 ธันวาคม 2559 ถึง วันที่ 5 มกราคม 2560 – 1 คูปองแลกซื้อ ต่อ 1 สลิป/transaction เท่านั้น ยอดเงินต่อ 1 สลิป/transaction จะต้องไม่เกิน 60,000 บาท – คูปองแลกซื้อนี้สามารถใช้ได้ระหว่างวันที่ 15 ธันวาคม 2559 ถึง 15 มกราคม 2560 เท่านั้น – คูปองแลกซื้อนี้ไม่สามารถนำมาแลกหรือเปลี่ยนเป็นเงินสดได้ กรณีที่ยอดซื้อต่ำกว่ามูลค่าของคูปองแลกซื้อ บริษัทฯ จะไม่คืนส่วนต่างของมูลค่าของคูปองแลกซื้อ – กรุณาเก็บเอกสารฉบับนี้ไว้กับท่านเพื่อเป็นหลักฐาน ในกรณีที่เอกสารชำรุดหรือเสียหาย ทางสายการบินจะไม่สามารถออกจดหมายฉบับใหม่ได้ และจะถือว่าท่านสละสิทธิ์ – ท่านสามารถศึกษารายละเอียดเพิ่มเติมได้ที่ www.counterservice.co.th หรือ เฟสบุ๊คของเคาน์เตอร์เซอร์วิส @Counterservice *บริษัท เคาน์เตอร์เซอร์วิส จำกัดขอสงวนสิทธิ์เปลี่ยนแปลงเงื่อนไขรายการส่งเสริมการขายนี้โดยไม่ต้องแจ้งล่วงหน้า ---คุณมีเวลาหลังจากกดรับสิทธิ์ 30 วินาที ---PromoCode นี้ใช้ได้ไม่จำกัด จนถึง 31 พฤษภาคม', 1, 12, 1, '0', '0000-00-00 00:00:00'),
(13, 0, '2018-04-01 00:00:00', '2018-07-31 00:00:00', '2018-04-01 00:00:00', '2018-07-31 00:00:00', 'ส่วนลดจาก Dtac 10 บาท ใส่โค้ด DISCOUNT10', '2561.04.01 - 04.30 ลดสูงสุด 12 บาท/วัน --ทั้งหมด 500 สิทธิ์ จำกัด --10 สิทธิ์/ผู้ใช้  --สำหรับ ​MAMARIN และ sushi shin sukhumvit -- วันนี้-31 ก.ค. 61', 'promoBanner.jpg', 1, 10, 0, 12, 1, 0, 0, 500, 10, 0, 'DISCOUNT10_4', 'สายการบินไทยสมายล์ ร่วมกับ บริษัท เคาน์เตอร์เซอร์วิส มอบคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท เมื่อซื้อบัตรโดยสารของสายการบินไทยสมายล์ผ่านเคาน์เตอร์เซอร์วิส *เงื่อนไขเป็นไปตามที่กำหนด เงื่อนไขรายการส่งเสริมการขาย – รับคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท ท้ายสลิปเมื่อซื้อบัตรโดยสารสายการบินไทยสมายล์ผ่าน เคาน์เตอร์ เซอร์วิส (ร้าน 7-Eleven) ระหว่างวันที่ 15 ธันวาคม 2559 ถึง วันที่ 5 มกราคม 2560 – 1 คูปองแลกซื้อ ต่อ 1 สลิป/transaction เท่านั้น ยอดเงินต่อ 1 สลิป/transaction จะต้องไม่เกิน 60,000 บาท – คูปองแลกซื้อนี้สามารถใช้ได้ระหว่างวันที่ 15 ธันวาคม 2559 ถึง 15 มกราคม 2560 เท่านั้น – คูปองแลกซื้อนี้ไม่สามารถนำมาแลกหรือเปลี่ยนเป็นเงินสดได้ กรณีที่ยอดซื้อต่ำกว่ามูลค่าของคูปองแลกซื้อ บริษัทฯ จะไม่คืนส่วนต่างของมูลค่าของคูปองแลกซื้อ – กรุณาเก็บเอกสารฉบับนี้ไว้กับท่านเพื่อเป็นหลักฐาน ในกรณีที่เอกสารชำรุดหรือเสียหาย ทางสายการบินจะไม่สามารถออกจดหมายฉบับใหม่ได้ และจะถือว่าท่านสละสิทธิ์ – ท่านสามารถศึกษารายละเอียดเพิ่มเติมได้ที่ www.counterservice.co.th หรือ เฟสบุ๊คของเคาน์เตอร์เซอร์วิส @Counterservice *บริษัท เคาน์เตอร์เซอร์วิส จำกัดขอสงวนสิทธิ์เปลี่ยนแปลงเงื่อนไขรายการส่งเสริมการขายนี้โดยไม่ต้องแจ้งล่วงหน้า ---คุณมีเวลาหลังจากกดรับสิทธิ์ 30 วินาที ---PromoCode นี้ใช้ได้ไม่จำกัด จนถึง 31 พฤษภาคม', 0, 13, 1, '0', '0000-00-00 00:00:00'),
(14, 0, '2018-04-01 00:00:00', '2018-07-31 00:00:00', '2018-04-01 00:00:00', '2018-07-31 00:00:00', 'สั่งอาหาร จ่ายผ่าน Credit card รับส่วนลด 10% ใส่โค้ด 10PERCENTOFF', 'ลดสูงสุด 100 บาท/วัน --ทั้งหมด 500 สิทธิ์ จำกัด --10 สิทธิ์/ผู้ใช้  --สำหรับ ​MAMARIN และ sushi shin sukhumvit -- วันนี้-31 ก.ค. 61', 'promoBanner.jpg', 2, 10, 0, 100, 1, 0, 0, 500, 10, 0, '10PERCENTOFF_4', 'สายการบินไทยสมายล์ ร่วมกับ บริษัท เคาน์เตอร์เซอร์วิส มอบคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท เมื่อซื้อบัตรโดยสารของสายการบินไทยสมายล์ผ่านเคาน์เตอร์เซอร์วิส *เงื่อนไขเป็นไปตามที่กำหนด เงื่อนไขรายการส่งเสริมการขาย – รับคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท ท้ายสลิปเมื่อซื้อบัตรโดยสารสายการบินไทยสมายล์ผ่าน เคาน์เตอร์ เซอร์วิส (ร้าน 7-Eleven) ระหว่างวันที่ 15 ธันวาคม 2559 ถึง วันที่ 5 มกราคม 2560 – 1 คูปองแลกซื้อ ต่อ 1 สลิป/transaction เท่านั้น ยอดเงินต่อ 1 สลิป/transaction จะต้องไม่เกิน 60,000 บาท – คูปองแลกซื้อนี้สามารถใช้ได้ระหว่างวันที่ 15 ธันวาคม 2559 ถึง 15 มกราคม 2560 เท่านั้น – คูปองแลกซื้อนี้ไม่สามารถนำมาแลกหรือเปลี่ยนเป็นเงินสดได้ กรณีที่ยอดซื้อต่ำกว่ามูลค่าของคูปองแลกซื้อ บริษัทฯ จะไม่คืนส่วนต่างของมูลค่าของคูปองแลกซื้อ – กรุณาเก็บเอกสารฉบับนี้ไว้กับท่านเพื่อเป็นหลักฐาน ในกรณีที่เอกสารชำรุดหรือเสียหาย ทางสายการบินจะไม่สามารถออกจดหมายฉบับใหม่ได้ และจะถือว่าท่านสละสิทธิ์ – ท่านสามารถศึกษารายละเอียดเพิ่มเติมได้ที่ www.counterservice.co.th หรือ เฟสบุ๊คของเคาน์เตอร์เซอร์วิส @Counterservice *บริษัท เคาน์เตอร์เซอร์วิส จำกัดขอสงวนสิทธิ์เปลี่ยนแปลงเงื่อนไขรายการส่งเสริมการขายนี้โดยไม่ต้องแจ้งล่วงหน้า ---คุณมีเวลาหลังจากกดรับสิทธิ์ 30 วินาที ---PromoCode นี้ใช้ได้ไม่จำกัด จนถึง 31 พฤษภาคม', 0, 14, 1, '0', '0000-00-00 00:00:00'),
(15, 0, '2018-04-01 00:00:00', '2018-07-31 00:00:00', '2018-04-01 00:00:00', '2018-07-31 00:00:00', 'Cheesy King Gyoza ห้วยขวาง', 'เพียง 498 บาท เมื่อสั่งเกี๊ยวซ่าหมูดับเบิ้ลชีส 24 ชิ้น คู่กับ เกี๊ยวซ่าไก่เผ็ด -- วันนี้-31 ก.ค. 61', 'promoThumbNail.jpg', 1, 10, 0, 12, 1, 0, 0, 500, 10, 0, 'DISCOUNT10CHEESY4', 'สายการบินไทยสมายล์ ร่วมกับ บริษัท เคาน์เตอร์เซอร์วิส มอบคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท เมื่อซื้อบัตรโดยสารของสายการบินไทยสมายล์ผ่านเคาน์เตอร์เซอร์วิส *เงื่อนไขเป็นไปตามที่กำหนด เงื่อนไขรายการส่งเสริมการขาย – รับคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท ท้ายสลิปเมื่อซื้อบัตรโดยสารสายการบินไทยสมายล์ผ่าน เคาน์เตอร์ เซอร์วิส (ร้าน 7-Eleven) ระหว่างวันที่ 15 ธันวาคม 2559 ถึง วันที่ 5 มกราคม 2560 – 1 คูปองแลกซื้อ ต่อ 1 สลิป/transaction เท่านั้น ยอดเงินต่อ 1 สลิป/transaction จะต้องไม่เกิน 60,000 บาท – คูปองแลกซื้อนี้สามารถใช้ได้ระหว่างวันที่ 15 ธันวาคม 2559 ถึง 15 มกราคม 2560 เท่านั้น – คูปองแลกซื้อนี้ไม่สามารถนำมาแลกหรือเปลี่ยนเป็นเงินสดได้ กรณีที่ยอดซื้อต่ำกว่ามูลค่าของคูปองแลกซื้อ บริษัทฯ จะไม่คืนส่วนต่างของมูลค่าของคูปองแลกซื้อ – กรุณาเก็บเอกสารฉบับนี้ไว้กับท่านเพื่อเป็นหลักฐาน ในกรณีที่เอกสารชำรุดหรือเสียหาย ทางสายการบินจะไม่สามารถออกจดหมายฉบับใหม่ได้ และจะถือว่าท่านสละสิทธิ์ – ท่านสามารถศึกษารายละเอียดเพิ่มเติมได้ที่ www.counterservice.co.th หรือ เฟสบุ๊คของเคาน์เตอร์เซอร์วิส @Counterservice *บริษัท เคาน์เตอร์เซอร์วิส จำกัดขอสงวนสิทธิ์เปลี่ยนแปลงเงื่อนไขรายการส่งเสริมการขายนี้โดยไม่ต้องแจ้งล่วงหน้า ---คุณมีเวลาหลังจากกดรับสิทธิ์ 30 วินาที ---PromoCode นี้ใช้ได้ไม่จำกัด จนถึง 31 พฤษภาคม', 1, 15, 1, '0', '0000-00-00 00:00:00'),
(16, 0, '2018-04-01 00:00:00', '2018-07-31 00:00:00', '2018-04-01 00:00:00', '2018-07-31 00:00:00', 'Crab and Claw (แคร็บ แอนด์ คลอว์) สยามพารากอน', 'เพียง 498 บาท เมื่อสั่งเกี๊ยวซ่าหมูดับเบิ้ลชีส 24 ชิ้น คู่กับ เกี๊ยวซ่าไก่เผ็ด -- วันนี้-31 ก.ค. 61', 'promoThumbNail.jpg', 2, 10, 0, 100, 1, 0, 0, 500, 10, 0, '10PERCENTOFFCRABCLAW4', 'สายการบินไทยสมายล์ ร่วมกับ บริษัท เคาน์เตอร์เซอร์วิส มอบคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท เมื่อซื้อบัตรโดยสารของสายการบินไทยสมายล์ผ่านเคาน์เตอร์เซอร์วิส *เงื่อนไขเป็นไปตามที่กำหนด เงื่อนไขรายการส่งเสริมการขาย – รับคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท ท้ายสลิปเมื่อซื้อบัตรโดยสารสายการบินไทยสมายล์ผ่าน เคาน์เตอร์ เซอร์วิส (ร้าน 7-Eleven) ระหว่างวันที่ 15 ธันวาคม 2559 ถึง วันที่ 5 มกราคม 2560 – 1 คูปองแลกซื้อ ต่อ 1 สลิป/transaction เท่านั้น ยอดเงินต่อ 1 สลิป/transaction จะต้องไม่เกิน 60,000 บาท – คูปองแลกซื้อนี้สามารถใช้ได้ระหว่างวันที่ 15 ธันวาคม 2559 ถึง 15 มกราคม 2560 เท่านั้น – คูปองแลกซื้อนี้ไม่สามารถนำมาแลกหรือเปลี่ยนเป็นเงินสดได้ กรณีที่ยอดซื้อต่ำกว่ามูลค่าของคูปองแลกซื้อ บริษัทฯ จะไม่คืนส่วนต่างของมูลค่าของคูปองแลกซื้อ – กรุณาเก็บเอกสารฉบับนี้ไว้กับท่านเพื่อเป็นหลักฐาน ในกรณีที่เอกสารชำรุดหรือเสียหาย ทางสายการบินจะไม่สามารถออกจดหมายฉบับใหม่ได้ และจะถือว่าท่านสละสิทธิ์ – ท่านสามารถศึกษารายละเอียดเพิ่มเติมได้ที่ www.counterservice.co.th หรือ เฟสบุ๊คของเคาน์เตอร์เซอร์วิส @Counterservice *บริษัท เคาน์เตอร์เซอร์วิส จำกัดขอสงวนสิทธิ์เปลี่ยนแปลงเงื่อนไขรายการส่งเสริมการขายนี้โดยไม่ต้องแจ้งล่วงหน้า ---คุณมีเวลาหลังจากกดรับสิทธิ์ 30 วินาที ---PromoCode นี้ใช้ได้ไม่จำกัด จนถึง 31 พฤษภาคม', 1, 16, 1, '0', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `promotionbranch`
--

CREATE TABLE `promotionbranch` (
  `PromotionBranchID` int(11) NOT NULL,
  `PromotionID` int(11) NOT NULL,
  `BranchID` int(11) NOT NULL,
  `ModifiedUser` varchar(50) NOT NULL,
  `ModifiedDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `promotionbranch`
--

INSERT INTO `promotionbranch` (`PromotionBranchID`, `PromotionID`, `BranchID`, `ModifiedUser`, `ModifiedDate`) VALUES
(1, 1, 1, '', '0000-00-00 00:00:00'),
(2, 2, 1, '', '0000-00-00 00:00:00'),
(3, 3, 1, '', '0000-00-00 00:00:00'),
(4, 4, 3, '', '0000-00-00 00:00:00'),
(5, 5, 1, '', '0000-00-00 00:00:00'),
(6, 6, 1, '', '0000-00-00 00:00:00'),
(7, 7, 1, '', '0000-00-00 00:00:00'),
(8, 8, 3, '', '0000-00-00 00:00:00'),
(9, 9, 1, '', '0000-00-00 00:00:00'),
(10, 10, 1, '', '0000-00-00 00:00:00'),
(11, 11, 2, '', '0000-00-00 00:00:00'),
(12, 12, 3, '', '0000-00-00 00:00:00'),
(13, 13, 1, '', '0000-00-00 00:00:00'),
(14, 14, 1, '', '0000-00-00 00:00:00'),
(15, 15, 2, '', '0000-00-00 00:00:00'),
(16, 16, 3, '', '0000-00-00 00:00:00'),
(17, 1, 2, '', '0000-00-00 00:00:00'),
(18, 2, 2, '', '0000-00-00 00:00:00'),
(19, 5, 2, '', '0000-00-00 00:00:00'),
(20, 6, 2, '', '0000-00-00 00:00:00'),
(21, 9, 2, '', '0000-00-00 00:00:00'),
(22, 10, 2, '', '0000-00-00 00:00:00'),
(23, 13, 2, '', '0000-00-00 00:00:00'),
(24, 14, 2, '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `promotionuser`
--

CREATE TABLE `promotionuser` (
  `PromotionUserID` int(11) NOT NULL COMMENT 'table นี้ สำหรับกรณี promotion ไม่ได้ allowForEveryone',
  `PromotionID` int(11) NOT NULL,
  `UserAccountID` int(11) NOT NULL,
  `ModifiedUser` varchar(50) NOT NULL,
  `ModifiedDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `promotionuser`
--

INSERT INTO `promotionuser` (`PromotionUserID`, `PromotionID`, `UserAccountID`, `ModifiedUser`, `ModifiedDate`) VALUES
(1, 1, 12, '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `RatingID` int(11) NOT NULL,
  `ReceiptID` int(11) NOT NULL,
  `Score` int(11) NOT NULL,
  `Comment` varchar(2000) NOT NULL,
  `ModifiedUser` varchar(50) NOT NULL,
  `ModifiedDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`RatingID`, `ReceiptID`, `Score`, `Comment`, `ModifiedUser`, `ModifiedDate`) VALUES
(1, 45, 3, 'Test', 'jinglejill@hotmail.com', '2018-07-30 06:40:41'),
(2, 48, 4, 'Abc', 'jinglejill@hotmail.com', '2018-07-30 07:24:58');

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE `receipt` (
  `ReceiptID` int(11) NOT NULL,
  `BranchID` int(11) NOT NULL,
  `CustomerTableID` int(11) NOT NULL,
  `MemberID` int(11) NOT NULL,
  `ServingPerson` int(11) NOT NULL,
  `CustomerType` tinyint(4) NOT NULL COMMENT '1=eat-in,2=take away,3=delivery',
  `OpenTableDate` datetime NOT NULL,
  `CashAmount` float NOT NULL,
  `CashReceive` float NOT NULL,
  `CreditCardType` tinyint(4) NOT NULL,
  `CreditCardNo` varchar(50) NOT NULL,
  `CreditCardAmount` float NOT NULL,
  `TransferDate` datetime NOT NULL,
  `TransferAmount` float NOT NULL,
  `Remark` varchar(200) NOT NULL,
  `DiscountType` tinyint(4) NOT NULL COMMENT '0=no,1=baht,2=percent',
  `DiscountAmount` float NOT NULL,
  `DiscountValue` float NOT NULL,
  `DiscountReason` varchar(150) NOT NULL,
  `ServiceChargePercent` float NOT NULL,
  `ServiceChargeValue` float NOT NULL,
  `PriceIncludeVat` tinyint(4) NOT NULL,
  `VatPercent` float NOT NULL,
  `VatValue` float NOT NULL,
  `Status` tinyint(4) NOT NULL COMMENT '1=serving,2=paid,4=paid(split order),5=processing,6=served,7=pending cancel,8=pending dispute,9=cancelled,10=dispute finish',
  `StatusRoute` varchar(200) NOT NULL,
  `ReceiptNoID` varchar(16) NOT NULL,
  `ReceiptNoTaxID` varchar(16) NOT NULL,
  `ReceiptDate` datetime NOT NULL,
  `SendToKitchenDate` datetime NOT NULL,
  `DeliveredDate` datetime NOT NULL,
  `MergeReceiptID` int(11) NOT NULL,
  `ModifiedUser` varchar(50) NOT NULL,
  `ModifiedDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `receipt`
--

INSERT INTO `receipt` (`ReceiptID`, `BranchID`, `CustomerTableID`, `MemberID`, `ServingPerson`, `CustomerType`, `OpenTableDate`, `CashAmount`, `CashReceive`, `CreditCardType`, `CreditCardNo`, `CreditCardAmount`, `TransferDate`, `TransferAmount`, `Remark`, `DiscountType`, `DiscountAmount`, `DiscountValue`, `DiscountReason`, `ServiceChargePercent`, `ServiceChargeValue`, `PriceIncludeVat`, `VatPercent`, `VatValue`, `Status`, `StatusRoute`, `ReceiptNoID`, `ReceiptNoTaxID`, `ReceiptDate`, `SendToKitchenDate`, `DeliveredDate`, `MergeReceiptID`, `ModifiedUser`, `ModifiedDate`) VALUES
(1, 1, 1, 5, 0, 4, '2018-07-27 17:25:27', 0, 0, 5, '4242424242424242', 564.96, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 48, 0, 7, 36.96, 11, '2,5,6,8,11', '00000176', '', '2018-07-27 17:25:27', '2018-07-28 08:25:21', '2018-07-28 08:25:25', 0, 'jinglejill@hotmail.com', '2018-07-30 07:45:12'),
(2, 1, 2, 5, 0, 4, '2018-07-27 17:25:50', 0, 0, 5, '4242424242424242', 233.05, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 19.8, 0, 7, 15.25, 10, '2,5,10', '00000270', '', '2018-07-27 17:25:50', '2018-07-28 08:25:35', '0000-00-00 00:00:00', 0, 'jinglejill@hotmail.com', '2018-07-28 08:25:51'),
(3, 1, 3, 5, 0, 4, '2018-07-27 17:26:13', 0, 0, 5, '4242424242424242', 388.41, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 33, 0, 7, 25.41, 9, '2,9', '00000353', '', '2018-07-27 17:26:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'jinglejill@hotmail.com', '2018-07-28 08:26:12'),
(4, 1, 4, 5, 0, 4, '2018-07-27 17:26:34', 0, 0, 5, '4242424242424242', 653.24, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 55.5, 0, 7, 42.74, 10, '2,5,6,8,10', '00000413', '', '2018-07-27 17:26:34', '2018-07-28 19:06:21', '2018-07-29 08:23:22', 0, 'jinglejill@hotmail.com', '2018-07-30 15:35:39'),
(5, 1, 5, 5, 0, 4, '2018-07-27 17:26:58', 0, 0, 5, '4242424242424242', 407.24, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 34.6, 0, 7, 26.64, 10, '2,5,6,8,10,10', '00000535', '', '2018-07-27 17:26:58', '2018-07-28 19:12:43', '2018-07-30 07:30:14', 0, 'jinglejill@hotmail.com', '2018-07-30 15:53:21'),
(6, 1, 6, 5, 0, 4, '2018-07-27 17:27:27', 0, 0, 5, '4242424242424242', 203.62, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 17.3, 0, 7, 13.32, 11, '2,5,6,8,11', '00000631', '', '2018-07-27 17:27:27', '2018-07-28 19:16:31', '2018-07-30 07:31:18', 0, 'jinglejill@hotmail.com', '2018-07-30 17:21:39'),
(7, 1, 7, 5, 0, 4, '2018-07-27 17:27:48', 0, 0, 5, '4242424242424242', 582.62, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 49.5, 0, 7, 38.12, 11, '2,5,6,8,11', '00000715', '', '2018-07-27 17:27:48', '2018-07-28 19:19:57', '2018-07-30 07:34:53', 0, 'jinglejill@hotmail.com', '2018-07-30 17:23:51'),
(8, 1, 8, 5, 0, 4, '2018-07-27 17:28:17', 0, 0, 5, '4242424242424242', 288.37, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 24.5, 0, 7, 18.87, 8, '2,5,6,8', '00000826', '', '2018-07-27 17:28:17', '2018-07-28 19:28:40', '2018-07-30 07:37:08', 0, 'jinglejill@hotmail.com', '2018-07-30 16:53:52'),
(9, 1, 9, 5, 0, 4, '2018-07-27 17:28:43', 0, 0, 5, '4242424242424242', 722.68, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 61.4, 0, 7, 47.28, 6, '2,5,6', '00000922', '', '2018-07-27 17:28:43', '2018-07-28 19:35:02', '2018-07-30 07:37:42', 0, 'jinglejill@hotmail.com', '2018-07-30 07:37:42'),
(10, 1, 10, 5, 0, 4, '2018-07-27 17:29:49', 0, 0, 5, '4242424242424242', 315.44, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 26.8, 0, 7, 20.64, 6, '2,5,6', '00001064', '', '2018-07-27 17:29:49', '2018-07-28 19:36:02', '2018-07-30 07:38:08', 0, 'jinglejill@hotmail.com', '2018-07-30 07:38:08'),
(11, 1, 21, 5, 0, 4, '2018-07-27 17:30:26', 0, 0, 5, '4242424242424242', 765.05, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 65, 0, 7, 50.05, 6, '2,5,6', '00001157', '', '2018-07-27 17:30:26', '2018-07-28 19:36:04', '2018-07-30 07:38:30', 0, 'jinglejill@hotmail.com', '2018-07-30 07:38:30'),
(12, 1, 22, 5, 0, 4, '2018-07-27 17:30:52', 0, 0, 5, '4242424242424242', 419.01, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 35.6, 0, 7, 27.41, 10, '2,5,10', '00001225', '', '2018-07-27 17:30:52', '2018-07-28 19:37:11', '0000-00-00 00:00:00', 0, 'jinglejill@hotmail.com', '2018-07-30 07:39:04'),
(13, 1, 23, 5, 0, 4, '2018-07-27 17:31:23', 0, 0, 5, '4242424242424242', 582.62, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 49.5, 0, 7, 38.12, 6, '2,5,6', '00001378', '', '2018-07-27 17:31:23', '2018-07-28 19:37:34', '2018-07-30 16:35:33', 0, 'jinglejill@hotmail.com', '2018-07-30 16:35:33'),
(14, 1, 24, 5, 0, 4, '2018-07-27 17:31:48', 0, 0, 5, '4242424242424242', 435.49, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 37, 0, 7, 28.49, 10, '2,5,10', '00001414', '', '2018-07-27 17:31:48', '2018-07-28 19:38:05', '0000-00-00 00:00:00', 0, 'jinglejill@hotmail.com', '2018-07-30 17:40:09'),
(15, 1, 25, 5, 0, 4, '2018-07-27 17:32:43', 0, 0, 5, '4242424242424242', 541.42, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 46, 0, 7, 35.42, 10, '2,5,10', '00001578', '', '2018-07-27 17:32:43', '2018-07-28 19:49:04', '0000-00-00 00:00:00', 0, 'jinglejill@hotmail.com', '2018-07-31 03:32:14'),
(16, 1, 2, 5, 0, 4, '2018-07-28 06:13:48', 0, 0, 5, '4242424242424242', 294.25, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 25, 0, 7, 19.25, 6, '2,5,6', '00001606', '', '2018-07-28 06:13:48', '2018-07-29 08:12:42', '2018-07-31 04:10:31', 0, 'jinglejill@hotmail.com', '2018-07-31 04:10:31'),
(17, 1, 1, 5, 0, 4, '2018-07-28 07:44:00', 0, 0, 5, '4242424242424242', 504.93, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 42.9, 0, 7, 33.03, 6, '2,5,6', '00001730', '', '2018-07-28 07:44:00', '2018-07-29 08:13:09', '2018-07-31 04:11:10', 0, 'jinglejill@hotmail.com', '2018-07-31 04:11:10'),
(18, 1, 2, 5, 0, 4, '2018-07-28 07:59:46', 0, 0, 5, '4242424242424242', 270.71, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 23, 0, 7, 17.71, 10, '2,5,10', '00001895', '', '2018-07-28 07:59:46', '2018-07-29 15:41:55', '0000-00-00 00:00:00', 0, 'jinglejill@hotmail.com', '2018-07-30 17:44:57'),
(19, 1, 4, 5, 0, 4, '2018-07-28 08:05:24', 0, 0, 5, '4242424242424242', 217.75, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 18.5, 0, 7, 14.25, 6, '2,5,6', '00001974', '', '2018-07-28 08:05:24', '2018-07-29 15:42:45', '2018-07-31 04:11:34', 0, 'jinglejill@hotmail.com', '2018-07-31 04:11:34'),
(20, 1, 1, 5, 0, 4, '2018-07-28 08:16:32', 0, 0, 5, '4242424242424242', 294.25, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 25, 0, 7, 19.25, 6, '2,5,6', '00002033', '', '2018-07-28 08:16:32', '2018-07-29 15:46:09', '2018-07-31 04:11:56', 0, 'jinglejill@hotmail.com', '2018-07-31 04:11:56'),
(21, 1, 5, 5, 0, 4, '2018-07-28 08:23:50', 0, 0, 5, '4242424242424242', 116.52, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 9.9, 0, 7, 7.62, 5, '2,5', '00002136', '', '2018-07-28 08:23:50', '2018-07-29 16:08:45', '0000-00-00 00:00:00', 0, 'jinglejill@hotmail.com', '2018-07-29 16:08:45'),
(22, 1, 1, 5, 0, 4, '2018-07-29 16:34:25', 0, 0, 5, '4242424242424242', 588.5, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 50, 0, 7, 38.5, 5, '2,5', '00002260', '', '2018-07-29 16:34:25', '2018-07-29 16:35:44', '0000-00-00 00:00:00', 0, 'jinglejill@hotmail.com', '2018-07-29 16:35:44'),
(23, 1, 2, 5, 0, 4, '2018-07-29 16:34:38', 0, 0, 5, '4242424242424242', 270.71, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 23, 0, 7, 17.71, 5, '2,5', '00002301', '', '2018-07-29 16:34:38', '2018-07-29 16:41:19', '0000-00-00 00:00:00', 0, 'jinglejill@hotmail.com', '2018-07-29 16:41:19'),
(24, 1, 1, 5, 0, 4, '2018-07-29 16:34:55', 0, 0, 5, '4242424242424242', 116.52, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 9.9, 0, 7, 7.62, 5, '2,5', '00002482', '', '2018-07-29 16:34:55', '2018-07-29 16:54:13', '0000-00-00 00:00:00', 0, 'jinglejill@hotmail.com', '2018-07-29 16:54:13'),
(25, 1, 4, 5, 0, 4, '2018-07-29 16:35:08', 0, 0, 5, '4242424242424242', 388.41, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 33, 0, 7, 25.41, 5, '2,5', '00002546', '', '2018-07-29 16:35:08', '2018-07-29 16:55:35', '0000-00-00 00:00:00', 0, 'jinglejill@hotmail.com', '2018-07-29 16:55:35'),
(26, 1, 5, 5, 0, 4, '2018-07-29 16:35:21', 0, 0, 5, '4242424242424242', 217.75, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 18.5, 0, 7, 14.25, 5, '2,5', '00002626', '', '2018-07-29 16:35:21', '2018-07-29 16:56:48', '0000-00-00 00:00:00', 0, 'jinglejill@hotmail.com', '2018-07-29 16:56:48'),
(27, 1, 1, 5, 0, 4, '2018-07-29 16:58:27', 0, 0, 5, '4242424242424242', 588.5, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 50, 0, 7, 38.5, 5, '2,5', '00002792', '', '2018-07-29 16:58:27', '2018-07-29 16:59:54', '0000-00-00 00:00:00', 0, 'jinglejill@hotmail.com', '2018-07-29 16:59:54'),
(28, 1, 2, 5, 0, 4, '2018-07-29 16:58:42', 0, 0, 5, '4242424242424242', 270.71, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 23, 0, 7, 17.71, 5, '2,5', '00002834', '', '2018-07-29 16:58:42', '2018-07-29 17:01:49', '0000-00-00 00:00:00', 0, 'jinglejill@hotmail.com', '2018-07-29 17:01:49'),
(29, 1, 3, 5, 0, 4, '2018-07-29 16:58:56', 0, 0, 5, '4242424242424242', 116.52, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 9.9, 0, 7, 7.62, 5, '2,5', '00002901', '', '2018-07-29 16:58:56', '2018-07-29 17:03:29', '0000-00-00 00:00:00', 0, 'jinglejill@hotmail.com', '2018-07-29 17:03:29'),
(30, 1, 4, 5, 0, 4, '2018-07-29 16:59:09', 0, 0, 5, '4242424242424242', 388.41, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 33, 0, 7, 25.41, 5, '2,5', '00003097', '', '2018-07-29 16:59:09', '2018-07-29 17:03:55', '0000-00-00 00:00:00', 0, 'jinglejill@hotmail.com', '2018-07-29 17:03:55'),
(31, 1, 5, 5, 0, 4, '2018-07-29 16:59:22', 0, 0, 5, '4242424242424242', 217.75, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 18.5, 0, 7, 14.25, 5, '2,5', '00003166', '', '2018-07-29 16:59:22', '2018-07-29 17:05:28', '0000-00-00 00:00:00', 0, 'jinglejill@hotmail.com', '2018-07-29 17:05:28'),
(32, 1, 1, 5, 0, 4, '2018-07-29 17:04:24', 0, 0, 5, '4242424242424242', 882.75, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 75, 0, 7, 57.75, 5, '2,5', '00003253', '', '2018-07-29 17:04:24', '2018-07-29 17:07:16', '0000-00-00 00:00:00', 0, 'jinglejill@hotmail.com', '2018-07-29 17:07:16'),
(33, 1, 2, 5, 0, 4, '2018-07-29 17:04:37', 0, 0, 5, '4242424242424242', 541.42, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 46, 0, 7, 35.42, 5, '2,5', '00003369', '', '2018-07-29 17:04:37', '2018-07-29 17:13:46', '0000-00-00 00:00:00', 0, 'jinglejill@hotmail.com', '2018-07-29 17:13:46'),
(34, 1, 3, 5, 0, 4, '2018-07-29 17:04:49', 0, 0, 5, '4242424242424242', 116.52, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 9.9, 0, 7, 7.62, 5, '2,5', '00003476', '', '2018-07-29 17:04:49', '2018-07-29 17:17:38', '0000-00-00 00:00:00', 0, 'jinglejill@hotmail.com', '2018-07-29 17:17:38'),
(35, 1, 4, 5, 0, 4, '2018-07-29 17:05:01', 0, 0, 5, '4242424242424242', 388.41, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 33, 0, 7, 25.41, 5, '2,5', '00003572', '', '2018-07-29 17:05:01', '2018-07-29 18:08:00', '0000-00-00 00:00:00', 0, 'jinglejill@hotmail.com', '2018-07-29 18:08:00'),
(36, 1, 5, 5, 0, 4, '2018-07-29 17:05:14', 0, 0, 5, '4242424242424242', 217.75, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 18.5, 0, 7, 14.25, 5, '2,5', '00003636', '', '2018-07-29 17:05:14', '2018-07-29 18:08:55', '0000-00-00 00:00:00', 0, 'jinglejill@hotmail.com', '2018-07-29 18:08:55'),
(37, 1, 1, 5, 0, 4, '2018-07-29 18:46:57', 0, 0, 5, '4242424242424242', 294.25, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 25, 0, 7, 19.25, 5, '2,5', '00003772', '', '2018-07-29 18:46:57', '2018-07-29 18:48:06', '0000-00-00 00:00:00', 0, 'jinglejill@hotmail.com', '2018-07-29 18:48:06'),
(38, 1, 2, 5, 0, 4, '2018-07-29 18:47:11', 0, 0, 5, '4242424242424242', 270.71, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 23, 0, 7, 17.71, 5, '2,5', '00003832', '', '2018-07-29 18:47:11', '2018-07-29 20:09:22', '0000-00-00 00:00:00', 0, 'jinglejill@hotmail.com', '2018-07-29 20:09:22'),
(39, 1, 1, 5, 0, 4, '2018-07-29 20:08:37', 0, 0, 5, '4242424242424242', 217.75, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 18.5, 0, 7, 14.25, 5, '2,5', '00003994', '', '2018-07-29 20:08:37', '2018-07-29 20:29:53', '0000-00-00 00:00:00', 0, 'jinglejill@hotmail.com', '2018-07-29 20:29:53'),
(40, 1, 3, 5, 0, 4, '2018-07-29 20:08:52', 0, 0, 5, '4242424242424242', 270.71, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 23, 0, 7, 17.71, 5, '2,5', '00004066', '', '2018-07-29 20:08:52', '2018-07-29 20:31:30', '0000-00-00 00:00:00', 0, 'jinglejill@hotmail.com', '2018-07-29 20:31:30'),
(41, 1, 4, 5, 0, 4, '2018-07-29 20:09:07', 0, 0, 5, '4242424242424242', 217.75, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 18.5, 0, 7, 14.25, 5, '2,5', '00004115', '', '2018-07-29 20:09:07', '2018-07-29 20:31:54', '0000-00-00 00:00:00', 0, 'jinglejill@hotmail.com', '2018-07-29 20:31:54'),
(42, 1, 1, 5, 0, 4, '2018-07-29 20:41:29', 0, 0, 5, '4242424242424242', 294.25, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 25, 0, 7, 19.25, 5, '2,5', '00004286', '', '2018-07-29 20:41:29', '2018-07-30 06:09:55', '0000-00-00 00:00:00', 0, 'jinglejill@hotmail.com', '2018-07-30 06:09:55'),
(43, 1, 4, 5, 0, 4, '2018-07-29 20:41:43', 0, 0, 5, '4242424242424242', 388.41, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 33, 0, 7, 25.41, 5, '2,5', '00004377', '', '2018-07-29 20:41:43', '2018-07-30 06:41:38', '0000-00-00 00:00:00', 0, 'jinglejill@hotmail.com', '2018-07-30 06:41:38'),
(44, 1, 2, 5, 0, 4, '2018-07-30 06:09:09', 0, 0, 5, '4242424242424242', 294.25, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 25, 0, 7, 19.25, 5, '2,5', '00004470', '', '2018-07-30 06:09:09', '2018-07-30 07:25:05', '0000-00-00 00:00:00', 0, 'jinglejill@hotmail.com', '2018-07-30 07:25:05'),
(45, 1, 4, 5, 0, 4, '2018-07-30 06:09:29', 0, 0, 5, '4242424242424242', 334.27, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 28.4, 0, 7, 21.87, 5, '2,5', '00004546', '', '2018-07-30 06:09:29', '2018-07-30 07:25:35', '0000-00-00 00:00:00', 0, 'jinglejill@hotmail.com', '2018-07-30 07:25:35'),
(46, 1, 1, 5, 0, 4, '2018-07-30 07:23:47', 0, 0, 5, '4242424242424242', 294.25, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 25, 0, 7, 19.25, 10, '2,5,8,10', '00004662', '', '2018-07-30 07:23:47', '2018-07-30 07:29:38', '0000-00-00 00:00:00', 0, 'jinglejill@hotmail.com', '2018-07-30 07:41:50'),
(47, 1, 2, 5, 0, 4, '2018-07-30 07:24:04', 0, 0, 5, '4242424242424242', 270.71, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 23, 0, 7, 17.71, 9, '2,9', '00004779', '', '2018-07-30 07:24:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'jinglejill@hotmail.com', '2018-07-30 07:40:28'),
(48, 1, 3, 5, 0, 4, '2018-07-30 07:24:19', 0, 0, 5, '4242424242424242', 116.52, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 9.9, 0, 7, 7.62, 5, '2,5', '00004816', '', '2018-07-30 07:24:19', '2018-07-30 15:41:42', '0000-00-00 00:00:00', 0, 'jinglejill@hotmail.com', '2018-07-30 15:41:42'),
(49, 1, 4, 5, 0, 4, '2018-07-30 07:24:33', 0, 0, 5, '4242424242424242', 217.75, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 18.5, 0, 7, 14.25, 2, '2', '00004971', '', '2018-07-30 07:24:33', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'jinglejill@hotmail.com', '2018-07-30 07:24:33'),
(50, 1, 1, 5, 0, 4, '2018-07-31 16:57:40', 0, 0, 5, '4242424242424242', 270.71, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 23, 0, 7, 17.71, 2, '2', '00005048', '', '2018-07-31 16:57:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'jinglejill@hotmail.com', '2018-07-31 16:57:40'),
(51, 1, 4, 5, 0, 4, '2018-07-31 16:58:28', 0, 0, 5, '4242424242424242', 294.25, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 25, 0, 7, 19.25, 2, '2', '00005143', '', '2018-07-31 16:58:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'jinglejill@hotmail.com', '2018-07-31 16:58:28'),
(52, 1, 3, 5, 0, 4, '2018-07-31 17:00:17', 0, 0, 5, '4242424242424242', 388.41, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 33, 0, 7, 25.41, 2, '2', '00005220', '', '2018-07-31 17:00:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'jinglejill@hotmail.com', '2018-07-31 17:00:17'),
(53, 1, 4, 5, 0, 4, '2018-07-31 17:02:51', 0, 0, 5, '4242424242424242', 217.75, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 18.5, 0, 7, 14.25, 2, '2', '00005338', '', '2018-07-31 17:02:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'jinglejill@hotmail.com', '2018-07-31 17:02:51'),
(54, 1, 4, 5, 0, 4, '2018-07-31 17:04:15', 0, 0, 5, '4242424242424242', 387.23, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 32.9, 0, 7, 25.33, 2, '2', '00005408', '', '2018-07-31 17:04:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'jinglejill@hotmail.com', '2018-07-31 17:04:15'),
(55, 1, 4, 5, 0, 4, '2018-07-31 17:06:58', 0, 0, 5, '4242424242424242', 775.64, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 65.9, 0, 7, 50.74, 2, '2', '00005548', '', '2018-07-31 17:06:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'jinglejill@hotmail.com', '2018-07-31 17:06:58'),
(56, 1, 1, 5, 0, 4, '2018-07-31 17:07:59', 0, 0, 5, '4242424242424242', 294.25, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 25, 0, 7, 19.25, 2, '2', '00005616', '', '2018-07-31 17:07:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'jinglejill@hotmail.com', '2018-07-31 17:07:59'),
(57, 1, 4, 5, 0, 4, '2018-07-31 17:37:43', 0, 0, 5, '4242424242424242', 294.25, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 25, 0, 7, 19.25, 2, '2', '00005767', '', '2018-07-31 17:37:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'jinglejill@hotmail.com', '2018-07-31 17:37:43'),
(58, 1, 4, 5, 0, 4, '2018-07-31 18:57:51', 0, 0, 5, '4242424242424242', 564.96, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 48, 0, 7, 36.96, 2, '2', '00005807', '', '2018-07-31 18:57:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'jinglejill@hotmail.com', '2018-07-31 18:57:51'),
(59, 1, 1, 5, 0, 4, '2018-07-31 18:59:15', 0, 0, 5, '4242424242424242', 116.52, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 9.9, 0, 7, 7.62, 2, '2', '00005978', '', '2018-07-31 18:59:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'jinglejill@hotmail.com', '2018-07-31 18:59:15'),
(60, 1, 4, 5, 0, 4, '2018-07-31 19:00:56', 0, 0, 5, '4242424242424242', 334.27, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 10, 28.4, 0, 7, 21.87, 2, '2', '00006064', '', '2018-07-31 19:00:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'jinglejill@hotmail.com', '2018-07-31 19:00:56'),
(61, 2, 1, 6, 0, 4, '2018-08-01 05:10:22', 0, 0, 5, '4242424242424242', 352.03, '1900-01-01 00:00:00', 0, '', 0, 0, 0, '', 0, 0, 0, 7, 23.03, 2, '2', '00006170', '', '2018-08-01 05:10:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'Natee.rueng@gmail.com', '2018-08-01 05:10:22');

-- --------------------------------------------------------

--
-- Table structure for table `recommendshop`
--

CREATE TABLE `recommendshop` (
  `RecommendShopID` int(11) NOT NULL,
  `UserAccountID` int(11) NOT NULL,
  `Text` varchar(2000) NOT NULL,
  `Type` int(11) NOT NULL,
  `ModifiedUser` varchar(50) NOT NULL,
  `ModifiedDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rewardpoint`
--

CREATE TABLE `rewardpoint` (
  `RewardPointID` int(11) NOT NULL,
  `MemberID` int(11) NOT NULL,
  `ReceiptID` int(11) NOT NULL,
  `Point` float NOT NULL,
  `Status` tinyint(4) NOT NULL COMMENT '1=in,-1=out,0=choose to use, will change status when close table',
  `PromoCodeID` int(11) NOT NULL,
  `ModifiedUser` varchar(50) NOT NULL,
  `ModifiedDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rewardpoint`
--

INSERT INTO `rewardpoint` (`RewardPointID`, `MemberID`, `ReceiptID`, `Point`, `Status`, `PromoCodeID`, `ModifiedUser`, `ModifiedDate`) VALUES
(1, 5, 1, 112.992, 1, 0, 'jinglejill@hotmail.com', '2018-07-27 17:25:27'),
(2, 5, 2, 46.61, 1, 0, 'jinglejill@hotmail.com', '2018-07-27 17:25:50'),
(3, 5, 3, 77.682, 1, 0, 'jinglejill@hotmail.com', '2018-07-27 17:26:13'),
(4, 5, 4, 130.648, 1, 0, 'jinglejill@hotmail.com', '2018-07-27 17:26:34'),
(5, 5, 5, 81.448, 1, 0, 'jinglejill@hotmail.com', '2018-07-27 17:26:58'),
(6, 5, 6, 40.724, 1, 0, 'jinglejill@hotmail.com', '2018-07-27 17:27:27'),
(7, 5, 7, 116.524, 1, 0, 'jinglejill@hotmail.com', '2018-07-27 17:27:48'),
(8, 5, 8, 57.674, 1, 0, 'jinglejill@hotmail.com', '2018-07-27 17:28:17'),
(9, 5, 9, 144.536, 1, 0, 'jinglejill@hotmail.com', '2018-07-27 17:28:43'),
(10, 5, 10, 63.088, 1, 0, 'jinglejill@hotmail.com', '2018-07-27 17:29:49'),
(11, 5, 11, 153.01, 1, 0, 'jinglejill@hotmail.com', '2018-07-27 17:30:26'),
(12, 5, 12, 83.802, 1, 0, 'jinglejill@hotmail.com', '2018-07-27 17:30:52'),
(13, 5, 13, 116.524, 1, 0, 'jinglejill@hotmail.com', '2018-07-27 17:31:23'),
(14, 5, 14, 87.098, 1, 0, 'jinglejill@hotmail.com', '2018-07-27 17:31:48'),
(15, 5, 15, 108.284, 1, 0, 'jinglejill@hotmail.com', '2018-07-27 17:32:43'),
(16, 5, 16, 58.85, 1, 0, 'jinglejill@hotmail.com', '2018-07-28 06:13:48'),
(17, 5, 17, 100.986, 1, 0, 'jinglejill@hotmail.com', '2018-07-28 07:44:00'),
(18, 5, 18, 54.142, 1, 0, 'jinglejill@hotmail.com', '2018-07-28 07:59:46'),
(19, 5, 19, 43.55, 1, 0, 'jinglejill@hotmail.com', '2018-07-28 08:05:24'),
(20, 5, 20, 58.85, 1, 0, 'jinglejill@hotmail.com', '2018-07-28 08:16:32'),
(21, 5, 21, 23.304, 1, 0, 'jinglejill@hotmail.com', '2018-07-28 08:23:50'),
(22, 5, 22, 117.7, 1, 0, 'jinglejill@hotmail.com', '2018-07-29 16:34:25'),
(23, 5, 23, 54.142, 1, 0, 'jinglejill@hotmail.com', '2018-07-29 16:34:38'),
(24, 5, 24, 23.304, 1, 0, 'jinglejill@hotmail.com', '2018-07-29 16:34:55'),
(25, 5, 25, 77.682, 1, 0, 'jinglejill@hotmail.com', '2018-07-29 16:35:08'),
(26, 5, 26, 43.55, 1, 0, 'jinglejill@hotmail.com', '2018-07-29 16:35:21'),
(27, 5, 27, 117.7, 1, 0, 'jinglejill@hotmail.com', '2018-07-29 16:58:27'),
(28, 5, 28, 54.142, 1, 0, 'jinglejill@hotmail.com', '2018-07-29 16:58:42'),
(29, 5, 29, 23.304, 1, 0, 'jinglejill@hotmail.com', '2018-07-29 16:58:56'),
(30, 5, 30, 77.682, 1, 0, 'jinglejill@hotmail.com', '2018-07-29 16:59:09'),
(31, 5, 31, 43.55, 1, 0, 'jinglejill@hotmail.com', '2018-07-29 16:59:22'),
(32, 5, 32, 176.55, 1, 0, 'jinglejill@hotmail.com', '2018-07-29 17:04:24'),
(33, 5, 33, 108.284, 1, 0, 'jinglejill@hotmail.com', '2018-07-29 17:04:37'),
(34, 5, 34, 23.304, 1, 0, 'jinglejill@hotmail.com', '2018-07-29 17:04:49'),
(35, 5, 35, 77.682, 1, 0, 'jinglejill@hotmail.com', '2018-07-29 17:05:01'),
(36, 5, 36, 43.55, 1, 0, 'jinglejill@hotmail.com', '2018-07-29 17:05:14'),
(37, 5, 37, 58.85, 1, 0, 'jinglejill@hotmail.com', '2018-07-29 18:46:57'),
(38, 5, 38, 54.142, 1, 0, 'jinglejill@hotmail.com', '2018-07-29 18:47:11'),
(39, 5, 39, 43.55, 1, 0, 'jinglejill@hotmail.com', '2018-07-29 20:08:37'),
(40, 5, 40, 54.142, 1, 0, 'jinglejill@hotmail.com', '2018-07-29 20:08:52'),
(41, 5, 41, 43.55, 1, 0, 'jinglejill@hotmail.com', '2018-07-29 20:09:07'),
(42, 5, 42, 58.85, 1, 0, 'jinglejill@hotmail.com', '2018-07-29 20:41:29'),
(43, 5, 43, 77.682, 1, 0, 'jinglejill@hotmail.com', '2018-07-29 20:41:43'),
(44, 5, 44, 58.85, 1, 0, 'jinglejill@hotmail.com', '2018-07-30 06:09:09'),
(45, 5, 45, 66.854, 1, 0, 'jinglejill@hotmail.com', '2018-07-30 06:09:29'),
(46, 5, 46, 58.85, 1, 0, 'jinglejill@hotmail.com', '2018-07-30 07:23:47'),
(47, 5, 47, 54.142, 1, 0, 'jinglejill@hotmail.com', '2018-07-30 07:24:04'),
(48, 5, 48, 23.304, 1, 0, 'jinglejill@hotmail.com', '2018-07-30 07:24:19'),
(49, 5, 49, 43.55, 1, 0, 'jinglejill@hotmail.com', '2018-07-30 07:24:33'),
(50, 5, 0, 2000, -1, 1, 'jinglejill@hotmail.com', '2018-07-31 15:52:48'),
(51, 5, 50, 54.142, 1, 0, 'jinglejill@hotmail.com', '2018-07-31 16:57:40'),
(52, 5, 51, 58.85, 1, 0, 'jinglejill@hotmail.com', '2018-07-31 16:58:28'),
(53, 5, 52, 77.682, 1, 0, 'jinglejill@hotmail.com', '2018-07-31 17:00:17'),
(54, 5, 53, 43.55, 1, 0, 'jinglejill@hotmail.com', '2018-07-31 17:02:51'),
(55, 5, 54, 77.446, 1, 0, 'jinglejill@hotmail.com', '2018-07-31 17:04:15'),
(56, 5, 55, 155.128, 1, 0, 'jinglejill@hotmail.com', '2018-07-31 17:06:58'),
(57, 5, 56, 58.85, 1, 0, 'jinglejill@hotmail.com', '2018-07-31 17:07:59'),
(58, 5, 57, 58.85, 1, 0, 'jinglejill@hotmail.com', '2018-07-31 17:37:43'),
(59, 5, 58, 112.992, 1, 0, 'jinglejill@hotmail.com', '2018-07-31 18:57:51'),
(60, 5, 59, 23.304, 1, 0, 'jinglejill@hotmail.com', '2018-07-31 18:59:15'),
(61, 5, 60, 66.854, 1, 0, 'jinglejill@hotmail.com', '2018-07-31 19:00:56'),
(62, 5, 0, 2000, -1, 2, 'jinglejill@hotmail.com', '2018-07-31 19:02:53'),
(63, 6, 61, 70.406, 1, 0, 'Natee.rueng@gmail.com', '2018-08-01 05:10:22');

-- --------------------------------------------------------

--
-- Table structure for table `rewardprogram`
--

CREATE TABLE `rewardprogram` (
  `RewardProgramID` int(11) NOT NULL,
  `Type` tinyint(4) NOT NULL COMMENT '1=collect,-1=use',
  `StartDate` datetime NOT NULL,
  `EndDate` datetime NOT NULL,
  `SalesSpent` int(11) NOT NULL,
  `ReceivePoint` float NOT NULL,
  `PointSpent` int(11) NOT NULL,
  `DiscountType` tinyint(4) NOT NULL COMMENT '1=baht,2=percent',
  `DiscountAmount` float NOT NULL,
  `ModifiedUser` varchar(50) NOT NULL,
  `ModifiedDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rewardprogram`
--

INSERT INTO `rewardprogram` (`RewardProgramID`, `Type`, `StartDate`, `EndDate`, `SalesSpent`, `ReceivePoint`, `PointSpent`, `DiscountType`, `DiscountAmount`, `ModifiedUser`, `ModifiedDate`) VALUES
(1, 1, '2018-04-01 00:00:00', '2018-09-30 00:00:00', 5, 1, 120, 1, 100, '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `rewardredemption`
--

CREATE TABLE `rewardredemption` (
  `RewardRedemptionID` int(11) NOT NULL,
  `MainBranchID` int(11) NOT NULL,
  `StartDate` datetime NOT NULL,
  `EndDate` datetime NOT NULL,
  `Header` varchar(100) NOT NULL,
  `SubTitle` varchar(200) NOT NULL,
  `ImageUrl` varchar(250) NOT NULL,
  `Point` int(11) NOT NULL,
  `PrefixPromoCode` varchar(10) NOT NULL,
  `SuffixPromoCode` varchar(10) NOT NULL,
  `RewardLimit` int(11) NOT NULL,
  `WithInPeriod` int(11) NOT NULL COMMENT 'unit:sec',
  `Detail` varchar(400) NOT NULL,
  `TermsConditions` varchar(2000) NOT NULL,
  `UsingStartDate` datetime NOT NULL,
  `UsingEndDate` datetime NOT NULL,
  `DiscountType` tinyint(4) NOT NULL,
  `DiscountAmount` float NOT NULL,
  `MinimumSpending` int(11) NOT NULL,
  `MaxDiscountAmountPerDay` int(11) NOT NULL,
  `AllowDiscountForAllMenuType` tinyint(4) NOT NULL,
  `DiscountMenuID` int(11) NOT NULL,
  `OrderNo` int(11) NOT NULL,
  `Status` tinyint(4) NOT NULL,
  `ModifiedUser` varchar(50) NOT NULL,
  `ModifiedDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rewardredemption`
--

INSERT INTO `rewardredemption` (`RewardRedemptionID`, `MainBranchID`, `StartDate`, `EndDate`, `Header`, `SubTitle`, `ImageUrl`, `Point`, `PrefixPromoCode`, `SuffixPromoCode`, `RewardLimit`, `WithInPeriod`, `Detail`, `TermsConditions`, `UsingStartDate`, `UsingEndDate`, `DiscountType`, `DiscountAmount`, `MinimumSpending`, `MaxDiscountAmountPerDay`, `AllowDiscountForAllMenuType`, `DiscountMenuID`, `OrderNo`, `Status`, `ModifiedUser`, `ModifiedDate`) VALUES
(1, 1, '2018-04-24 00:00:00', '2018-08-31 00:00:00', 'ร้าน JUMMUM', 'ฟรี ทับทิมกรอบสูตรคุณยาย มูลค่า 65 บาท', 'tubtim.jpg', 2000, '', '', 100, 3000, '', 'สายการบินไทยสมายล์ ร่วมกับ บริษัท เคาน์เตอร์เซอร์วิส มอบคูปองแลกซื้อของในร้าน 7-Eleven\nมูลค่า 100 บาท เมื่อซื้อบัตรโดยสารของสายการบินไทยสมายล์ผ่านเคาน์เตอร์เซอร์วิส\n*เงื่อนไขเป็นไปตามที่กำหนด\nเงื่อนไขรายการส่งเสริมการขาย\n– รับคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท ท้ายสลิปเมื่อซื้อบัตรโดยสารสายการบินไทยสมายล์ผ่าน เคาน์เตอร์ เซอร์วิส (ร้าน 7-Eleven) ระหว่างวันที่ 15 ธันวาคม 2559 ถึง วันที่ 5 มกราคม 2560\n– 1 คูปองแลกซื้อ ต่อ 1 สลิป/transaction เท่านั้น ยอดเงินต่อ 1 สลิป/transaction จะต้องไม่เกิน 60,000 บาท\n– คูปองแลกซื้อนี้สามารถใช้ได้ระหว่างวันที่ 15 ธันวาคม 2559 ถึง 15 มกราคม 2560 เท่านั้น\n– คูปองแลกซื้อนี้ไม่สามารถนำมาแลกหรือเปลี่ยนเป็นเงินสดได้ กรณีที่ยอดซื้อต่ำกว่ามูลค่าของคูปองแลกซื้อ บริษัทฯ จะไม่คืนส่วนต่างของมูลค่าของคูปองแลกซื้อ\n– กรุณาเก็บเอกสารฉบับนี้ไว้กับท่านเพื่อเป็นหลักฐาน ในกรณีที่เอกสารชำรุดหรือเสียหาย ทางสายการบินจะไม่สามารถออกจดหมายฉบับใหม่ได้ และจะถือว่าท่านสละสิทธิ์\n– ท่านสามารถศึกษารายละเอียดเพิ่มเติมได้ที่ www.counterservice.co.th หรือ เฟสบุ๊คของเคาน์เตอร์เซอร์วิส @Counterservice\n*บริษัท เคาน์เตอร์เซอร์วิส จำกัดขอสงวนสิทธิ์เปลี่ยนแปลงเงื่อนไขรายการส่งเสริมการขายนี้โดยไม่ต้องแจ้งล่วงหน้า\n---คุณมีเวลาหลังจากกดรับสิทธิ์ 30 วินาที\n---PromoCode นี้ใช้ได้ไม่จำกัด จนถึง 31 พฤษภาคม', '2018-05-06 00:00:00', '2018-08-31 00:00:00', 2, 1, 0, 0, 0, 50, 1, 1, '', '0000-00-00 00:00:00'),
(2, 2, '2018-04-24 00:00:00', '2018-08-31 00:00:00', 'Sushi Shin ทองหล่อ', 'ฟรี น้ำเก๊กฮวยอบควันเทียน มูลค่า 45 บาท ฟรี น้ำเก๊กฮวยอบควันเทียน มูลค่า 45 บาท ฟรี น้ำเก๊กฮวยอบควันเทียน มูลค่า 45 บาท ฟรี น้ำเก๊กฮวยอบควันเทียน มูลค่า 45 บาท', 'sushiShin.jpg', 15, '', '', 100, 3000, '', 'สายการบินไทยสมายล์ ร่วมกับ บริษัท เคาน์เตอร์เซอร์วิส มอบคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท เมื่อซื้อบัตรโดยสารของสายการบินไทยสมายล์ผ่านเคาน์เตอร์เซอร์วิส *เงื่อนไขเป็นไปตามที่กำหนด เงื่อนไขรายการส่งเสริมการขาย – รับคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท ท้ายสลิปเมื่อซื้อบัตรโดยสารสายการบินไทยสมายล์ผ่าน เคาน์เตอร์ เซอร์วิส (ร้าน 7-Eleven) ระหว่างวันที่ 15 ธันวาคม 2559 ถึง วันที่ 5 มกราคม 2560 – 1 คูปองแลกซื้อ ต่อ 1 สลิป/transaction เท่านั้น ยอดเงินต่อ 1 สลิป/transaction จะต้องไม่เกิน 60,000 บาท – คูปองแลกซื้อนี้สามารถใช้ได้ระหว่างวันที่ 15 ธันวาคม 2559 ถึง 15 มกราคม 2560 เท่านั้น – คูปองแลกซื้อนี้ไม่สามารถนำมาแลกหรือเปลี่ยนเป็นเงินสดได้ กรณีที่ยอดซื้อต่ำกว่ามูลค่าของคูปองแลกซื้อ บริษัทฯ จะไม่คืนส่วนต่างของมูลค่าของคูปองแลกซื้อ – กรุณาเก็บเอกสารฉบับนี้ไว้กับท่านเพื่อเป็นหลักฐาน ในกรณีที่เอกสารชำรุดหรือเสียหาย ทางสายการบินจะไม่สามารถออกจดหมายฉบับใหม่ได้ และจะถือว่าท่านสละสิทธิ์ – ท่านสามารถศึกษารายละเอียดเพิ่มเติมได้ที่ www.counterservice.co.th หรือ เฟสบุ๊คของเคาน์เตอร์เซอร์วิส @Counterservice *บริษัท เคาน์เตอร์เซอร์วิส จำกัดขอสงวนสิทธิ์เปลี่ยนแปลงเงื่อนไขรายการส่งเสริมการขายนี้โดยไม่ต้องแจ้งล่วงหน้า', '2018-05-09 00:00:00', '2018-08-31 00:00:00', 1, 20, 0, 0, 0, 0, 2, 1, '', '0000-00-00 00:00:00'),
(3, 2, '2018-04-24 00:00:00', '2018-08-31 00:00:00', 'Sushi Shin index rama2', 'ฟรี น้ำเก๊กฮวยอบควันเทียน มูลค่า 45 บาท ฟรี น้ำเก๊กฮวยอบควันเทียน มูลค่า 45 บาท ฟรี น้ำเก๊กฮวยอบควันเทียน มูลค่า 45 บาท ฟรี น้ำเก๊กฮวยอบควันเทียน มูลค่า 45 บาท', 'sushiShin.jpg', 15, '', '', 100, 300, '', 'สายการบินไทยสมายล์ ร่วมกับ บริษัท เคาน์เตอร์เซอร์วิส มอบคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท เมื่อซื้อบัตรโดยสารของสายการบินไทยสมายล์ผ่านเคาน์เตอร์เซอร์วิส *เงื่อนไขเป็นไปตามที่กำหนด เงื่อนไขรายการส่งเสริมการขาย – รับคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท ท้ายสลิปเมื่อซื้อบัตรโดยสารสายการบินไทยสมายล์ผ่าน เคาน์เตอร์ เซอร์วิส (ร้าน 7-Eleven) ระหว่างวันที่ 15 ธันวาคม 2559 ถึง วันที่ 5 มกราคม 2560 – 1 คูปองแลกซื้อ ต่อ 1 สลิป/transaction เท่านั้น ยอดเงินต่อ 1 สลิป/transaction จะต้องไม่เกิน 60,000 บาท – คูปองแลกซื้อนี้สามารถใช้ได้ระหว่างวันที่ 15 ธันวาคม 2559 ถึง 15 มกราคม 2560 เท่านั้น – คูปองแลกซื้อนี้ไม่สามารถนำมาแลกหรือเปลี่ยนเป็นเงินสดได้ กรณีที่ยอดซื้อต่ำกว่ามูลค่าของคูปองแลกซื้อ บริษัทฯ จะไม่คืนส่วนต่างของมูลค่าของคูปองแลกซื้อ – กรุณาเก็บเอกสารฉบับนี้ไว้กับท่านเพื่อเป็นหลักฐาน ในกรณีที่เอกสารชำรุดหรือเสียหาย ทางสายการบินจะไม่สามารถออกจดหมายฉบับใหม่ได้ และจะถือว่าท่านสละสิทธิ์ – ท่านสามารถศึกษารายละเอียดเพิ่มเติมได้ที่ www.counterservice.co.th หรือ เฟสบุ๊คของเคาน์เตอร์เซอร์วิส @Counterservice *บริษัท เคาน์เตอร์เซอร์วิส จำกัดขอสงวนสิทธิ์เปลี่ยนแปลงเงื่อนไขรายการส่งเสริมการขายนี้โดยไม่ต้องแจ้งล่วงหน้า', '2018-05-06 00:00:00', '2018-08-31 00:00:00', 1, 10, 200, 12, 0, 0, 3, 1, '', '0000-00-00 00:00:00'),
(4, 1, '2018-04-24 00:00:00', '2018-08-31 00:00:00', 'ร้าน JUMMUM', 'ฟรี น้ำมะพร้าวปั่น มูลค่า 90 บาท', 'jummumChef.png', 2800, '', '', 100, 0, '', 'สายการบินไทยสมายล์ ร่วมกับ บริษัท เคาน์เตอร์เซอร์วิส มอบคูปองแลกซื้อของในร้าน 7-Eleven\r\nมูลค่า 100 บาท เมื่อซื้อบัตรโดยสารของสายการบินไทยสมายล์ผ่านเคาน์เตอร์เซอร์วิส\r\n*เงื่อนไขเป็นไปตามที่กำหนด\r\nเงื่อนไขรายการส่งเสริมการขาย\r\n– รับคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท ท้ายสลิปเมื่อซื้อบัตรโดยสารสายการบินไทยสมายล์ผ่าน เคาน์เตอร์ เซอร์วิส (ร้าน 7-Eleven) ระหว่างวันที่ 15 ธันวาคม 2559 ถึง วันที่ 5 มกราคม 2560\r\n– 1 คูปองแลกซื้อ ต่อ 1 สลิป/transaction เท่านั้น ยอดเงินต่อ 1 สลิป/transaction จะต้องไม่เกิน 60,000 บาท\r\n– คูปองแลกซื้อนี้สามารถใช้ได้ระหว่างวันที่ 15 ธันวาคม 2559 ถึง 15 มกราคม 2560 เท่านั้น\r\n– คูปองแลกซื้อนี้ไม่สามารถนำมาแลกหรือเปลี่ยนเป็นเงินสดได้ กรณีที่ยอดซื้อต่ำกว่ามูลค่าของคูปองแลกซื้อ บริษัทฯ จะไม่คืนส่วนต่างของมูลค่าของคูปองแลกซื้อ\r\n– กรุณาเก็บเอกสารฉบับนี้ไว้กับท่านเพื่อเป็นหลักฐาน ในกรณีที่เอกสารชำรุดหรือเสียหาย ทางสายการบินจะไม่สามารถออกจดหมายฉบับใหม่ได้ และจะถือว่าท่านสละสิทธิ์\r\n– ท่านสามารถศึกษารายละเอียดเพิ่มเติมได้ที่ www.counterservice.co.th หรือ เฟสบุ๊คของเคาน์เตอร์เซอร์วิส @Counterservice\r\n*บริษัท เคาน์เตอร์เซอร์วิส จำกัดขอสงวนสิทธิ์เปลี่ยนแปลงเงื่อนไขรายการส่งเสริมการขายนี้โดยไม่ต้องแจ้งล่วงหน้า\r\n---คุณมีเวลาหลังจากกดรับสิทธิ์ 30 วินาที\r\n---PromoCode นี้ใช้ได้ไม่จำกัด จนถึง 31 พฤษภาคม', '2018-05-06 00:00:00', '2018-08-31 00:00:00', 2, 1, 0, 0, 0, 0, 4, 1, '', '0000-00-00 00:00:00'),
(5, 2, '2018-04-24 00:00:00', '2018-08-31 00:00:00', 'Sushi Shin ทองหล่อ', 'ฟรี น้ำเก๊กฮวยอบควันเทียน มูลค่า 45 บาท ฟรี น้ำเก๊กฮวยอบควันเทียน มูลค่า 45 บาท ฟรี น้ำเก๊กฮวยอบควันเทียน มูลค่า 45 บาท ฟรี น้ำเก๊กฮวยอบควันเทียน มูลค่า 45 บาท', 'sushiShin.jpg', 15, '', '', 100, 3000, '', 'สายการบินไทยสมายล์ ร่วมกับ บริษัท เคาน์เตอร์เซอร์วิส มอบคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท เมื่อซื้อบัตรโดยสารของสายการบินไทยสมายล์ผ่านเคาน์เตอร์เซอร์วิส *เงื่อนไขเป็นไปตามที่กำหนด เงื่อนไขรายการส่งเสริมการขาย – รับคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท ท้ายสลิปเมื่อซื้อบัตรโดยสารสายการบินไทยสมายล์ผ่าน เคาน์เตอร์ เซอร์วิส (ร้าน 7-Eleven) ระหว่างวันที่ 15 ธันวาคม 2559 ถึง วันที่ 5 มกราคม 2560 – 1 คูปองแลกซื้อ ต่อ 1 สลิป/transaction เท่านั้น ยอดเงินต่อ 1 สลิป/transaction จะต้องไม่เกิน 60,000 บาท – คูปองแลกซื้อนี้สามารถใช้ได้ระหว่างวันที่ 15 ธันวาคม 2559 ถึง 15 มกราคม 2560 เท่านั้น – คูปองแลกซื้อนี้ไม่สามารถนำมาแลกหรือเปลี่ยนเป็นเงินสดได้ กรณีที่ยอดซื้อต่ำกว่ามูลค่าของคูปองแลกซื้อ บริษัทฯ จะไม่คืนส่วนต่างของมูลค่าของคูปองแลกซื้อ – กรุณาเก็บเอกสารฉบับนี้ไว้กับท่านเพื่อเป็นหลักฐาน ในกรณีที่เอกสารชำรุดหรือเสียหาย ทางสายการบินจะไม่สามารถออกจดหมายฉบับใหม่ได้ และจะถือว่าท่านสละสิทธิ์ – ท่านสามารถศึกษารายละเอียดเพิ่มเติมได้ที่ www.counterservice.co.th หรือ เฟสบุ๊คของเคาน์เตอร์เซอร์วิส @Counterservice *บริษัท เคาน์เตอร์เซอร์วิส จำกัดขอสงวนสิทธิ์เปลี่ยนแปลงเงื่อนไขรายการส่งเสริมการขายนี้โดยไม่ต้องแจ้งล่วงหน้า', '2018-05-09 00:00:00', '2018-08-31 00:00:00', 1, 20, 0, 0, 0, 0, 5, 1, '', '0000-00-00 00:00:00'),
(6, 2, '2018-04-24 00:00:00', '2018-08-31 00:00:00', 'Sushi Shin index rama2', 'ฟรี น้ำเก๊กฮวยอบควันเทียน มูลค่า 45 บาท ฟรี น้ำเก๊กฮวยอบควันเทียน มูลค่า 45 บาท ฟรี น้ำเก๊กฮวยอบควันเทียน มูลค่า 45 บาท ฟรี น้ำเก๊กฮวยอบควันเทียน มูลค่า 45 บาท', 'sushiShin.jpg', 15, '', '', 100, 300, '', 'สายการบินไทยสมายล์ ร่วมกับ บริษัท เคาน์เตอร์เซอร์วิส มอบคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท เมื่อซื้อบัตรโดยสารของสายการบินไทยสมายล์ผ่านเคาน์เตอร์เซอร์วิส *เงื่อนไขเป็นไปตามที่กำหนด เงื่อนไขรายการส่งเสริมการขาย – รับคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท ท้ายสลิปเมื่อซื้อบัตรโดยสารสายการบินไทยสมายล์ผ่าน เคาน์เตอร์ เซอร์วิส (ร้าน 7-Eleven) ระหว่างวันที่ 15 ธันวาคม 2559 ถึง วันที่ 5 มกราคม 2560 – 1 คูปองแลกซื้อ ต่อ 1 สลิป/transaction เท่านั้น ยอดเงินต่อ 1 สลิป/transaction จะต้องไม่เกิน 60,000 บาท – คูปองแลกซื้อนี้สามารถใช้ได้ระหว่างวันที่ 15 ธันวาคม 2559 ถึง 15 มกราคม 2560 เท่านั้น – คูปองแลกซื้อนี้ไม่สามารถนำมาแลกหรือเปลี่ยนเป็นเงินสดได้ กรณีที่ยอดซื้อต่ำกว่ามูลค่าของคูปองแลกซื้อ บริษัทฯ จะไม่คืนส่วนต่างของมูลค่าของคูปองแลกซื้อ – กรุณาเก็บเอกสารฉบับนี้ไว้กับท่านเพื่อเป็นหลักฐาน ในกรณีที่เอกสารชำรุดหรือเสียหาย ทางสายการบินจะไม่สามารถออกจดหมายฉบับใหม่ได้ และจะถือว่าท่านสละสิทธิ์ – ท่านสามารถศึกษารายละเอียดเพิ่มเติมได้ที่ www.counterservice.co.th หรือ เฟสบุ๊คของเคาน์เตอร์เซอร์วิส @Counterservice *บริษัท เคาน์เตอร์เซอร์วิส จำกัดขอสงวนสิทธิ์เปลี่ยนแปลงเงื่อนไขรายการส่งเสริมการขายนี้โดยไม่ต้องแจ้งล่วงหน้า', '2018-05-06 00:00:00', '2018-08-31 00:00:00', 1, 10, 200, 12, 0, 0, 6, 1, '', '0000-00-00 00:00:00'),
(7, 1, '2018-04-24 00:00:00', '2018-08-31 00:00:00', 'ร้าน JUMMUM', 'ฟรี ซีซาร์สลัด มูลค่า 190 บาท', 'jummumChef.png', 6000, '', '', 100, 0, '', 'สายการบินไทยสมายล์ ร่วมกับ บริษัท เคาน์เตอร์เซอร์วิส มอบคูปองแลกซื้อของในร้าน 7-Eleven\r\nมูลค่า 100 บาท เมื่อซื้อบัตรโดยสารของสายการบินไทยสมายล์ผ่านเคาน์เตอร์เซอร์วิส\r\n*เงื่อนไขเป็นไปตามที่กำหนด\r\nเงื่อนไขรายการส่งเสริมการขาย\r\n– รับคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท ท้ายสลิปเมื่อซื้อบัตรโดยสารสายการบินไทยสมายล์ผ่าน เคาน์เตอร์ เซอร์วิส (ร้าน 7-Eleven) ระหว่างวันที่ 15 ธันวาคม 2559 ถึง วันที่ 5 มกราคม 2560\r\n– 1 คูปองแลกซื้อ ต่อ 1 สลิป/transaction เท่านั้น ยอดเงินต่อ 1 สลิป/transaction จะต้องไม่เกิน 60,000 บาท\r\n– คูปองแลกซื้อนี้สามารถใช้ได้ระหว่างวันที่ 15 ธันวาคม 2559 ถึง 15 มกราคม 2560 เท่านั้น\r\n– คูปองแลกซื้อนี้ไม่สามารถนำมาแลกหรือเปลี่ยนเป็นเงินสดได้ กรณีที่ยอดซื้อต่ำกว่ามูลค่าของคูปองแลกซื้อ บริษัทฯ จะไม่คืนส่วนต่างของมูลค่าของคูปองแลกซื้อ\r\n– กรุณาเก็บเอกสารฉบับนี้ไว้กับท่านเพื่อเป็นหลักฐาน ในกรณีที่เอกสารชำรุดหรือเสียหาย ทางสายการบินจะไม่สามารถออกจดหมายฉบับใหม่ได้ และจะถือว่าท่านสละสิทธิ์\r\n– ท่านสามารถศึกษารายละเอียดเพิ่มเติมได้ที่ www.counterservice.co.th หรือ เฟสบุ๊คของเคาน์เตอร์เซอร์วิส @Counterservice\r\n*บริษัท เคาน์เตอร์เซอร์วิส จำกัดขอสงวนสิทธิ์เปลี่ยนแปลงเงื่อนไขรายการส่งเสริมการขายนี้โดยไม่ต้องแจ้งล่วงหน้า\r\n---คุณมีเวลาหลังจากกดรับสิทธิ์ 30 วินาที\r\n---PromoCode นี้ใช้ได้ไม่จำกัด จนถึง 31 พฤษภาคม', '2018-05-06 00:00:00', '2018-08-31 00:00:00', 2, 1, 0, 0, 0, 0, 7, 1, '', '0000-00-00 00:00:00'),
(8, 2, '2018-04-24 00:00:00', '2018-08-31 00:00:00', 'Sushi Shin ทองหล่อ', 'ฟรี น้ำเก๊กฮวยอบควันเทียน มูลค่า 45 บาท ฟรี น้ำเก๊กฮวยอบควันเทียน มูลค่า 45 บาท ฟรี น้ำเก๊กฮวยอบควันเทียน มูลค่า 45 บาท ฟรี น้ำเก๊กฮวยอบควันเทียน มูลค่า 45 บาท', 'sushiShin.jpg', 15, '', '', 100, 3000, '', 'สายการบินไทยสมายล์ ร่วมกับ บริษัท เคาน์เตอร์เซอร์วิส มอบคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท เมื่อซื้อบัตรโดยสารของสายการบินไทยสมายล์ผ่านเคาน์เตอร์เซอร์วิส *เงื่อนไขเป็นไปตามที่กำหนด เงื่อนไขรายการส่งเสริมการขาย – รับคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท ท้ายสลิปเมื่อซื้อบัตรโดยสารสายการบินไทยสมายล์ผ่าน เคาน์เตอร์ เซอร์วิส (ร้าน 7-Eleven) ระหว่างวันที่ 15 ธันวาคม 2559 ถึง วันที่ 5 มกราคม 2560 – 1 คูปองแลกซื้อ ต่อ 1 สลิป/transaction เท่านั้น ยอดเงินต่อ 1 สลิป/transaction จะต้องไม่เกิน 60,000 บาท – คูปองแลกซื้อนี้สามารถใช้ได้ระหว่างวันที่ 15 ธันวาคม 2559 ถึง 15 มกราคม 2560 เท่านั้น – คูปองแลกซื้อนี้ไม่สามารถนำมาแลกหรือเปลี่ยนเป็นเงินสดได้ กรณีที่ยอดซื้อต่ำกว่ามูลค่าของคูปองแลกซื้อ บริษัทฯ จะไม่คืนส่วนต่างของมูลค่าของคูปองแลกซื้อ – กรุณาเก็บเอกสารฉบับนี้ไว้กับท่านเพื่อเป็นหลักฐาน ในกรณีที่เอกสารชำรุดหรือเสียหาย ทางสายการบินจะไม่สามารถออกจดหมายฉบับใหม่ได้ และจะถือว่าท่านสละสิทธิ์ – ท่านสามารถศึกษารายละเอียดเพิ่มเติมได้ที่ www.counterservice.co.th หรือ เฟสบุ๊คของเคาน์เตอร์เซอร์วิส @Counterservice *บริษัท เคาน์เตอร์เซอร์วิส จำกัดขอสงวนสิทธิ์เปลี่ยนแปลงเงื่อนไขรายการส่งเสริมการขายนี้โดยไม่ต้องแจ้งล่วงหน้า', '2018-05-09 00:00:00', '2018-08-31 00:00:00', 1, 20, 0, 0, 0, 0, 8, 1, '', '0000-00-00 00:00:00'),
(9, 2, '2018-04-24 00:00:00', '2018-08-31 00:00:00', 'Sushi Shin index rama2', 'ฟรี น้ำเก๊กฮวยอบควันเทียน มูลค่า 45 บาท ฟรี น้ำเก๊กฮวยอบควันเทียน มูลค่า 45 บาท ฟรี น้ำเก๊กฮวยอบควันเทียน มูลค่า 45 บาท ฟรี น้ำเก๊กฮวยอบควันเทียน มูลค่า 45 บาท', 'sushiShin.jpg', 15, '', '', 100, 300, '', 'สายการบินไทยสมายล์ ร่วมกับ บริษัท เคาน์เตอร์เซอร์วิส มอบคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท เมื่อซื้อบัตรโดยสารของสายการบินไทยสมายล์ผ่านเคาน์เตอร์เซอร์วิส *เงื่อนไขเป็นไปตามที่กำหนด เงื่อนไขรายการส่งเสริมการขาย – รับคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท ท้ายสลิปเมื่อซื้อบัตรโดยสารสายการบินไทยสมายล์ผ่าน เคาน์เตอร์ เซอร์วิส (ร้าน 7-Eleven) ระหว่างวันที่ 15 ธันวาคม 2559 ถึง วันที่ 5 มกราคม 2560 – 1 คูปองแลกซื้อ ต่อ 1 สลิป/transaction เท่านั้น ยอดเงินต่อ 1 สลิป/transaction จะต้องไม่เกิน 60,000 บาท – คูปองแลกซื้อนี้สามารถใช้ได้ระหว่างวันที่ 15 ธันวาคม 2559 ถึง 15 มกราคม 2560 เท่านั้น – คูปองแลกซื้อนี้ไม่สามารถนำมาแลกหรือเปลี่ยนเป็นเงินสดได้ กรณีที่ยอดซื้อต่ำกว่ามูลค่าของคูปองแลกซื้อ บริษัทฯ จะไม่คืนส่วนต่างของมูลค่าของคูปองแลกซื้อ – กรุณาเก็บเอกสารฉบับนี้ไว้กับท่านเพื่อเป็นหลักฐาน ในกรณีที่เอกสารชำรุดหรือเสียหาย ทางสายการบินจะไม่สามารถออกจดหมายฉบับใหม่ได้ และจะถือว่าท่านสละสิทธิ์ – ท่านสามารถศึกษารายละเอียดเพิ่มเติมได้ที่ www.counterservice.co.th หรือ เฟสบุ๊คของเคาน์เตอร์เซอร์วิส @Counterservice *บริษัท เคาน์เตอร์เซอร์วิส จำกัดขอสงวนสิทธิ์เปลี่ยนแปลงเงื่อนไขรายการส่งเสริมการขายนี้โดยไม่ต้องแจ้งล่วงหน้า', '2018-05-06 00:00:00', '2018-08-31 00:00:00', 1, 10, 200, 12, 0, 0, 9, 1, '', '0000-00-00 00:00:00'),
(10, 1, '2018-04-24 00:00:00', '2018-08-31 00:00:00', 'MAMARIN ก๋วยเตี๋ยวบ้านบึง', 'ฟรี น้ำเก๊กฮวยอบควันเทียน มูลค่า 45 บาท', 'mamarin_logo.jpg', 10, '', '', 100, 0, '', 'สายการบินไทยสมายล์ ร่วมกับ บริษัท เคาน์เตอร์เซอร์วิส มอบคูปองแลกซื้อของในร้าน 7-Eleven\r\nมูลค่า 100 บาท เมื่อซื้อบัตรโดยสารของสายการบินไทยสมายล์ผ่านเคาน์เตอร์เซอร์วิส\r\n*เงื่อนไขเป็นไปตามที่กำหนด\r\nเงื่อนไขรายการส่งเสริมการขาย\r\n– รับคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท ท้ายสลิปเมื่อซื้อบัตรโดยสารสายการบินไทยสมายล์ผ่าน เคาน์เตอร์ เซอร์วิส (ร้าน 7-Eleven) ระหว่างวันที่ 15 ธันวาคม 2559 ถึง วันที่ 5 มกราคม 2560\r\n– 1 คูปองแลกซื้อ ต่อ 1 สลิป/transaction เท่านั้น ยอดเงินต่อ 1 สลิป/transaction จะต้องไม่เกิน 60,000 บาท\r\n– คูปองแลกซื้อนี้สามารถใช้ได้ระหว่างวันที่ 15 ธันวาคม 2559 ถึง 15 มกราคม 2560 เท่านั้น\r\n– คูปองแลกซื้อนี้ไม่สามารถนำมาแลกหรือเปลี่ยนเป็นเงินสดได้ กรณีที่ยอดซื้อต่ำกว่ามูลค่าของคูปองแลกซื้อ บริษัทฯ จะไม่คืนส่วนต่างของมูลค่าของคูปองแลกซื้อ\r\n– กรุณาเก็บเอกสารฉบับนี้ไว้กับท่านเพื่อเป็นหลักฐาน ในกรณีที่เอกสารชำรุดหรือเสียหาย ทางสายการบินจะไม่สามารถออกจดหมายฉบับใหม่ได้ และจะถือว่าท่านสละสิทธิ์\r\n– ท่านสามารถศึกษารายละเอียดเพิ่มเติมได้ที่ www.counterservice.co.th หรือ เฟสบุ๊คของเคาน์เตอร์เซอร์วิส @Counterservice\r\n*บริษัท เคาน์เตอร์เซอร์วิส จำกัดขอสงวนสิทธิ์เปลี่ยนแปลงเงื่อนไขรายการส่งเสริมการขายนี้โดยไม่ต้องแจ้งล่วงหน้า\r\n---คุณมีเวลาหลังจากกดรับสิทธิ์ 30 วินาที\r\n---PromoCode นี้ใช้ได้ไม่จำกัด จนถึง 31 พฤษภาคม', '2018-05-06 00:00:00', '2018-08-31 00:00:00', 2, 1, 0, 0, 0, 0, 10, 1, '', '0000-00-00 00:00:00'),
(11, 2, '2018-04-24 00:00:00', '2018-08-31 00:00:00', 'Sushi Shin ทองหล่อ', 'ฟรี น้ำเก๊กฮวยอบควันเทียน มูลค่า 45 บาท ฟรี น้ำเก๊กฮวยอบควันเทียน มูลค่า 45 บาท ฟรี น้ำเก๊กฮวยอบควันเทียน มูลค่า 45 บาท ฟรี น้ำเก๊กฮวยอบควันเทียน มูลค่า 45 บาท', 'sushiShin.jpg', 15, '', '', 100, 3000, '', 'สายการบินไทยสมายล์ ร่วมกับ บริษัท เคาน์เตอร์เซอร์วิส มอบคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท เมื่อซื้อบัตรโดยสารของสายการบินไทยสมายล์ผ่านเคาน์เตอร์เซอร์วิส *เงื่อนไขเป็นไปตามที่กำหนด เงื่อนไขรายการส่งเสริมการขาย – รับคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท ท้ายสลิปเมื่อซื้อบัตรโดยสารสายการบินไทยสมายล์ผ่าน เคาน์เตอร์ เซอร์วิส (ร้าน 7-Eleven) ระหว่างวันที่ 15 ธันวาคม 2559 ถึง วันที่ 5 มกราคม 2560 – 1 คูปองแลกซื้อ ต่อ 1 สลิป/transaction เท่านั้น ยอดเงินต่อ 1 สลิป/transaction จะต้องไม่เกิน 60,000 บาท – คูปองแลกซื้อนี้สามารถใช้ได้ระหว่างวันที่ 15 ธันวาคม 2559 ถึง 15 มกราคม 2560 เท่านั้น – คูปองแลกซื้อนี้ไม่สามารถนำมาแลกหรือเปลี่ยนเป็นเงินสดได้ กรณีที่ยอดซื้อต่ำกว่ามูลค่าของคูปองแลกซื้อ บริษัทฯ จะไม่คืนส่วนต่างของมูลค่าของคูปองแลกซื้อ – กรุณาเก็บเอกสารฉบับนี้ไว้กับท่านเพื่อเป็นหลักฐาน ในกรณีที่เอกสารชำรุดหรือเสียหาย ทางสายการบินจะไม่สามารถออกจดหมายฉบับใหม่ได้ และจะถือว่าท่านสละสิทธิ์ – ท่านสามารถศึกษารายละเอียดเพิ่มเติมได้ที่ www.counterservice.co.th หรือ เฟสบุ๊คของเคาน์เตอร์เซอร์วิส @Counterservice *บริษัท เคาน์เตอร์เซอร์วิส จำกัดขอสงวนสิทธิ์เปลี่ยนแปลงเงื่อนไขรายการส่งเสริมการขายนี้โดยไม่ต้องแจ้งล่วงหน้า', '2018-05-09 00:00:00', '2018-08-31 00:00:00', 1, 20, 0, 0, 0, 0, 11, 1, '', '0000-00-00 00:00:00'),
(12, 2, '2018-04-24 00:00:00', '2018-08-31 00:00:00', 'Sushi Shin index rama2', 'ฟรี น้ำเก๊กฮวยอบควันเทียน มูลค่า 45 บาท ฟรี น้ำเก๊กฮวยอบควันเทียน มูลค่า 45 บาท ฟรี น้ำเก๊กฮวยอบควันเทียน มูลค่า 45 บาท ฟรี น้ำเก๊กฮวยอบควันเทียน มูลค่า 45 บาท', 'sushiShin.jpg', 15, '', '', 100, 300, '', 'สายการบินไทยสมายล์ ร่วมกับ บริษัท เคาน์เตอร์เซอร์วิส มอบคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท เมื่อซื้อบัตรโดยสารของสายการบินไทยสมายล์ผ่านเคาน์เตอร์เซอร์วิส *เงื่อนไขเป็นไปตามที่กำหนด เงื่อนไขรายการส่งเสริมการขาย – รับคูปองแลกซื้อของในร้าน 7-Eleven มูลค่า 100 บาท ท้ายสลิปเมื่อซื้อบัตรโดยสารสายการบินไทยสมายล์ผ่าน เคาน์เตอร์ เซอร์วิส (ร้าน 7-Eleven) ระหว่างวันที่ 15 ธันวาคม 2559 ถึง วันที่ 5 มกราคม 2560 – 1 คูปองแลกซื้อ ต่อ 1 สลิป/transaction เท่านั้น ยอดเงินต่อ 1 สลิป/transaction จะต้องไม่เกิน 60,000 บาท – คูปองแลกซื้อนี้สามารถใช้ได้ระหว่างวันที่ 15 ธันวาคม 2559 ถึง 15 มกราคม 2560 เท่านั้น – คูปองแลกซื้อนี้ไม่สามารถนำมาแลกหรือเปลี่ยนเป็นเงินสดได้ กรณีที่ยอดซื้อต่ำกว่ามูลค่าของคูปองแลกซื้อ บริษัทฯ จะไม่คืนส่วนต่างของมูลค่าของคูปองแลกซื้อ – กรุณาเก็บเอกสารฉบับนี้ไว้กับท่านเพื่อเป็นหลักฐาน ในกรณีที่เอกสารชำรุดหรือเสียหาย ทางสายการบินจะไม่สามารถออกจดหมายฉบับใหม่ได้ และจะถือว่าท่านสละสิทธิ์ – ท่านสามารถศึกษารายละเอียดเพิ่มเติมได้ที่ www.counterservice.co.th หรือ เฟสบุ๊คของเคาน์เตอร์เซอร์วิส @Counterservice *บริษัท เคาน์เตอร์เซอร์วิส จำกัดขอสงวนสิทธิ์เปลี่ยนแปลงเงื่อนไขรายการส่งเสริมการขายนี้โดยไม่ต้องแจ้งล่วงหน้า', '2018-05-06 00:00:00', '2018-08-31 00:00:00', 1, 10, 200, 12, 0, 0, 12, 1, '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `rewardredemptionbranch`
--

CREATE TABLE `rewardredemptionbranch` (
  `RewardRedemptionBranchID` int(11) NOT NULL,
  `RewardRedemptionID` int(11) NOT NULL,
  `BranchID` int(11) NOT NULL,
  `ModifiedUser` varchar(50) NOT NULL,
  `ModifiedDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rewardredemptionbranch`
--

INSERT INTO `rewardredemptionbranch` (`RewardRedemptionBranchID`, `RewardRedemptionID`, `BranchID`, `ModifiedUser`, `ModifiedDate`) VALUES
(1, 1, 1, '', '0000-00-00 00:00:00'),
(2, 2, 2, '', '0000-00-00 00:00:00'),
(3, 3, 3, '', '0000-00-00 00:00:00'),
(4, 4, 1, '', '0000-00-00 00:00:00'),
(5, 5, 2, '', '0000-00-00 00:00:00'),
(6, 6, 3, '', '0000-00-00 00:00:00'),
(7, 7, 1, '', '0000-00-00 00:00:00'),
(8, 8, 2, '', '0000-00-00 00:00:00'),
(9, 9, 3, '', '0000-00-00 00:00:00'),
(10, 10, 1, '', '0000-00-00 00:00:00'),
(11, 11, 2, '', '0000-00-00 00:00:00'),
(12, 12, 3, '', '0000-00-00 00:00:00'),
(13, 3, 2, '', '0000-00-00 00:00:00'),
(14, 6, 2, '', '0000-00-00 00:00:00'),
(15, 9, 2, '', '0000-00-00 00:00:00'),
(16, 12, 2, '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `SettingID` int(11) NOT NULL,
  `KeyName` varchar(50) NOT NULL,
  `Value` varchar(500) NOT NULL,
  `Type` tinyint(4) NOT NULL,
  `Remark` varchar(200) NOT NULL,
  `ModifiedUser` varchar(50) NOT NULL,
  `ModifiedDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`SettingID`, `KeyName`, `Value`, `Type`, `Remark`, `ModifiedUser`, `ModifiedDate`) VALUES
(1, 'PublicKey', 'pkey_test_5bd4vbi2qq0ui6nsylr', 0, '', '', '2018-04-13 23:14:35'),
(2, 'SecretKey', 'skey_test_5bd4vbi39wdfahytpeu', 0, '', '', '2018-04-13 23:14:35'),
(3, 'MessageHeaderCancel', 'Oop!', 0, '', '', '2018-05-12 08:54:13'),
(4, 'MessageSubTitleCancel', 'คุณสามารถเรียกพนักงานเพื่อสอบถามหรือแก้ไข ก่อนการยกเลิก\nหากคุณต้องการยกเลิก สามารถกดที่ปุ่มใช่', 0, '', '', '2018-07-20 03:27:36'),
(5, 'MessageHeaderDispute', 'Oop!', 0, '', '', '2018-05-12 08:53:06'),
(6, 'MessageSubTitleDispute', 'คุณสามารถเรียกพนักงานเพื่อสอบถามหรือแก้ไข ก่อนการส่งคำร้อง\nหากคุณต้องการส่งคำร้อง สามารถกดที่ปุ่มใช่', 0, '', '', '2018-07-20 03:27:44'),
(7, 'MessageHeaderCancelShop', 'Oop!', 0, '', '', '2018-05-12 08:54:13'),
(8, 'MessageSubTitleCancelShop', 'คุณต้องการยกเลิก & คืนเงิน ใช่หรือไม่', 0, '', '', '2018-07-20 03:28:47'),
(9, 'MessageHeaderRefundShop', 'Oop!', 0, '', '', '2018-05-12 08:53:06'),
(10, 'MessageSubTitleRefundShop', 'คุณต้องการส่งคำร้อง & คืนเงิน ใช่หรือไม่', 0, '', '', '2018-07-20 03:28:51'),
(11, 'DeviceTokenAdmin', '1ce79f5e1050297559c80ee3ba9b94bbadbcda80ec772eff22586ad0f14e29f0', 0, '', '', '2018-06-25 19:20:33'),
(12, 'NewVersionMessage', 'New version coming!!', 0, '', '', '2018-07-02 19:22:00'),
(13, 'NewVersionType', '1', 0, '1=can choose to update or dismiss,2=force update', '', '2018-07-27 04:51:19'),
(14, 'NewVersionTitle', 'It\'s time to update', 0, '', '', '2018-07-02 19:22:00'),
(15, '001t', 'Warning', 2, '', '', '2018-07-05 18:26:38'),
(16, '001m', 'Memory fail', 2, '', '', '2018-07-05 18:26:38'),
(17, '002t', 'Welcome', 2, '', '', '2018-07-05 18:31:36'),
(18, '002m', 'Pay for your order, earn and track rewards, all from your mobile device', 2, '', '', '2018-07-07 21:18:24'),
(20, '003m', 'กรุณาใส่รายละเอียดเหตุผลในการขอเงินคืน', 2, '', '', '2018-07-06 03:10:56'),
(22, '004t', 'Cancel order', 2, '', '', '2018-07-09 13:09:13'),
(24, '005t', 'Open dispute', 2, '', '', '2018-07-09 13:09:17'),
(26, '006m', 'กรุณากรอกรายละเอียดด้านล่างนี้', 2, '', '', '2018-07-06 03:14:10'),
(28, '007m', 'เหตุผลในการขอเงินคืน', 2, '', '', '2018-07-06 03:15:01'),
(30, '008m', 'กรุณาเลือกเหตุผลในการขอคืนเงิน', 2, '', '', '2018-07-20 03:11:37'),
(32, '009m', 'คำร้องขอเงินคืนได้ถูกส่งไปแล้ว กรุณารอการยืนยันจากร้านค้า', 2, '', '', '2018-07-06 03:21:15'),
(36, '010m', 'กรุณาเลือกเหตุผลที่ขอเงินคืน', 2, '', '', '2018-07-06 03:21:35'),
(37, '011m', 'กรุณาเลือกเหตุผลที่ขอเงินคืน', 2, '', '', '2018-07-06 03:26:18'),
(38, '012m', 'กรุณาใส่รายละเอียดเหตุผลในการขอเงินคืน', 2, '', '', '2018-07-06 03:26:18'),
(39, '013m', 'คุณได้ส่งคำร้องขอยกเลิกบิลนี้  ด้วยเหตุผลด้านล่างนี้ กรุณารอการยืนยันการยกเลิกจากร้านค้า', 2, '', '', '2018-07-06 03:30:22'),
(41, '015m', 'คุณส่ง Open dispute ไปที่ร้านค้าด้วยเหตุผลด้านล่างนี้ กรุณารอการยืนยันจากทางร้านค้าสักครู่', 2, '', '', '2018-07-06 03:32:29'),
(42, '016m', 'จำนวนเงินที่ขอคืน: ', 2, '', '', '2018-07-06 03:37:33'),
(43, '017m', 'รายละเอียดเหตุผล: ', 2, '', '', '2018-07-06 03:37:33'),
(44, '018m', 'คำร้องขอยกเลิกออเดอร์สำเร็จแล้ว คุณจะได้รับเงินคืนภายใน 48 ชม.', 2, '', '', '2018-07-06 03:41:14'),
(45, '019m', 'Open dispute ที่ส่งไป ได้รับการยืนยันแล้ว คุณจะได้รับเงินคืนภายใน 48 ชม.', 2, '', '', '2018-07-06 03:41:16'),
(47, '020m', 'Open dispute ที่ส่งไปกำลังดำเนินการอยู่ จะมีเจ้าหน้าที่ติดต่อกลับไปภายใน 24 ชม.', 2, '', '', '2018-07-06 03:44:19'),
(48, '021m', 'หลังจากคุยกับเจ้าหน้าที่ JUMMUM แล้ว มีการแก้ไขจำนวนเงิน refund ใหม่ ตามด้านล่างนี้ กรุณากด Confirm เพื่อยืนยัน หรือหากต้องการแก้ไขรายการกรุณากด Negotiate', 2, '', '', '2018-07-06 04:49:02'),
(49, '022m', 'Open dispute ที่มีการแก้ไขกำลังดำเนินการอยู่ กรุณารอการยืนยันจากทางร้านค้าสักครู่', 2, '', '', '2018-07-06 03:50:21'),
(50, '023m', 'Open dispute ที่ส่งไป ดำเนินการเสร็จสิ้นแล้ว คุณจะได้รับเงินคืนภายใน 48 ชม.', 2, '', '', '2018-07-06 03:52:00'),
(51, '024m', 'คุณได้ส่งคำร้องขอยกเลิกบิลนี้  ด้วยเหตุผลด้านล่างนี้ กรุณารอการยืนยันการยกเลิกจากร้านค้า', 2, '', '', '2018-07-06 03:53:50'),
(52, '025m', 'คุณส่ง Open dispute ไปที่ร้านค้าด้วยเหตุผลด้านล่างนี้ กรุณารอการยืนยันจากทางร้านค้าสักครู่', 2, '', '', '2018-07-06 03:55:16'),
(53, '026m', 'คำร้องขอยกเลิกออเดอร์สำเร็จแล้ว คุณจะได้รับเงินคืนภายใน 48 ชม.', 2, '', '', '2018-07-06 03:57:23'),
(54, '027m', 'Open dispute ที่ส่งไป ได้รับการยืนยันแล้ว คุณจะได้รับเงินคืนภายใน 48 ชม.', 2, '', '', '2018-07-06 03:59:01'),
(55, '028m', 'Open dispute ที่ส่งไปกำลังดำเนินการอยู่ จะมีเจ้าหน้าที่ติดต่อกลับไปภายใน 24 ชม.', 2, '', '', '2018-07-06 04:00:20'),
(56, '029m', 'หลังจากคุยกับเจ้าหน้าที่ JUMMUM แล้ว มีการแก้ไขจำนวนเงิน refund ใหม่ ตามด้านล่างนี้ กรุณากด Confirm เพื่อยืนยัน หรือหากต้องการแก้ไขรายการกรุณากด Negotiate', 2, '', '', '2018-07-06 04:49:07'),
(57, '030m', 'Open dispute ที่มีการแก้ไขกำลังดำเนินการอยู่ กรุณารอการยืนยันจากทางร้านค้าสักครู่', 2, '', '', '2018-07-06 04:02:33'),
(58, '031m', 'Open dispute ที่ส่งไป ดำเนินการเสร็จสิ้นแล้ว คุณจะได้รับเงินคืนภายใน 48 ชม.', 2, '', '', '2018-07-06 04:03:43'),
(59, '032m', 'ร้านค้ากำลังปรุงอาหารให้คุณอยู่ค่ะ โปรดรอสักครู่นะคะ', 2, '', '', '2018-07-06 04:14:13'),
(60, '033m', 'อาหารได้ส่งถึงคุณแล้วค่ะ', 2, '', '', '2018-07-06 04:14:25'),
(61, '034m', 'กรุณาใส่เบอร์โทรติดต่อกลับ เพื่อเจ้าหน้าที่จะโทรสอบถามข้อมูลเพิ่มเติมสำหรับการโอนเงินคืนท่าน', 2, '', '', '2018-07-08 09:05:51'),
(62, '035m', 'รายละเอียดเหตุผลในการขอเงินคืน', 2, '', '', '2018-07-06 04:20:32'),
(63, '036m', 'กรุณาใส่เบอร์โทรติดต่อกลับ เพื่อเจ้าหน้าที่จะโทรสอบถามข้อมูลเพิ่มเติมสำหรับการโอนเงินคืนท่าน', 2, '', '', '2018-07-06 04:21:25'),
(64, '037m', 'กรุณาใส่เบอร์โทรติดต่อกลับ เพื่อเจ้าหน้าที่จะโทรสอบถามข้อมูลเพิ่มเติมสำหรับการโอนเงินของท่านคืน', 2, '', '', '2018-07-06 04:22:18'),
(65, '038m', 'กรุณาใส่เบอร์โทรติดต่อกลับ เพื่อเจ้าหน้าที่จะโทรสอบถามข้อมูลเพิ่มเติมสำหรับการโอนเงินของท่านคืน', 2, '', '', '2018-07-06 04:23:02'),
(66, '039m', 'จำนวนสิทธิ์ครบแล้ว', 2, '', '', '2018-07-06 04:25:51'),
(67, '040m', 'การชำระเงิน ด้วยบัตรเครดิต', 2, '', '', '2018-07-06 04:28:31'),
(68, '041m', 'การจ่ายด้วยบัตรเครดิตขัดข้อง กรุณาติดต่อเจ้าหน้าที่ที่เกี่ยวข้อง', 2, '', '', '2018-07-06 04:29:35'),
(69, '042m', 'โค้ดที่ใส่ไม่สามารถใช้กับเมนูที่คุณเลือก', 2, '', '', '2018-07-06 04:30:29'),
(70, '043m', 'ใช้ได้ 1 ครั้ง ภายใน %@', 2, '', '', '2018-07-11 06:02:34'),
(71, '044t', 'ชำระเงินสำเร็จ', 2, '', '', '2018-07-06 04:41:32'),
(72, '044m', 'ขอบคุณที่ใช้บริการจั้มมั่ม', 2, '', '', '2018-07-06 04:42:21'),
(73, '045m', 'คุณล็อคอินผ่าน facebook สำเร็จแล้ว กรุณาใส่วันเกิดและเบอร์โทรศัพท์ เพื่อเราจะได้สร้างบัญชีสำหรับใช้งานให้คุณ', 2, '', '', '2018-07-06 04:46:58'),
(74, '046m', 'กรุณาใส่ข้อเสนอแนะ คำติชม หรือปัญหาที่พบเจอ', 2, '', '', '2018-07-06 04:53:44'),
(75, '047m', 'ข้อเสนอแนะ และคำติชม', 2, '', '', '2018-07-06 04:53:57'),
(76, '048m', 'ข้อเสนอแนะ และคำติชมได้ถูกส่งไปแล้ว ขอบคุณค่ะ', 2, '', '', '2018-07-06 04:55:08'),
(77, '049m', 'กรุณาใส่ข้อเสนอแนะ และคำติชม', 2, '', '', '2018-07-06 04:55:18'),
(78, '050m', '- แนะนำร้านอาหาร/สาขา/เบอร์โทร ที่คุณต้องการให้ JUMMUM เข้าไปติดต่อ \\n- ให้เหตุผลที่คุณต้องการให้ร้านอาหารโปรดของคุณมาอยู่ในแอพ JUMMUM', 2, '', '', '2018-07-06 04:56:27'),
(79, '051m', 'แนะนำร้านอาหาร/สาขา', 2, '', '', '2018-07-06 04:57:12'),
(80, '052m', 'ขอบคุณสำหรับการแนะนำร้านครั้งนี้ค่ะ', 2, '', '', '2018-07-06 04:57:54'),
(81, '053m', 'กรุณาใส่ร้านอาหารที่คุณต้องการแนะนำ', 2, '', '', '2018-07-06 04:58:36'),
(82, '054t', 'ลืมรหัสผ่าน', 2, '', '', '2018-07-06 07:59:25'),
(83, '055t', 'ข้อกำหนดและเงื่อนไขของ JUMMUM', 2, '', '', '2018-07-06 08:18:22'),
(84, '056t', 'สร้างบัญชีใหม่', 2, '', '', '2018-07-06 08:18:22'),
(85, '057t', 'สแกน QR Code เลขโต๊ะ', 2, '', '', '2018-07-06 08:18:22'),
(86, '058t', 'เลือกร้าน', 2, '', '', '2018-07-06 08:18:22'),
(87, '059t', 'Hot Deal', 2, '', '', '2018-07-06 08:18:22'),
(88, '060t', 'Hot Deal', 2, '', '', '2018-07-06 08:18:22'),
(89, '061t', 'เลือกโต๊ะ', 2, '', '', '2018-07-06 08:18:22'),
(90, '062t', 'ประวัติการสั่งอาหาร', 2, '', '', '2018-07-06 08:18:22'),
(91, '063t', 'ข้อมูลส่วนตัว', 2, '', '', '2018-07-06 08:18:22'),
(92, '064t', 'ข้อกำหนดและเงื่อนไขของ JUMMUM', 2, '', '', '2018-07-06 08:18:22'),
(93, '065t', 'บัตรเครดิต/เดบิต', 2, '', '', '2018-07-06 08:18:22'),
(94, '066t', 'แต้มสะสม/แลกของรางวัล', 2, '', '', '2018-07-06 08:18:22'),
(95, '067t', 'แนะนำร้านอาหาร', 2, '', '', '2018-07-06 08:18:22'),
(96, '068t', 'แนะนำ ติชม', 2, '', '', '2018-07-06 08:18:22'),
(97, '069t', 'รางวัลของฉัน', 2, '', '', '2018-07-06 08:18:22'),
(98, '070t', 'แลกของรางวัล', 2, '', '', '2018-07-06 08:18:22'),
(99, '071t', 'แสดงโค้ด เพื่อรับสิทธิ์', 2, '', '', '2018-07-06 08:18:22'),
(100, '072t', 'รายละเอียดการสั่งอาหาร', 2, '', '', '2018-07-06 08:18:22'),
(101, '073t', 'Open dispute', 2, '', '', '2018-07-06 08:18:22'),
(102, '074t', 'เลือกเมนู', 2, '', '', '2018-07-06 08:18:22'),
(103, '075t', 'สรุปรายการที่สั่ง', 2, '', '', '2018-07-06 08:18:22'),
(104, '076t', 'ยืนยันการสั่งอาหาร', 2, '', '', '2018-07-06 08:18:22'),
(105, '077t', 'เลือกช่องทางชำระเงิน', 2, '', '', '2018-07-06 08:18:22'),
(106, '078t', 'นโยบายความเป็นส่วนตัว', 2, '', '', '2018-07-06 08:31:59'),
(107, '079t', 'ติดต่อ JUMMUM', 2, '', '', '2018-07-06 08:31:59'),
(108, '080t', 'Cancel order', 2, '', '', '2018-07-06 08:31:59'),
(109, '081m', 'คุณไม่มีรางวัล', 2, '', '', '2018-07-07 12:47:14'),
(110, '082m', 'คุณไม่ได้บันทึกบัตรเครดิตไว้', 2, '', '', '2018-07-06 22:38:21'),
(111, '083m', 'คุณไม่มีประวัติการสั่งอาหาร', 2, '', '', '2018-07-06 22:38:40'),
(112, '084m', 'คำร้องขอเงินคืนเต็มจำนวนได้ถูกส่งไปแล้ว กรุณารอการยืนยันจากร้านค้า', 2, '', '', '2018-07-06 22:38:40'),
(113, 'AlarmAdmin', '0', 0, '', '', '2018-07-08 10:06:50'),
(114, '085m', 'ข้อเสนอแนะ และคำติชมได้ถูกส่งไปแล้ว ขอบคุณค่ะ', 2, '', '', '2018-07-09 11:36:08'),
(115, '086t', 'แนะนำ ติชม', 2, '', '', '2018-07-09 12:38:21'),
(116, '087m', 'กรุณาใส่ข้อเสนอแนะ คำติชม หรือปัญหาที่พบเจอ', 2, '', '', '2018-07-09 12:38:21'),
(117, '088m', 'ข้อเสนอแนะ และคำติชม', 2, '', '', '2018-07-09 12:40:19'),
(118, '089m', 'กรุณาใส่ข้อเสนอแนะ และคำติชม', 2, '', '', '2018-07-09 12:44:10'),
(119, '090t', 'You rated', 2, '', '', '2018-07-09 12:44:10'),
(120, '091m', 'BAD', 2, '', '', '2018-07-09 12:48:10'),
(121, '092m', 'POOR', 2, '', '', '2018-07-09 12:48:10'),
(122, '093m', 'FAIR', 2, '', '', '2018-07-09 12:48:10'),
(123, '094m', 'GOOD', 2, '', '', '2018-07-09 12:48:10'),
(124, '095m', 'EXCELLENT!', 2, '', '', '2018-07-09 12:48:10'),
(125, '096t', 'ADD COMMENT', 2, '', '', '2018-07-09 13:10:07'),
(126, '097t', 'VIEW COMMENT', 2, '', '', '2018-07-09 13:10:10'),
(127, '098m', 'Please rate my service', 2, '', '', '2018-07-09 12:51:03'),
(128, '099t', 'Submit', 2, '', '', '2018-07-09 12:55:32'),
(129, '100t', 'Thank you', 2, '', '', '2018-07-09 12:55:53'),
(130, '100m', 'We hope you have enjoyed our service. For comments, compliments or enquiries, please write to us below', 2, '', '', '2018-07-09 12:55:53'),
(131, '101m', 'Order sent', 2, '', '', '2018-07-09 13:06:46'),
(132, '102m', 'Processing..', 2, '', '', '2018-07-09 13:06:46'),
(133, '103m', 'Delivered', 2, '', '', '2018-07-09 13:06:46'),
(134, '104m', 'Pending cancel', 2, '', '', '2018-07-09 13:06:46'),
(135, '105m', 'Order dispute in process', 2, '', '', '2018-07-09 13:06:46'),
(136, '106m', 'Order cancelled', 2, '', '', '2018-07-09 13:06:46'),
(137, '107m', 'Order dispute finished', 2, '', '', '2018-07-09 13:06:46'),
(138, '108m', 'Negotiate', 2, '', '', '2018-07-09 13:06:46'),
(139, '109m', 'Review dispute', 2, '', '', '2018-07-09 13:06:46'),
(140, '110m', 'Review dispute in process', 2, '', '', '2018-07-09 13:06:46'),
(141, '111m', 'Order dispute finished', 2, '', '', '2018-07-09 13:06:46'),
(142, '112m', 'วางทั้งหมด', 2, '', '', '2018-07-11 14:59:51'),
(143, '113m', 'Take away ทั้งหมด', 2, '', '', '2018-07-11 14:59:51'),
(144, '114m', 'Double tap at note to paste', 2, '', '', '2018-07-11 14:59:51'),
(145, '115m', 'ค้นหา Reward', 2, '', '', '2018-07-11 14:59:51'),
(146, '116m', 'ค้นหาเบอร์โต๊ะ', 2, '', '', '2018-07-11 14:59:51'),
(147, '117m', 'ค้นหา Deal', 2, '', '', '2018-07-11 15:00:16'),
(148, '118m', 'กดค้างที่ช่อง \"เพิ่มโน้ต\" เพื่อแสดงเมนูแก้ไขโน้ต', 2, '', '', '2018-07-11 18:49:06'),
(149, '119m', 'เพิ่มโน้ต', 2, '', '', '2018-07-11 18:42:09'),
(150, '120m', 'จานที่ %ld', 2, '', '', '2018-07-11 18:43:21'),
(151, '121m', 'กรุณาให้คะแนนก่อนกด Submit', 2, '', '', '2018-07-11 18:45:56'),
(152, 'LedStatus', '1', 0, '', 'jinglejill@hotmail.com', '2018-07-20 13:40:52'),
(153, '122m', 'หมายเหตุ', 2, '', '', '2018-07-22 11:05:06'),
(154, '123m', 'ใส่หมายเหตุที่ต้องการแจ้งเพิ่มเติมกับทางร้านอาหาร', 2, '', '', '2018-07-22 11:05:06'),
(155, '124m', 'ทางร้านไม่ได้เปิดระบบการสั่งอาหารด้วยตนเองตอนนี้ ขออภัยในความไม่สะดวกค่ะ', 2, '', '', '2018-07-23 04:59:23'),
(157, '125m', 'ร้านค้ายกเลิกออเดอร์ให้คุณแล้ว คุณจะได้รับเงินคืนภายใน 48 ชม.', 2, '', '', '2018-07-31 03:39:51'),
(158, '126m', 'ร้านค้าทำเรื่องคืนเงินให้คุณแล้ว คุณจะได้รับเงินคืนภายใน 48 ชม.', 2, '', '', '2018-07-31 03:39:51');

-- --------------------------------------------------------

--
-- Table structure for table `useraccount`
--

CREATE TABLE `useraccount` (
  `UserAccountID` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(250) NOT NULL,
  `DeviceToken` varchar(64) NOT NULL,
  `FullName` varchar(150) NOT NULL,
  `NickName` varchar(50) NOT NULL,
  `BirthDate` datetime NOT NULL,
  `Email` varchar(100) NOT NULL,
  `PhoneNo` varchar(100) NOT NULL,
  `LineID` varchar(100) NOT NULL,
  `RoleID` int(11) NOT NULL,
  `ModifiedUser` varchar(50) NOT NULL,
  `ModifiedDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `useraccount`
--

INSERT INTO `useraccount` (`UserAccountID`, `Username`, `Password`, `DeviceToken`, `FullName`, `NickName`, `BirthDate`, `Email`, `PhoneNo`, `LineID`, `RoleID`, `ModifiedUser`, `ModifiedDate`) VALUES
(1, 'abcdefg@jummum.co', '37bc854596cb721fca1da704fd385296bf881462013f09ffd80af72f0e92b5bc', 'simulator', 'abc defg', '', '1998-02-01 00:00:00', 'abcdefg@jummum.co', '0883336666', '', 0, '1', '2018-07-11 16:25:08'),
(2, '10156934060968273', '', 'simulator', 'Thidaporn Kijkamjai', '', '1998-01-05 00:00:00', 'jinglejill@hotmail.com', '0813072993', '', 0, 'jinglejill@hotmail.com', '2018-07-11 21:03:48'),
(3, '10156474629287246', '', 'b9d7070ff070d1cc2b63dddab46681a9d9a08df7245339f4b77c058a9e0fb561', 'Por Natee Ruengjirachuporn', '', '1984-10-14 00:00:00', 'veronandbeck@hotmail.com', '0891212882', '', 0, 'veronandbeck@hotmail.com', '2018-07-22 17:30:37'),
(4, '2053724241559645', '', '63741cc86520c9b8e47b5989f453c79723560e13357351fe0f44531eccd76e94', 'Cap Gases', '', '1979-09-10 00:00:00', 'choosak.oun@gmail.com', '0863311199', '', 0, 'choosak.oun@gmail.com', '2018-07-20 16:14:57'),
(5, 'jinglejill@hotmail.com', '37bc854596cb721fca1da704fd385296bf881462013f09ffd80af72f0e92b5bc', '', 'thidaporn', '', '1998-01-05 00:00:00', 'jinglejill@hotmail.com', '0845552222', '', 0, '3', '2018-07-22 08:03:56'),
(6, 'natee.rueng@gmail.com', '37bc854596cb721fca1da704fd385296bf881462013f09ffd80af72f0e92b5bc', 'deb66c9d1e61c9bc7b49648784b8238da8a82e8cd20adac58dc0c75bf197e07d', 'Nate', '', '1984-10-14 00:00:00', 'natee.rueng@gmail.com', '0891212882', '', 0, '1', '2018-08-01 05:06:31');

-- --------------------------------------------------------

--
-- Table structure for table `userpromotionused`
--

CREATE TABLE `userpromotionused` (
  `UserPromotionUsedID` int(11) NOT NULL,
  `UserAccountID` int(11) NOT NULL,
  `PromotionID` int(11) NOT NULL,
  `ReceiptID` int(11) NOT NULL,
  `ModifiedUser` varchar(50) NOT NULL,
  `ModifiedDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `userrewardredemptionused`
--

CREATE TABLE `userrewardredemptionused` (
  `UserRewardRedemptionUsedID` int(11) NOT NULL,
  `UserAccountID` int(11) NOT NULL,
  `RewardRedemptionID` int(11) NOT NULL,
  `ReceiptID` int(11) NOT NULL,
  `ModifiedUser` varchar(50) NOT NULL,
  `ModifiedDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`CommentID`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `device`
--
ALTER TABLE `device`
  ADD PRIMARY KEY (`DeviceID`);

--
-- Indexes for table `dispute`
--
ALTER TABLE `dispute`
  ADD PRIMARY KEY (`DisputeID`);

--
-- Indexes for table `disputereason`
--
ALTER TABLE `disputereason`
  ADD PRIMARY KEY (`DisputeReasonID`);

--
-- Indexes for table `forgotpassword`
--
ALTER TABLE `forgotpassword`
  ADD PRIMARY KEY (`ForgotPasswordID`);

--
-- Indexes for table `hotdeal`
--
ALTER TABLE `hotdeal`
  ADD PRIMARY KEY (`HotDealID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`LogInID`);

--
-- Indexes for table `ordernote`
--
ALTER TABLE `ordernote`
  ADD PRIMARY KEY (`OrderNoteID`);

--
-- Indexes for table `ordertaking`
--
ALTER TABLE `ordertaking`
  ADD PRIMARY KEY (`OrderTakingID`);

--
-- Indexes for table `promocode`
--
ALTER TABLE `promocode`
  ADD PRIMARY KEY (`PromoCodeID`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`PromotionID`);

--
-- Indexes for table `promotionbranch`
--
ALTER TABLE `promotionbranch`
  ADD PRIMARY KEY (`PromotionBranchID`);

--
-- Indexes for table `promotionuser`
--
ALTER TABLE `promotionuser`
  ADD PRIMARY KEY (`PromotionUserID`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`RatingID`);

--
-- Indexes for table `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`ReceiptID`);

--
-- Indexes for table `recommendshop`
--
ALTER TABLE `recommendshop`
  ADD PRIMARY KEY (`RecommendShopID`);

--
-- Indexes for table `rewardpoint`
--
ALTER TABLE `rewardpoint`
  ADD PRIMARY KEY (`RewardPointID`);

--
-- Indexes for table `rewardprogram`
--
ALTER TABLE `rewardprogram`
  ADD PRIMARY KEY (`RewardProgramID`);

--
-- Indexes for table `rewardredemption`
--
ALTER TABLE `rewardredemption`
  ADD PRIMARY KEY (`RewardRedemptionID`);

--
-- Indexes for table `rewardredemptionbranch`
--
ALTER TABLE `rewardredemptionbranch`
  ADD PRIMARY KEY (`RewardRedemptionBranchID`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`SettingID`);

--
-- Indexes for table `useraccount`
--
ALTER TABLE `useraccount`
  ADD PRIMARY KEY (`UserAccountID`);

--
-- Indexes for table `userpromotionused`
--
ALTER TABLE `userpromotionused`
  ADD PRIMARY KEY (`UserPromotionUsedID`);

--
-- Indexes for table `userrewardredemptionused`
--
ALTER TABLE `userrewardredemptionused`
  ADD PRIMARY KEY (`UserRewardRedemptionUsedID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `CommentID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;
--
-- AUTO_INCREMENT for table `device`
--
ALTER TABLE `device`
  MODIFY `DeviceID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dispute`
--
ALTER TABLE `dispute`
  MODIFY `DisputeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `disputereason`
--
ALTER TABLE `disputereason`
  MODIFY `DisputeReasonID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `forgotpassword`
--
ALTER TABLE `forgotpassword`
  MODIFY `ForgotPasswordID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hotdeal`
--
ALTER TABLE `hotdeal`
  MODIFY `HotDealID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `LogInID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;
--
-- AUTO_INCREMENT for table `ordernote`
--
ALTER TABLE `ordernote`
  MODIFY `OrderNoteID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ordertaking`
--
ALTER TABLE `ordertaking`
  MODIFY `OrderTakingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
--
-- AUTO_INCREMENT for table `promocode`
--
ALTER TABLE `promocode`
  MODIFY `PromoCodeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=361;
--
-- AUTO_INCREMENT for table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `PromotionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `promotionbranch`
--
ALTER TABLE `promotionbranch`
  MODIFY `PromotionBranchID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `promotionuser`
--
ALTER TABLE `promotionuser`
  MODIFY `PromotionUserID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'table นี้ สำหรับกรณี promotion ไม่ได้ allowForEveryone', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `RatingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `receipt`
--
ALTER TABLE `receipt`
  MODIFY `ReceiptID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `recommendshop`
--
ALTER TABLE `recommendshop`
  MODIFY `RecommendShopID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rewardpoint`
--
ALTER TABLE `rewardpoint`
  MODIFY `RewardPointID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `rewardprogram`
--
ALTER TABLE `rewardprogram`
  MODIFY `RewardProgramID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `rewardredemption`
--
ALTER TABLE `rewardredemption`
  MODIFY `RewardRedemptionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `rewardredemptionbranch`
--
ALTER TABLE `rewardredemptionbranch`
  MODIFY `RewardRedemptionBranchID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `SettingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;
--
-- AUTO_INCREMENT for table `useraccount`
--
ALTER TABLE `useraccount`
  MODIFY `UserAccountID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `userpromotionused`
--
ALTER TABLE `userpromotionused`
  MODIFY `UserPromotionUsedID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `userrewardredemptionused`
--
ALTER TABLE `userrewardredemptionused`
  MODIFY `UserRewardRedemptionUsedID` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
