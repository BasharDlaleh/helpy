-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 28, 2021 at 11:48 AM
-- Server version: 5.7.28-0ubuntu0.18.04.4
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `helpy`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `ads_id` int(11) NOT NULL,
  `client_id` int(10) NOT NULL,
  `ads_title` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ads_visible` tinyint(1) NOT NULL,
  `ads_image` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ads_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ads_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `banner_id` tinyint(1) NOT NULL,
  `banner_image` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `banner_title` varchar(5000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `banner_subtitle` varchar(5000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`banner_id`, `banner_image`, `banner_title`, `banner_subtitle`) VALUES
(1, '../uploads_helpy_images/banner.jpg', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE `business` (
  `business_id` smallint(6) NOT NULL,
  `business_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `business_admin_entry` tinyint(4) NOT NULL,
  `business_image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `edit` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `business`
--

INSERT INTO `business` (`business_id`, `business_name`, `business_admin_entry`, `business_image`, `edit`) VALUES
(1, 'تقنيات', 1, 'business.jpg', 1),
(2, 'مفروشات وأدوات منزلية', 1, 'business.jpg', 0),
(3, 'ألبسة', 1, 'business.jpg', 0),
(4, 'خدمات أفراح', 1, 'business.jpg', 0),
(7, 'أحذية', 1, 'business.jpg', 0),
(8, 'جمال', 1, 'business.jpg', 0),
(9, 'إعلان وإعلام', 1, 'business.jpg', 0),
(11, 'سمانة', 1, 'business.jpg', 0),
(13, 'مركز تعليمي', 1, 'business.jpg', 0),
(14, 'مطعم', 1, 'business.jpg', 0),
(15, 'مقهى', 1, 'business.jpg', 0),
(16, 'سيارات وخدمة', 1, 'business.jpg', 0),
(19, 'الكترونيات وكهربائيات', 1, 'business.jpg', 0),
(20, 'فن', 1, 'business.jpg', 0),
(21, 'مكتبة', 1, 'business.jpg', 0),
(26, 'تحف وهدايا', 1, 'business.jpg', 0),
(27, 'صناعة', 1, 'business.jpg', 0),
(29, 'أطباء', 1, 'business.jpg', 0),
(30, 'خدمات طلابية', 1, 'business.jpg', 0),
(32, 'مالية', 1, 'business.jpg', 0),
(41, 'فلك', 1, 'business.jpg', 0),
(43, 'خدمات زراعية', 1, 'business.jpg', 0),
(45, 'لحومات', 1, 'business.jpg', 0),
(54, 'تجارة', 1, 'business.jpg', 0),
(63, 'أقمشة', 1, 'business.jpg', 0),
(65, 'أعمال النظافة والتوصيل', 1, 'business.jpg', 0),
(66, 'تأمين', 1, 'business.jpg', 0),
(67, 'مواقع ومصايف', 1, 'business.jpg', 0),
(70, 'صيدلة', 1, 'business.jpg', 0),
(71, 'مخبر', 1, 'business.jpg', 0),
(72, 'مركز طبي', 1, 'business.jpg', 0),
(97, 'قضاء', 1, 'business.jpg', 0),
(105, 'عقارات', 1, 'business.jpg', 0),
(106, 'مقاولات وبناء', 1, 'business.jpg', 0),
(107, 'مهندسون', 1, 'business.jpg', 0),
(110, 'مجمعات سياحية', 1, 'business.jpg', 0),
(111, 'تنظيمات حكومية ونقابية', 1, 'business.jpg', 0),
(112, 'جمعيات خيرية وأهلية', 1, 'business.jpg', 0),
(113, 'طاقة', 1, 'business.jpg', 0),
(114, 'ترفيه', 1, 'business.jpg', 0),
(115, 'خدمات سياحية', 1, 'business.jpg', 0),
(116, 'تسوق الكتروني', 1, 'business.jpg', 0),
(121, 'خضار وفواكه', 1, 'business.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `business_2`
--

CREATE TABLE `business_2` (
  `business_2_id` smallint(6) NOT NULL,
  `business_1` smallint(6) NOT NULL,
  `business_2_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `business_2_admin_entry` tinyint(4) NOT NULL,
  `edit` tinyint(4) NOT NULL DEFAULT '0',
  `business_2_image` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `business_2`
--

INSERT INTO `business_2` (`business_2_id`, `business_1`, `business_2_name`, `business_2_admin_entry`, `edit`, `business_2_image`) VALUES
(1, 13, 'أعمال يدوية', 1, 0, 'business2.png'),
(2, 26, 'شرقيات', 9, 0, 'business2.png'),
(3, 54, 'تجارة عامة', 9, 0, 'business2.png'),
(4, 19, 'صيانة الكترونيات وكهربائيات', 1, 0, 'business2.png'),
(5, 19, 'أدوات منزلية كهربائية', 1, 0, 'business2.png'),
(6, 19, 'أدوات كهربائية', 1, 0, 'business2.png'),
(7, 19, '	ساعات', 1, 0, 'business2.png'),
(8, 7, '	أحذية نسائية', 1, 0, 'business2.png'),
(9, 7, 'أحذية رجالية', 1, 0, 'business2.png'),
(10, 7, 'أحذية أطفال', 1, 0, 'business2.png'),
(11, 7, 'أحذية شاملة', 1, 0, 'business2.png'),
(12, 3, '	ألبسة رجالية', 1, 0, 'business2.png'),
(13, 3, 'ألبسة نسائية', 1, 0, 'business2.png'),
(14, 3, 'ألبسة أطفال', 1, 0, 'business2.png'),
(15, 3, 'ألبسة شاملة', 1, 0, 'business2.png'),
(16, 3, 'ألبسة قطنيات', 1, 0, 'business2.png'),
(17, 3, '	تجهيز عرائس', 1, 0, 'business2.png'),
(18, 54, '	تجارة توزيع جملة', 1, 0, 'business2.png'),
(19, 26, '	هدايا', 1, 0, 'business2.png'),
(20, 8, 'عطورات', 1, 0, 'business2.png'),
(21, 8, 'مكياج واكسسوار', 1, 0, 'business2.png'),
(22, 8, '	حقائب', 1, 0, 'business2.png'),
(23, 8, 'مجوهرات', 1, 0, 'business2.png'),
(24, 8, '	نادي تجميلي', 1, 0, 'business2.png'),
(25, 11, 'ألبان وأجبان', 1, 0, 'business2.png'),
(26, 11, 'سمانة', 1, 0, 'business2.png'),
(27, 11, 'مشروبات	', 1, 0, 'business2.png'),
(28, 11, 'مخابز', 1, 0, 'business2.png'),
(29, 11, 'حلويات', 1, 0, 'business2.png'),
(30, 11, 'محمصة', 1, 0, 'business2.png'),
(31, 11, 'بهارات وتوابل', 1, 0, 'business2.png'),
(32, 45, 'أسماك', 1, 0, 'business2.png'),
(33, 45, 'فروج', 1, 0, 'business2.png'),
(34, 45, 'لحم', 1, 0, 'business2.png'),
(35, 2, 'مفروشات', 1, 0, 'business2.png'),
(36, 2, 'مطابخ	', 1, 0, 'business2.png'),
(37, 2, 'أدوات منزلية وكهربائية', 9, 0, 'business2.png'),
(38, 21, 'قرطاسية', 1, 0, 'business2.png'),
(39, 21, 'دار نشر', 1, 0, 'business2.png'),
(40, 21, 'كتب', 1, 0, 'business2.png'),
(41, 1, '	اتصالات وموبايلات', 1, 0, 'business2.png'),
(42, 1, 'تجهيزات تقنية', 1, 0, 'business2.png'),
(43, 1, 'كمبيوتر وبرامج	', 1, 0, 'business2.png'),
(44, 54, 'استيراد وتصدير	', 1, 0, 'business2.png'),
(45, 9, 'إعلان وتسويق الكتروني', 1, 0, 'business2.png'),
(46, 9, 'جرائد ومجلات', 1, 0, 'business2.png'),
(47, 9, 'مطبعة وخدمات إعلانية	', 1, 0, 'business2.png'),
(48, 4, 'صالة أفراح	', 1, 0, 'business2.png'),
(49, 4, 'فساتين عرائس', 1, 0, 'business2.png'),
(50, 4, 'كوافير رجالي	', 1, 0, 'business2.png'),
(51, 4, 'أدوات حلاقة', 1, 0, 'business2.png'),
(52, 4, 'تصوير ومونتاج حفلات	', 1, 0, 'business2.png'),
(53, 4, '	صوت وإضاءة', 1, 0, 'business2.png'),
(54, 4, 'أزهار طبيعية وصناعية', 1, 0, 'business2.png'),
(55, 4, '	كوافير نسائي', 1, 0, 'business2.png'),
(56, 4, 'تنظيم وإحياء حفلات', 1, 0, 'business2.png'),
(57, 43, 'أدوات زراعية', 1, 0, 'business2.png'),
(58, 43, 'صيدلية زراعية', 1, 0, 'business2.png'),
(59, 43, 'معاصر	', 1, 0, 'business2.png'),
(60, 43, 'حيوانات', 1, 0, 'business2.png'),
(61, 43, 'نبات زينة', 1, 0, 'business2.png'),
(62, 43, 'مشاتل', 1, 0, 'business2.png'),
(63, 43, 'مدجنة', 1, 0, 'business2.png'),
(64, 16, 'مكتب تكسي	', 1, 0, 'business2.png'),
(65, 16, '	شحن وحوالات', 1, 0, 'business2.png'),
(66, 16, 'قطع سيارات وعدة', 1, 0, 'business2.png'),
(67, 16, 'سفريات', 1, 0, 'business2.png'),
(68, 16, 'بيع وتأجير سيارات', 1, 0, 'business2.png'),
(69, 16, 'مغسل ومشحم', 1, 0, 'business2.png'),
(70, 16, 'ميكانيك وصيانة', 1, 0, 'business2.png'),
(71, 16, 'كهرباء سيارات', 1, 0, 'business2.png'),
(72, 16, 'مدارس تعليم القيادة	', 1, 0, 'business2.png'),
(73, 16, 'زينة سيارات', 1, 0, 'business2.png'),
(74, 32, '	بنوك', 1, 0, 'business2.png'),
(75, 32, 'مصارف', 1, 0, 'business2.png'),
(76, 32, 'شركات صرافة وتحويل', 1, 0, 'business2.png'),
(79, 9, 'راديو', 1, 0, 'business2.png'),
(80, 14, 'مطعم فطائر	', 1, 0, 'business2.png'),
(81, 14, 'مطعم مأكولات شعبية', 1, 0, 'business2.png'),
(82, 14, 'مطاعم مع جلسات', 1, 0, 'business2.png'),
(83, 14, 'مطعم وجبات سريعة', 1, 0, 'business2.png'),
(84, 14, '	آيس كريم وعصائر', 1, 0, 'business2.png'),
(85, 15, 'مقهى ثقافي', 1, 0, 'business2.png'),
(86, 15, 'مقهى انترنت	', 1, 0, 'business2.png'),
(87, 15, 'مقهى كافيه	', 1, 0, 'business2.png'),
(88, 70, 'صيدلية أدوية	', 1, 0, 'business2.png'),
(89, 70, 'مستودع أدوية	', 1, 0, 'business2.png'),
(90, 71, 'مخبر تحاليل طبية	', 1, 0, 'business2.png'),
(91, 71, 'مخبر أسنان	', 1, 0, 'business2.png'),
(92, 29, 'أطباء أسنان	', 1, 0, 'business2.png'),
(93, 29, 'أطباء أذن وأنف وحنجرة', 1, 0, 'business2.png'),
(94, 29, 'أطباء عينية', 1, 0, 'business2.png'),
(95, 29, 'أطباء نسائية	', 1, 0, 'business2.png'),
(96, 29, 'أطباء داخلية	', 1, 0, 'business2.png'),
(97, 29, 'أطباء عظمية', 1, 0, 'business2.png'),
(98, 29, 'أطباء عصبية	', 1, 0, 'business2.png'),
(99, 29, 'أطباء أطفال	', 1, 0, 'business2.png'),
(100, 29, 'أطباء جراحة عامة	', 1, 0, 'business2.png'),
(101, 29, '	أطباء أشعة', 1, 0, 'business2.png'),
(102, 29, 'طب عام', 1, 0, 'business2.png'),
(103, 29, 'أطباء تخدير وإنعاش	', 1, 0, 'business2.png'),
(104, 29, 'أطباء جلدية	', 1, 0, 'business2.png'),
(105, 29, 'أطباء جراحة تجميل	', 1, 0, 'business2.png'),
(106, 29, 'أطباء بولية وتناسلية	', 1, 0, 'business2.png'),
(107, 29, 'أطباء قلبية	', 1, 0, 'business2.png'),
(108, 29, 'أطباء أمراض الدم	', 1, 0, 'business2.png'),
(109, 29, 'أطباء أمراض الكلية	', 1, 0, 'business2.png'),
(110, 29, 'أطباء أورام وسرطان	', 1, 0, 'business2.png'),
(111, 29, 'أطباء تغذية	', 1, 0, 'business2.png'),
(112, 29, 'أطباء جراحة أعصاب', 1, 0, 'business2.png'),
(113, 29, 'أطباء جراحة أوعية', 1, 0, 'business2.png'),
(114, 29, 'أطباء جراحة بولية وتناسلية	', 1, 0, 'business2.png'),
(115, 29, 'أطباء جراحة تنظيرية	', 1, 0, 'business2.png'),
(117, 29, 'أطباء غدد صم والسكري	', 1, 0, 'business2.png'),
(118, 29, 'أطباء صدرية	', 1, 0, 'business2.png'),
(119, 29, 'أطباء مفاصل وروماتيزم	', 1, 0, 'business2.png'),
(120, 43, 'عيادة بيطرية	', 1, 0, 'business2.png'),
(121, 7, 'أحذية طبية	', 1, 0, 'business2.png'),
(123, 30, 'مكتبة خدمات طلابية', 1, 0, 'business2.png'),
(124, 30, 'قبولات جامعية وبعثات	', 1, 0, 'business2.png'),
(125, 30, 'مدرس خصوصي	', 1, 0, 'business2.png'),
(126, 20, 'آلات موسيقية	', 1, 0, 'business2.png'),
(127, 20, 'مرسم', 1, 0, 'business2.png'),
(128, 20, 'معهد موسيقا	', 1, 0, 'business2.png'),
(129, 13, 'روضة حكومية	', 1, 0, 'business2.png'),
(130, 13, 'روضة خاصة	', 1, 0, 'business2.png'),
(131, 13, 'مدرسة خاصة	', 1, 0, 'business2.png'),
(132, 13, '	مدرسة حكومية', 1, 0, 'business2.png'),
(133, 13, 'معهد تدريب	', 1, 0, 'business2.png'),
(134, 13, 'معهد مهني	', 1, 0, 'business2.png'),
(135, 13, 'جامعات ومعاهد', 1, 0, 'business2.png'),
(136, 63, 'أقمشة وستائر	', 1, 0, 'business2.png'),
(137, 63, 'خياطة', 1, 0, 'business2.png'),
(138, 65, 'تأمين خادمات	', 1, 0, 'business2.png'),
(139, 65, 'ورش تنظيف	', 1, 0, 'business2.png'),
(140, 66, 'شركة تأمين	', 1, 0, 'business2.png'),
(141, 41, 'فلك', 1, 0, 'business2.png'),
(142, 110, 'فندق', 1, 0, 'business2.png'),
(143, 110, 'مجمع سياحي شامل	', 1, 0, 'business2.png'),
(144, 67, 'مواقع أثرية', 1, 0, 'business2.png'),
(145, 67, 'منتزه', 1, 0, 'business2.png'),
(146, 67, 'حدائق', 1, 0, 'business2.png'),
(147, 72, 'أجهزة طبية	', 1, 0, 'business2.png'),
(148, 72, 'بصريات	', 1, 0, 'business2.png'),
(149, 72, 'صناعات دوائية	', 1, 0, 'business2.png'),
(150, 72, 'مركز أشعة	', 1, 0, 'business2.png'),
(151, 72, 'مجمع طبي	', 1, 0, 'business2.png'),
(152, 72, '	مشفى خاص', 1, 0, 'business2.png'),
(153, 72, 'مشفى حكومي	', 1, 0, 'business2.png'),
(154, 72, 'معالجة فيزيائية	', 1, 0, 'business2.png'),
(155, 111, 'نقابات', 1, 0, 'business2.png'),
(156, 111, 'جمعيات مهنية	', 1, 0, 'business2.png'),
(157, 111, 'مؤسسات حكومية	', 1, 0, 'business2.png'),
(158, 112, 'جمعيات حكومية	', 1, 0, 'business2.png'),
(159, 112, 'جمعيات خيرية خاصة	', 1, 0, 'business2.png'),
(160, 112, 'منظمات ومبادرات العمل المدني والأهلي	', 1, 0, 'business2.png'),
(161, 113, 'موزع غاز	', 1, 0, 'business2.png'),
(162, 113, 'كازية	', 1, 0, 'business2.png'),
(163, 113, 'طاقة بديلة	', 1, 0, 'business2.png'),
(164, 114, 'تجهيزات رياضية	', 1, 0, 'business2.png'),
(165, 114, 'سينما', 1, 0, 'business2.png'),
(166, 114, 'مسبح', 1, 0, 'business2.png'),
(167, 114, 'صالة ألعاب	', 1, 0, 'business2.png'),
(168, 114, 'ملاعب', 1, 0, 'business2.png'),
(169, 114, 'نادي رياضة	', 1, 0, 'business2.png'),
(170, 105, 'تجارة أراضي	', 1, 0, 'business2.png'),
(171, 105, 'مكتب عقاري', 1, 0, 'business2.png'),
(172, 106, 'إكساء وديكور	', 1, 0, 'business2.png'),
(173, 106, 'أبراج سكنية وتجارية', 1, 0, 'business2.png'),
(174, 106, 'تكييف وتبريد	', 1, 0, 'business2.png'),
(175, 106, 'حجر ورخام	', 1, 0, 'business2.png'),
(176, 106, 'حديد', 1, 0, 'business2.png'),
(177, 106, 'دهانات	', 1, 0, 'business2.png'),
(178, 106, 'سيراميك	', 1, 0, 'business2.png'),
(179, 106, 'شركة مقاولات	', 1, 0, 'business2.png'),
(180, 106, 'منجرة', 1, 0, 'business2.png'),
(181, 106, 'معامل خشب', 1, 0, 'business2.png'),
(182, 106, 'شركات المصاعد', 1, 0, 'business2.png'),
(183, 107, 'مهندس ديكور', 1, 0, 'business2.png'),
(184, 107, 'مهندس صحية', 1, 0, 'business2.png'),
(185, 107, 'مهندس عمارة', 1, 0, 'business2.png'),
(186, 107, 'مهندس كهرباء	', 1, 0, 'business2.png'),
(187, 107, 'مهندس مدني وإنشائي', 1, 0, 'business2.png'),
(188, 107, 'مهندس معلوماتية	', 1, 0, 'business2.png'),
(189, 107, 'مكتب هندسي', 1, 0, 'business2.png'),
(190, 27, 'صناعات بلاستيكية	', 1, 0, 'business2.png'),
(191, 27, 'صناعات زجاج	', 1, 0, 'business2.png'),
(192, 27, 'صناعات غذائية	', 1, 0, 'business2.png'),
(193, 27, 'صناعة محارم	', 1, 0, 'business2.png'),
(194, 27, 'صناعة مشروبات	', 1, 0, 'business2.png'),
(195, 97, 'محامون', 1, 0, 'business2.png'),
(196, 97, 'تعقيب معاملات قضائية	', 1, 0, 'business2.png'),
(197, 97, 'محاكم', 1, 0, 'business2.png'),
(198, 106, 'مواد بناء	', 1, 0, 'business2.png'),
(199, 106, 'معامل ألمنيوم	', 1, 0, 'business2.png'),
(200, 4, 'تاتو', 1, 0, 'business2.png'),
(201, 106, 'منجرة ألمنيوم', 1, 0, 'business2.png'),
(202, 14, 'مطبخ شرقي', 1, 0, 'business2.png'),
(203, 106, 'زجاج وسيكوريت', 1, 0, 'business2.png'),
(204, 70, 'صيدلاني', 1, 0, 'business2.png'),
(205, 65, 'خدمة توصيل', 1, 0, 'business2.png'),
(206, 115, 'سياحة وسفر', 1, 0, 'business2.png'),
(207, 27, 'كهرباء ومنظمات', 1, 0, 'business2.png'),
(208, 116, 'دليل الكتروني', 1, 0, 'business2.png'),
(209, 116, 'تجارة الكترونية', 1, 0, 'business2.png'),
(210, 116, 'خدمات الكترونية', 1, 0, 'business2.png'),
(220, 29, 'طبيب نفسي', 1, 0, 'business2.png'),
(221, 121, 'محل بيع', 1, 0, 'business2.png'),
(222, 121, 'موزع جملة', 1, 0, 'business2.png'),
(223, 121, 'خضار جاهزة', 1, 0, 'business2.png'),
(224, 121, 'مزرعة', 1, 0, 'business2.png'),
(225, 1, 'خدمات انترنت', 1, 0, 'business2.png');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `city_admin_entry` tinyint(4) NOT NULL,
  `city_region` int(6) NOT NULL,
  `edit` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`, `city_admin_entry`, `city_region`, `edit`) VALUES
(1, 'السويداء', 1, 2, 0),
(2, 'شهبا', 1, 2, 0),
(3, 'صلخد', 1, 2, 0),
(4, 'عتيل', 1, 2, 0),
(5, 'القريا', 1, 2, 2),
(6, 'البرامكة', 6, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `client_id` int(11) NOT NULL,
  `client_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `client_business` smallint(6) NOT NULL,
  `client_business_2` smallint(6) NOT NULL,
  `client_region` int(11) NOT NULL,
  `client_city` int(9) DEFAULT NULL,
  `client_address` text CHARACTER SET utf8 COLLATE utf8_bin,
  `client_detail` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `client_visible` tinyint(1) NOT NULL DEFAULT '1',
  `client_image` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `client_gallery_1` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `client_gallery_2` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `client_gallery_3` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `client_tel1` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `client_tel2` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `client_tel3` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `client_mobile1` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `client_mobile2` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `client_mobile3` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `client_email` text CHARACTER SET utf8 COLLATE utf8_bin,
  `client_whatsapp` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `client_facebook` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `client_instagram` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `client_date_entry` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `client_admin_entry` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `client_validate` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `client_owner` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `client_note` text CHARACTER SET utf8 COLLATE utf8_bin,
  `client_view` int(11) NOT NULL DEFAULT '10',
  `client_date` date NOT NULL,
  `client_star` tinyint(1) NOT NULL DEFAULT '0',
  `client_password` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `client_temp`
--

CREATE TABLE `client_temp` (
  `id` int(11) NOT NULL,
  `region` int(11) NOT NULL,
  `tel` int(11) NOT NULL,
  `personal_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `country_flag` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`, `country_flag`) VALUES
(1, 'سوريا', '');

-- --------------------------------------------------------

--
-- Table structure for table `favorite`
--

CREATE TABLE `favorite` (
  `favorite_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL,
  `feedback_text` text COLLATE utf8_unicode_ci NOT NULL,
  `feedback_date_entry` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `feedback_check` tinyint(1) NOT NULL DEFAULT '0',
  `feedback_user` int(11) NOT NULL,
  `feedback_sub_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `logo_id` tinyint(1) NOT NULL,
  `logo_image` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `logo_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `logo_alt` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `edit` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`logo_id`, `logo_image`, `logo_title`, `logo_alt`, `edit`) VALUES
(1, 'logo_image_2084579684.0996.jpg', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal`
--

CREATE TABLE `personal` (
  `personal_id` tinyint(1) NOT NULL,
  `personal_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `personal_name_ar` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `personal_email` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `personal_url` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `personal_tel` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `personal_mobile` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `personal_country` smallint(6) NOT NULL,
  `personal_address` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `personal_logo` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `personal_logo_name_root` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `personal_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `edit` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `personal`
--

INSERT INTO `personal` (`personal_id`, `personal_name`, `personal_name_ar`, `personal_email`, `personal_url`, `personal_tel`, `personal_mobile`, `personal_country`, `personal_address`, `personal_logo`, `personal_logo_name_root`, `personal_date`, `edit`) VALUES
(1, 'Helpy', 'هيلبي', 'info@helpysyria.com', 'helpysyria.com', '', '', 232, '', 'no_logo.png', NULL, '2020-12-27 09:06:52', 2);

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `region_id` int(11) NOT NULL,
  `region_name` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `region_country` int(11) NOT NULL,
  `region_admin_entry` tinyint(2) NOT NULL,
  `edit` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`region_id`, `region_name`, `region_country`, `region_admin_entry`, `edit`) VALUES
(1, 'دمشق', 1, 14, 0),
(2, 'السويداء', 1, 14, 0),
(3, 'الرقة', 1, 1, 0),
(4, 'درعا', 1, 1, 0),
(5, 'حاب', 1, 1, 0),
(6, 'حماه', 1, 1, 0),
(7, 'جمص', 1, 1, 0),
(8, 'إدلب', 1, 1, 0),
(9, 'القنيطرة', 1, 1, 0),
(10, 'الحسكة', 1, 1, 0),
(11, 'دير الزور', 1, 1, 0),
(12, 'اللاذقية', 1, 1, 0),
(13, 'طرطوس', 1, 1, 0),
(14, 'ريف دمشق', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `registerations`
--

CREATE TABLE `registerations` (
  `id` int(11) UNSIGNED NOT NULL,
  `mobile` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reg_id` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `os` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `version` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `report_id` int(11) NOT NULL,
  `report_item` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `report_body` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `report_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `report_check` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `theme`
--

CREATE TABLE `theme` (
  `theme_id` int(11) NOT NULL,
  `theme_color` varchar(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#751a63',
  `theme_font_color` varchar(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#fefefe',
  `theme_header` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'row-table_no_image.png',
  `theme_table_row1` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'first-row_no_image.png',
  `theme_table_row2` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'first-row_2_no_image.png',
  `edit` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `theme`
--

INSERT INTO `theme` (`theme_id`, `theme_color`, `theme_font_color`, `theme_header`, `theme_table_row1`, `theme_table_row2`, `edit`) VALUES
(1, '#751a63', '#ffffff', '', '', '', 10);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name_helpy_control` varchar(40) COLLATE utf8_bin NOT NULL,
  `user_password_helpy_control` varchar(40) COLLATE utf8_bin NOT NULL,
  `user_level` tinyint(4) NOT NULL DEFAULT '2',
  `user_reg_edit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_email` varchar(100) COLLATE utf8_bin NOT NULL,
  `user_image` varchar(1000) COLLATE utf8_bin NOT NULL DEFAULT 'user_no_image.png',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `user_full_name` varchar(256) COLLATE utf8_bin NOT NULL,
  `edit` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name_helpy_control`, `user_password_helpy_control`, `user_level`, `user_reg_edit`, `user_email`, `user_image`, `visible`, `user_full_name`, `edit`) VALUES
(1, 'ehab@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 1, '2015-03-18 22:40:19', 'ehab.a@bissan.me', 'user_no_image.png', 1, '', 0),
(2, 'rawad11@gmail.com', 'efbcd69b9d23e107c5fb0e139f3f98fbfa740135', 3, '2020-12-08 14:02:41', '', 'user_no_image.png', 1, 'Raa', 2);

-- --------------------------------------------------------

--
-- Table structure for table `visit`
--

CREATE TABLE `visit` (
  `visit_id` tinyint(1) NOT NULL,
  `visit_index` int(11) NOT NULL,
  `visit_contact` int(11) NOT NULL,
  `visit_categories` int(11) NOT NULL,
  `visit_business` int(11) NOT NULL,
  `visit_app` int(11) NOT NULL,
  `visit_about` int(11) NOT NULL,
  `visit_404` int(11) NOT NULL,
  `visit_feedback` int(11) NOT NULL,
  `visit_header` int(11) NOT NULL,
  `visit_filter` int(11) NOT NULL,
  `visit_item` int(11) NOT NULL,
  `visit_privacy` int(11) NOT NULL,
  `visit_report` int(11) NOT NULL,
  `visit_sitemap` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `visit`
--

INSERT INTO `visit` (`visit_id`, `visit_index`, `visit_contact`, `visit_categories`, `visit_business`, `visit_app`, `visit_about`, `visit_404`, `visit_feedback`, `visit_header`, `visit_filter`, `visit_item`, `visit_privacy`, `visit_report`, `visit_sitemap`) VALUES
(1, 12056, 522, 1160, 49072, 507, 391, 67, 367, 30375, 202, 27306, 392, 9510, 621);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`ads_id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`business_id`);

--
-- Indexes for table `business_2`
--
ALTER TABLE `business_2`
  ADD PRIMARY KEY (`business_2_id`),
  ADD KEY `business_2_business_1_foreign` (`business_1`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`),
  ADD KEY `city_city_region_foreign` (`city_region`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`client_id`),
  ADD KEY `client_client_business_foreign` (`client_business`),
  ADD KEY `client_client_business_2_foreign` (`client_business_2`),
  ADD KEY `client_client_region_foreign` (`client_region`),
  ADD KEY `client_client_city_foreign` (`client_city`);

--
-- Indexes for table `client_temp`
--
ALTER TABLE `client_temp`
  ADD KEY `client_temp_region_region` (`region`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `favorite`
--
ALTER TABLE `favorite`
  ADD KEY `favorite_client_id_foreign` (`client_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`logo_id`);

--
-- Indexes for table `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`personal_id`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`region_id`),
  ADD KEY `region_region_country_foreign` (`region_country`);

--
-- Indexes for table `registerations`
--
ALTER TABLE `registerations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`report_id`);

--
-- Indexes for table `theme`
--
ALTER TABLE `theme`
  ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `visit`
--
ALTER TABLE `visit`
  ADD PRIMARY KEY (`visit_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `ads_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `banner_id` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `business`
--
ALTER TABLE `business`
  MODIFY `business_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `business_2`
--
ALTER TABLE `business_2`
  MODIFY `business_2_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `logo_id` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal`
--
ALTER TABLE `personal`
  MODIFY `personal_id` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `region_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `registerations`
--
ALTER TABLE `registerations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `theme`
--
ALTER TABLE `theme`
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `visit`
--
ALTER TABLE `visit`
  MODIFY `visit_id` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ads`
--
ALTER TABLE `ads`
  ADD CONSTRAINT `ads_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `client` (`client_id`) ON DELETE CASCADE;

--
-- Constraints for table `business_2`
--
ALTER TABLE `business_2`
  ADD CONSTRAINT `business_2_business_1_foreign` FOREIGN KEY (`business_1`) REFERENCES `business` (`business_id`) ON DELETE CASCADE;

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `city_city_region_foreign` FOREIGN KEY (`city_region`) REFERENCES `region` (`region_id`) ON DELETE CASCADE;

--
-- Constraints for table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `client_client_business_2_foreign` FOREIGN KEY (`client_business_2`) REFERENCES `business_2` (`business_2_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `client_client_business_foreign` FOREIGN KEY (`client_business`) REFERENCES `business` (`business_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `client_client_city_foreign` FOREIGN KEY (`client_city`) REFERENCES `city` (`city_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `client_client_region_foreign` FOREIGN KEY (`client_region`) REFERENCES `region` (`region_id`) ON DELETE CASCADE;

--
-- Constraints for table `client_temp`
--
ALTER TABLE `client_temp`
  ADD CONSTRAINT `client_temp_region_region` FOREIGN KEY (`region`) REFERENCES `region` (`region_id`) ON DELETE CASCADE;

--
-- Constraints for table `favorite`
--
ALTER TABLE `favorite`
  ADD CONSTRAINT `favorite_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `client` (`client_id`) ON DELETE CASCADE;

--
-- Constraints for table `region`
--
ALTER TABLE `region`
  ADD CONSTRAINT `region_region_country_foreign` FOREIGN KEY (`region_country`) REFERENCES `country` (`country_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
