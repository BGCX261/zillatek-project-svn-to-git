-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 29, 2011 at 12:42 PM
-- Server version: 5.1.56
-- PHP Version: 5.2.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `xinhmoin_tnx_home`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id_article` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updater` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  `publish_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_off` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL,
  `logical_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `indexed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `id_category` int(11) unsigned DEFAULT NULL,
  `comment_allow` char(1) COLLATE utf8_unicode_ci DEFAULT '1',
  `comment_autovalid` char(1) COLLATE utf8_unicode_ci DEFAULT '1',
  `comment_expire` datetime DEFAULT NULL,
  `flag` smallint(1) DEFAULT '0',
  PRIMARY KEY (`id_article`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7' AUTO_INCREMENT=54 ;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id_article`, `name`, `author`, `updater`, `created`, `publish_on`, `publish_off`, `updated`, `logical_date`, `indexed`, `id_category`, `comment_allow`, `comment_autovalid`, `comment_expire`, `flag`) VALUES
(1, '404', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, '0', '0', NULL, 0),
(2, 'tnx-house-welcome', '', 'admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-10-19 01:39:46', '0000-00-00 00:00:00', 0, 0, '', '', '0000-00-00 00:00:00', 0),
(4, 'home-example', '', 'admin', '2011-07-05 18:27:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-10-19 03:22:52', '0000-00-00 00:00:00', 0, 0, '', '', '0000-00-00 00:00:00', 0),
(5, 'tnx-family', '', 'admin', '2011-07-05 19:35:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-10-19 01:08:30', '0000-00-00 00:00:00', 0, 0, '', '', '0000-00-00 00:00:00', 0),
(6, 'footer-article', '', 'admin', '2011-07-12 17:04:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-10-19 03:44:46', '0000-00-00 00:00:00', 0, 0, '', '', '0000-00-00 00:00:00', 0),
(7, 'footer-views', '', 'admin', '2011-07-12 17:04:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-10-19 03:44:50', '0000-00-00 00:00:00', 0, 0, '', '', '0000-00-00 00:00:00', 0),
(8, 'cuoi-tuong-bo', '', 'admin', '2011-07-12 17:05:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-10-19 03:51:00', '0000-00-00 00:00:00', 0, 0, '', '', '0000-00-00 00:00:00', 0),
(10, 'chup-hinh-cuoi-xong', '', 'admin', '2011-07-13 21:16:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-10-19 03:34:59', '2011-10-15 02:28:55', 1, 0, '1', '', '0000-00-00 00:00:00', 0),
(11, 'blog-gia-dinh', '', 'admin', '2011-07-13 23:33:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-10-19 03:27:48', '0000-00-00 00:00:00', 1, 0, '1', '', '0000-00-00 00:00:00', 0),
(13, 'contact-information', '', 'admin', '2011-07-27 06:55:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-10-19 03:43:55', '0000-00-00 00:00:00', 0, 0, '', '', '0000-00-00 00:00:00', 0),
(31, 'di-choi-vung-tau', '', 'admin', '2011-08-24 20:54:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-10-19 03:20:15', '0000-00-00 00:00:00', 1, 0, '1', '', '0000-00-00 00:00:00', 0),
(32, 'for-developpers', '', '', '2011-08-25 11:43:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-08-25 11:44:49', '0000-00-00 00:00:00', 0, 0, '', '', '0000-00-00 00:00:00', 0),
(36, 'cm-nang-tnx-family', 'admin', '', '2011-10-09 00:28:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-10-09 00:28:47', '0000-00-00 00:00:00', 0, 0, '', '', '0000-00-00 00:00:00', 0),
(37, 'chup-hinh-cuoi', 'admin', 'admin', '2011-10-09 15:08:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-10-19 01:45:45', '0000-00-00 00:00:00', 0, 0, '', '', '0000-00-00 00:00:00', 0),
(38, 'kinh-nghiem-kham-benh-o-benh-vien-da-lieu', 'admin', '', '2011-10-09 15:17:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-10-09 15:17:00', '0000-00-00 00:00:00', 1, 0, '', '', '0000-00-00 00:00:00', 0),
(39, 'dau-lung-phia-sau-vai', 'admin', 'admin', '2011-10-09 17:00:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-10-09 17:00:50', '0000-00-00 00:00:00', 0, 0, '1', '', '0000-00-00 00:00:00', 0),
(42, 'hinh-du-lich-phan-thiet', 'admin', 'admin', '2011-10-11 00:56:57', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-10-19 02:26:15', '0000-00-00 00:00:00', 0, 0, '1', '', '0000-00-00 00:00:00', 0),
(43, 'hinh-cuoi', 'admin', 'admin', '2011-10-19 02:32:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-10-19 03:23:47', '0000-00-00 00:00:00', 0, 0, '1', '', '0000-00-00 00:00:00', 0),
(44, 'hinh-cuoi-phan-2', 'admin', 'admin', '2011-10-29 10:21:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-10-29 10:25:23', '0000-00-00 00:00:00', 0, 0, '1', '', '0000-00-00 00:00:00', 0),
(45, 'hinh-cuoi-phan-3', 'admin', 'admin', '2011-10-29 10:28:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-10-29 10:32:59', '0000-00-00 00:00:00', 0, 0, '1', '', '0000-00-00 00:00:00', 0),
(46, 'hinh-cuoi-phan-4', 'admin', 'admin', '2011-10-29 10:34:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-10-29 10:41:05', '0000-00-00 00:00:00', 0, 0, '1', '', '0000-00-00 00:00:00', 0),
(47, 'hinh-cuoi-phan-5', 'admin', 'admin', '2011-10-29 10:43:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-10-29 10:48:57', '0000-00-00 00:00:00', 0, 0, '1', '', '0000-00-00 00:00:00', 0),
(48, 'hinh-cuoi-phan-6', 'admin', 'admin', '2011-10-29 10:49:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-10-29 10:56:34', '0000-00-00 00:00:00', 0, 0, '1', '', '0000-00-00 00:00:00', 0),
(49, 'hinh-cuoi-phan-7', 'admin', 'admin', '2011-10-29 10:57:41', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-10-29 11:03:53', '0000-00-00 00:00:00', 0, 0, '1', '', '0000-00-00 00:00:00', 0),
(50, 'hinh-cuoi-pha-8', 'admin', 'admin', '2011-10-29 11:08:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-10-29 11:28:35', '0000-00-00 00:00:00', 0, 0, '1', '', '0000-00-00 00:00:00', 0),
(51, 'hau-truong-hinh-cuoi', 'admin', '', '2011-10-29 11:43:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-10-29 11:43:05', '0000-00-00 00:00:00', 0, 0, '1', '', '0000-00-00 00:00:00', 0),
(52, 'hau-truong-hinh-cuoi-2', 'admin', '', '2011-10-29 11:46:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-10-29 11:46:05', '0000-00-00 00:00:00', 0, 0, '1', '', '0000-00-00 00:00:00', 0),
(53, 'hau-truong-hinh-cuoi-3', 'admin', 'admin', '2011-10-29 11:47:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-10-29 11:53:00', '0000-00-00 00:00:00', 0, 0, '1', '', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `article_category`
--

DROP TABLE IF EXISTS `article_category`;
CREATE TABLE `article_category` (
  `id_article` int(11) unsigned NOT NULL,
  `id_category` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7';

--
-- Dumping data for table `article_category`
--

INSERT INTO `article_category` (`id_article`, `id_category`) VALUES
(38, 5),
(39, 5),
(37, 6),
(42, 8),
(31, 8),
(43, 8);

-- --------------------------------------------------------

--
-- Table structure for table `article_comment`
--

DROP TABLE IF EXISTS `article_comment`;
CREATE TABLE `article_comment` (
  `id_article_comment` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_article` int(11) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `ip` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(3) unsigned DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `admin` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'If comment comes from admin, set to 1',
  PRIMARY KEY (`id_article_comment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `article_lang`
--

DROP TABLE IF EXISTS `article_lang`;
CREATE TABLE `article_lang` (
  `id_article` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `online` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_article`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7';

--
-- Dumping data for table `article_lang`
--

INSERT INTO `article_lang` (`id_article`, `lang`, `url`, `title`, `subtitle`, `meta_title`, `summary`, `content`, `meta_keywords`, `meta_description`, `online`) VALUES
(1, 'en', '404', '404', NULL, NULL, NULL, '<p>The content you asked was not found !</p>', NULL, NULL, 1),
(1, 'vi', '404', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(2, 'en', 'tnx-house-welcome', 'Câu chuyện tình tôi', 'TNX''s house', '', NULL, '<p>Khi 2 người dưng làm quen với nhau, chàng hẹn nhiều lần mà không được gặp, sau đó chàng biết nàng thích ăn kẹo dừa nên đi Bến Tre mua về dụ, từ đó chàng gọi nàng là Người Xấu, nàng gọi chàng là Người Tốt và đến với nhau để xây dựng một gia đình nhỏ, gia đình Người Tốt + Người Xấu</p>\n<p>TNX có thể đọc là Tốt And Xấu, hoặc đọc từ chữ N ra 2 bên (vì ngược nhau mà) Người Tốt, Người Xấu .</p>', NULL, NULL, 1),
(2, 'vi', 'welcome-article-url', '', '', '', NULL, '', NULL, NULL, 1),
(4, 'en', 'home-example', 'TNX-Home website', '', '', NULL, '<p>TNX-Home là trang web của gia đình Mạnh Cường + Ngọc Thắng, để sử dụng cho gia đình với mục đích lưu trữ, chia sẻ những hoạt động, những kinh nghiệm cuộc sống cho bạn bè, người thân để cuộc sống gia đình trở nên vui tươi, ấm cúng và ngày càng hạnh phúc hơn.</p>', NULL, NULL, 1),
(4, 'vi', 'home-example', '', '', '', NULL, '', NULL, NULL, 1),
(5, 'en', 'tnx-family', 'Câu chuyện tình tôi', '', '', NULL, '<p>Khi mới làm quen với nhau, chàng hẹn nhiều lần mà không được gặp, sau đó chàng biết nàng thích ăn kẹo dừa nên đi Bến Tre mua về dụ, từ đó chàng gọi nàng là Người Xấu, nàng gọi chàng là Người Tốt và đến với nhau để xây dựng một gia đình nhỏ, gia đình Người Tốt + Người Xấu</p>\n<p>TNX có thể đọc là Tốt And Xấu, hoặc đọc từ chữ N ra 2 bên (vì ngược nhau mà) Người Tốt, Người Xấu .</p>', NULL, NULL, 1),
(5, 'vi', 'article-type', '', '', '', NULL, '', NULL, NULL, 1),
(6, 'en', 'footer-article', 'Footer article', '', '', NULL, '<p>This article has the view "Footer" and is located in the page called "Footer".<br />Views define how one content will be displayed.</p>', NULL, NULL, 0),
(6, 'vi', 'footer-article', '', '', '', NULL, '', NULL, NULL, 1),
(7, 'en', 'footer-views', 'More about views', '', '', NULL, '<p>Views are PHP files. They can be declared as "Page" or "Article" in Ionize. Then, they will be available when editing a page.</p>', NULL, NULL, 0),
(7, 'vi', 'footer-views', '', '', '', NULL, '', NULL, NULL, 1),
(8, 'en', 'cuoi-tuong-bo', 'Cười: Tưởng bở', '', '', NULL, '<p class="Lead">Người thợ săn vào rừng, gặp con hổ, ông lập cập rút súng ra, nhưng con hổ đã vồ đến.</p>\n<p class="Normal">Ông sợ quá, chạy tọt vào rừng, con hổ đuổi theo. Đến cuối bờ dốc, không chạy được nữa, ông mới quỳ xuống và cầu xin trước chúa:</p>\n<p class="Normal">- Lạy chúa, hãy cứu con thoát khỏi kiếp nạn này!</p>\n<p class="Normal">Và đột nhiên, như một phép nhiệm màu, con hổ quỳ xuống trước mặt ông và cầu nguyện. Ông vui mừng hết sức, chạy đến chỗ con hổ:</p>\n<p class="Normal">- Khi chết đi, mày sẽ được lên thiên đường.</p>\n<p class="Normal">Con hổ đáp:</p>\n<p class="Normal">- Cảm ơn, tôi thường cầu nguyện trước bữa ăn mà.</p>\n<p class="Normal">- !!!!!</p>\n<p class="Normal">(VNExpress.net)</p>', NULL, NULL, 0),
(8, 'vi', 'follow-us', '', '', '', NULL, '', NULL, NULL, 1),
(10, 'en', 'chup-hinh-cuoi-xong', 'Chụp hình cưới xong', '', '', NULL, '<p>Hôm nay đi chụp hình cưới về, đuối hết cả người nhưng thấy vui vì thời tiết đúng như mình mong đợi. Chụp về xem hình ngay tại studio thấy cũng rất ưng ý.</p>\n<p>Vậy là một việc nữa được hoàn thành, giờ chọn hình rồi gửi qua cho studio họ chỉnh sửa, thiết kế album.</p>\n<p>Ở studio này họ cho thay 6 bộ cho cô dâu, chú rể cũng vậy nhưng có một cái áo sơ mi tím mặc cùng váy cá tím của cô dâu, cái sơ mi này bị nhăn quá nên mềnh ko mặc, lấy ao trắng mặc thắt cà vạt.</p>\n<p>Chụp hình cưới có vài người bạn đi chụp cũng vui, khi nào post ảnh hậu trường chụp hình cưới lên cho mọi người xem. Nhưng trước hết post loạt hình thô lấy ở studio về đã, cái này chắc phải chia 7, 8 phần để post cho nó nhẹ.</p>', NULL, NULL, 1),
(10, 'vi', 'one-blog-post', '', '', '', NULL, '', NULL, NULL, 1),
(11, 'en', 'blog-gia-dinh', 'Lập trang blog gia đình', '', '', NULL, '<p>Muốn làm trang blog gia đình, lúc đầu muốn tự viết bằng CodeIgniter nhưng thấy lâu quá nên tìm cái cms có sẵn, customize rồi đẩy lên cho lẹ, có thời gian chỉnh sửa sau.</p>', NULL, NULL, 1),
(11, 'vi', 'another-post', '', '', '', NULL, '', NULL, NULL, 1),
(13, 'en', 'contact-information', 'Contact information', '', '', NULL, '<p>Contact email: manhcuongvu2004@yahoo.com</p>', NULL, NULL, 1),
(13, 'vi', 'corporate-information', '', '', '', NULL, '', NULL, NULL, 1),
(31, 'en', 'di-choi-vung-tau', 'Đi chơi Vũng Tàu', '', '', NULL, '<p>Hình đi chơi Vũng Tàu</p>', NULL, NULL, 1),
(31, 'vi', 'picture-gallery', '', '', '', NULL, '', NULL, NULL, 1),
(32, 'en', 'for-developpers', 'For developpers', '', '', NULL, '<p>The last version of Ionize is always available on GitHub :</p>\n<p>http://www.github.com/ionize/ionize/</p>', NULL, NULL, 1),
(32, 'vi', 'for-developpers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(36, 'en', 'cm-nang-tnx-family', 'Cẩm nang TNX-Family', 'Cẩm nang TNX-Family', '', NULL, '<p>Là tổng hợp những bài viết, những kinh nghiệm được đúc kết trong gia đình về tất cả những vấn liên quan đến gia đình, cuộc sống như giáo dục, sức khỏe, kỹ năng... để làm cẩm nang cho gia đình cũng như chia sẻ với bạn bè, người thân.</p>', NULL, NULL, 1),
(36, 'vi', 'cm-nang-tnx-family', '', '', '', NULL, '', NULL, NULL, 1),
(37, 'en', 'chup-hinh-cuoi', 'Chụp hình cưới', 'Chụp hình cưới', '', NULL, '<p>Ngày 25 tháng 10 năm 2011 bọn mình chụp hình cưới, sau nhiều lần đi tham khảo nhiều nơi cuối cùng bị ấn tượng bởi hình cưới ở Venus, mặc dù giá thành khá cao so với những studio khác nhưng lỡ coi ở đó rồi đi nơi khác thấy album rất tầm thường.</p>\n<p>Không biết hôm đó chụp sao, tự dưng lo lắng vì dạo này mưa hoài, lúc ấy mà mưa thì không biết sao luôn. Mong sang trời nắng, nhiều mây trắng vào ngày đó.</p>', NULL, NULL, 1),
(37, 'vi', 'chup-hinh-cuoi', '', '', '', NULL, '', NULL, NULL, 1),
(38, 'en', 'kinh-nghiem-kham-benh-o-benh-vien-da-lieu', 'Kinh nghiệm khám bệnh ở BV Da liễu', 'Kinh nghiệm khám bệnh ở BV Da liễu', '', NULL, '<p>Hầu hết các bệnh viện đều nên khám dịch vụ nếu có điều kiện, nhưng riêng bệnh viện Da Liễu thì nên đi khám lúc đầu giờ chiều và khám thường, đợt NX đi khám ở đó thấy khám thường chu đáo và tốt hơn.</p>', NULL, NULL, 1),
(38, 'vi', 'kinh-nghiem-kham-benh-o-benh-vien-da-lieu', '', '', '', NULL, '', NULL, NULL, 1),
(39, 'en', 'dau-lung-phia-sau-vai', 'Đau lưng ở sau vai', 'Đau lưng ở sau vai', '', NULL, '<p>Vừa rồi NT ngồi máy tính 2 tuần liền không vận động, lưng đau khủng khiếp ở chỗ mà vòng tay từ trên xuống thò hết cỡ xuống giữa lưng. </p>\n\n<p>Vừa rồi NT ngồi máy tính 2 tuần liền không vận động, lưng đau khủng khiếp ở chỗ mà vòng tay từ trên xuống thò hết cỡ xuống giữa lưng. </p>\n\n<p>Vừa rồi NT ngồi máy tính 2 tuần liền không vận động, lưng đau khủng khiếp ở chỗ mà vòng tay từ trên xuống thò hết cỡ xuống giữa lưng. </p>\n\n<p>Vừa rồi NT ngồi máy tính 2 tuần liền không vận động, lưng đau khủng khiếp ở chỗ mà vòng tay từ trên xuống thò hết cỡ xuống giữa lưng. </p>\n\n<p>Vừa rồi NT ngồi máy tính 2 tuần liền không vận động, lưng đau khủng khiếp ở chỗ mà vòng tay từ trên xuống thò hết cỡ xuống giữa lưng. </p>\n\n<p>Vừa rồi NT ngồi máy tính 2 tuần liền không vận động, lưng đau khủng khiếp ở chỗ mà vòng tay từ trên xuống thò hết cỡ xuống giữa lưng. </p>\n\n<p>Vừa rồi NT ngồi máy tính 2 tuần liền không vận động, lưng đau khủng khiếp ở chỗ mà vòng tay từ trên xuống thò hết cỡ xuống giữa lưng. </p>\n\n<p>Vừa rồi NT ngồi máy tính 2 tuần liền không vận động, lưng đau khủng khiếp ở chỗ mà vòng tay từ trên xuống thò hết cỡ xuống giữa lưng. </p>\n\n<p>Vừa rồi NT ngồi máy tính 2 tuần liền không vận động, lưng đau khủng khiếp ở chỗ mà vòng tay từ trên xuống thò hết cỡ xuống giữa lưng. </p>\n\n<p>Vừa rồi NT ngồi máy tính 2 tuần liền không vận động, lưng đau khủng khiếp ở chỗ mà vòng tay từ trên xuống thò hết cỡ xuống giữa lưng. </p>\n\n<p>Vừa rồi NT ngồi máy tính 2 tuần liền không vận động, lưng đau khủng khiếp ở chỗ mà vòng tay từ trên xuống thò hết cỡ xuống giữa lưng. </p>\n\n<p>Vừa rồi NT ngồi máy tính 2 tuần liền không vận động, lưng đau khủng khiếp ở chỗ mà vòng tay từ trên xuống thò hết cỡ xuống giữa lưng. </p>\n\n<p>Vừa rồi NT ngồi máy tính 2 tuần liền không vận động, lưng đau khủng khiếp ở chỗ mà vòng tay từ trên xuống thò hết cỡ xuống giữa lưng. </p>\n\n<p>Vừa rồi NT ngồi máy tính 2 tuần liền không vận động, lưng đau khủng khiếp ở chỗ mà vòng tay từ trên xuống thò hết cỡ xuống giữa lưng. </p>\n\n<p>Vừa rồi NT ngồi máy tính 2 tuần liền không vận động, lưng đau khủng khiếp ở chỗ mà vòng tay từ trên xuống thò hết cỡ xuống giữa lưng. </p>\n\n<p>Vừa rồi NT ngồi máy tính 2 tuần liền không vận động, lưng đau khủng khiếp ở chỗ mà vòng tay từ trên xuống thò hết cỡ xuống giữa lưng. </p>\n\n<p>Vừa rồi NT ngồi máy tính 2 tuần liền không vận động, lưng đau khủng khiếp ở chỗ mà vòng tay từ trên xuống thò hết cỡ xuống giữa lưng. </p>\n\n<p>Vừa rồi NT ngồi máy tính 2 tuần liền không vận động, lưng đau khủng khiếp ở chỗ mà vòng tay từ trên xuống thò hết cỡ xuống giữa lưng. </p>\n\n<p>Vừa rồi NT ngồi máy tính 2 tuần liền không vận động, lưng đau khủng khiếp ở chỗ mà vòng tay từ trên xuống thò hết cỡ xuống giữa lưng. </p>\n\n<p>Vừa rồi NT ngồi máy tính 2 tuần liền không vận động, lưng đau khủng khiếp ở chỗ mà vòng tay từ trên xuống thò hết cỡ xuống giữa lưng. </p>\n\n<p>Vừa rồi NT ngồi máy tính 2 tuần liền không vận động, lưng đau khủng khiếp ở chỗ mà vòng tay từ trên xuống thò hết cỡ xuống giữa lưng. </p>\n\n<p>Vừa rồi NT ngồi máy tính 2 tuần liền không vận động, lưng đau khủng khiếp ở chỗ mà vòng tay từ trên xuống thò hết cỡ xuống giữa lưng. </p>\n\n<p>Vừa rồi NT ngồi máy tính 2 tuần liền không vận động, lưng đau khủng khiếp ở chỗ mà vòng tay từ trên xuống thò hết cỡ xuống giữa lưng. </p>\n\n<p>Vừa rồi NT ngồi máy tính 2 tuần liền không vận động, lưng đau khủng khiếp ở chỗ mà vòng tay từ trên xuống thò hết cỡ xuống giữa lưng. </p>\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n', NULL, NULL, 1),
(39, 'vi', 'dau-lung-phia-sau-vai', '', '', '', NULL, '', NULL, NULL, 1),
(42, 'en', 'hinh-du-lich-phan-thiet', 'Hình đi du lịch Phan Thiết', '', '', NULL, '<p>Đây là hình đi du lịch phan thiết đầu năm 2011.</p>', NULL, NULL, 1),
(42, 'vi', 'hinh-du-lich-phan-thiet', '', '', '', NULL, '', NULL, NULL, 1),
(43, 'en', 'hinh-cuoi', 'Hình cưới 1/8', '', '', NULL, '<p>Hình cưới chưa chỉnh sửa, chụp ngày 15/11/2011 (Studio Venus đường Hồ Văn Huê).</p>\n<p>(Phần 1/8)</p>', NULL, NULL, 1),
(43, 'vi', 'hinh-cuoi', '', '', '', NULL, '', NULL, NULL, 1),
(44, 'en', 'hinh-cuoi-phan-2', 'Hình cưới phần 2/8', 'Hình cưới phần 2/8', '', NULL, '<p>Hình cưới thô phần 2</p>\n<p>(Nếu load chậm, bạn hãy đợi vài phút cho hình tự động load xuống sau đó xem sẽ nhanh hơn)</p>', NULL, NULL, 1),
(44, 'vi', 'hinh-cuoi-phan-2', '', '', '', NULL, '', NULL, NULL, 1),
(45, 'en', 'hinh-cuoi-phan-3', 'Hình cưới phần 3/8', 'Hình cưới phần 3/8', '', NULL, '<p>Hình cưới thô phần 3</p>\n<p>(Nếu load chậm, bạn hãy đợi vài phút cho hình tự động load xuống sau đó xem sẽ nhanh hơn)</p>', NULL, NULL, 1),
(45, 'vi', 'hinh-cuoi-phan-3', '', '', '', NULL, '', NULL, NULL, 1),
(46, 'en', 'hinh-cuoi-phan-4', 'Hình cưới 4/8', 'Hình cười phần 4', '', NULL, '<p>Hình cưới thô phần 4</p>\n<p>(Nếu load chậm, bạn hãy đợi vài phút cho hình tự động load xuống sau đó xem sẽ nhanh hơn)</p>', NULL, NULL, 1),
(46, 'vi', 'hinh-cuoi-phan-4', '', '', '', NULL, '', NULL, NULL, 1),
(47, 'en', 'hinh-cuoi-phan-5', 'Hình cưới phần 5/8', 'Hình cướip hần 5/8', '', NULL, '<p>Hình cưới thô phần 5</p>\n<p>(Nếu load chậm, bạn hãy đợi vài phút cho hình tự động load xuống sau đó xem sẽ nhanh hơn)</p>', NULL, NULL, 1),
(47, 'vi', 'hinh-cuoi-phan-5', '', '', '', NULL, '', NULL, NULL, 1),
(48, 'en', 'hinh-cuoi-phan-6', 'Hình cưới phần 6/8', 'Hình cưới phần 6/8', '', NULL, '<p>Hình cưới thô phần 6</p>\n<p>(Nếu load chậm, bạn hãy đợi vài phút cho hình tự động load xuống sau đó xem sẽ nhanh hơn)</p>', NULL, NULL, 1),
(48, 'vi', 'hinh-cuoi-phan-6', '', '', '', NULL, '', NULL, NULL, 1),
(49, 'en', 'hinh-cuoi-phan-7', 'Hình cưới phần 7/8', 'Hình cưới phần7/8', '', NULL, '<p>Hình cưới thô phần 7</p>\n<p>(Nếu load chậm, bạn hãy đợi vài phút cho hình tự động load xuống sau đó xem sẽ nhanh hơn)</p>', NULL, NULL, 1),
(49, 'vi', 'hinh-cuoi-phan-7', '', '', '', NULL, '', NULL, NULL, 1),
(50, 'en', 'hinh-cuoi-pha-8', 'Hình cưới thô phần 8', 'Hình cưới thô phần 8', '', NULL, '<p>Hình cưới thô phần 8 (end)</p>\n<p>(Nếu load chậm, bạn hãy đợi vài phút cho hình tự động load xuống sau đó xem sẽ nhanh hơn)</p>', NULL, NULL, 1),
(50, 'vi', 'hinh-cuoi-pha-8', '', '', '', NULL, '', NULL, NULL, 1),
(51, 'en', 'hau-truong-hinh-cuoi', 'Hậu trường hình cưới 1 ', 'Hậu trường hình cưới1 ', 'Hậu trường hình cưới1 ', NULL, '<p>Hậu trường hình cưới 1</p>\n<p>(Nếu load chậm, bạn hãy đợi vài phút cho hình tự động load xuống sau đó xem sẽ nhanh hơn)</p>', NULL, NULL, 1),
(51, 'vi', 'hau-truong-hinh-cuoi', '', '', '', NULL, '', NULL, NULL, 1),
(52, 'en', 'hau-truong-hinh-cuoi-2', 'Hậu trường hình cưới 2', 'Hậu trường hình cưới 2', '', NULL, '<p>Hậu trường hình cưới 2</p>\n<p>(Nếu load chậm, bạn hãy đợi vài phút cho hình tự động load xuống sau đó xem sẽ nhanh hơn)</p>', NULL, NULL, 1),
(52, 'vi', 'hau-truong-hinh-cuoi-2', '', '', '', NULL, '', NULL, NULL, 1),
(53, 'en', 'hau-truong-hinh-cuoi-3', 'Hậu trường hình cưới 3', 'Hậu trường hình cưới 3', '', NULL, '<p>Hậu trường hình cưới 2</p>\n<p>(Nếu load chậm, bạn hãy đợi vài phút cho hình tự động load xuống sau đó xem sẽ nhanh hơn)</p>', NULL, NULL, 1),
(53, 'vi', 'hau-truong-hinh-cuoi-3', '', '', '', NULL, '', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `article_media`
--

DROP TABLE IF EXISTS `article_media`;
CREATE TABLE `article_media` (
  `id_article` int(11) unsigned NOT NULL DEFAULT '0',
  `id_media` int(11) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) unsigned DEFAULT '9999',
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_article`,`id_media`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7';

--
-- Dumping data for table `article_media`
--

INSERT INTO `article_media` (`id_article`, `id_media`, `ordering`, `url`) VALUES
(2, 15, 1, NULL),
(2, 39, 1, NULL),
(4, 38, 1, NULL),
(5, 15, 1, NULL),
(10, 13, 2, NULL),
(11, 7, 1, NULL),
(31, 14, 7, NULL),
(31, 66, 2, NULL),
(31, 67, 1, NULL),
(31, 68, 3, NULL),
(32, 28, 1, NULL),
(37, 40, 1, NULL),
(42, 42, 1, NULL),
(42, 43, 2, NULL),
(42, 44, 3, NULL),
(42, 45, 4, NULL),
(42, 46, 5, NULL),
(42, 47, 6, NULL),
(42, 48, 7, NULL),
(42, 49, 8, NULL),
(42, 50, 9, NULL),
(42, 51, 10, NULL),
(42, 52, 11, NULL),
(42, 53, 12, NULL),
(42, 54, 13, NULL),
(42, 55, 14, NULL),
(42, 56, 15, NULL),
(42, 57, 16, NULL),
(42, 58, 17, NULL),
(42, 59, 18, NULL),
(42, 60, 19, NULL),
(42, 61, 20, NULL),
(42, 62, 21, NULL),
(42, 63, 22, NULL),
(42, 64, 23, NULL),
(42, 65, 24, NULL),
(43, 69, 1, NULL),
(43, 70, 2, NULL),
(43, 71, 3, NULL),
(43, 72, 4, NULL),
(43, 73, 5, NULL),
(43, 74, 6, NULL),
(43, 75, 7, NULL),
(43, 76, 8, NULL),
(43, 77, 9, NULL),
(43, 78, 10, NULL),
(43, 79, 11, NULL),
(43, 80, 12, NULL),
(43, 81, 13, NULL),
(43, 82, 14, NULL),
(43, 83, 15, NULL),
(43, 84, 16, NULL),
(43, 85, 17, NULL),
(43, 86, 18, NULL),
(43, 87, 19, NULL),
(43, 88, 20, NULL),
(43, 89, 21, NULL),
(43, 90, 22, NULL),
(43, 91, 23, NULL),
(43, 92, 24, NULL),
(43, 93, 25, NULL),
(43, 94, 26, NULL),
(43, 95, 27, NULL),
(43, 96, 28, NULL),
(43, 97, 29, NULL),
(43, 98, 30, NULL),
(43, 99, 31, NULL),
(43, 100, 32, NULL),
(43, 101, 33, NULL),
(43, 102, 34, NULL),
(43, 103, 35, NULL),
(43, 104, 36, NULL),
(43, 105, 37, NULL),
(43, 106, 38, NULL),
(43, 107, 39, NULL),
(43, 108, 40, NULL),
(43, 109, 41, NULL),
(43, 110, 42, NULL),
(43, 111, 43, NULL),
(43, 112, 44, NULL),
(43, 113, 45, NULL),
(43, 114, 46, NULL),
(43, 115, 47, NULL),
(43, 116, 48, NULL),
(43, 117, 49, NULL),
(43, 118, 50, NULL),
(43, 119, 51, NULL),
(43, 120, 52, NULL),
(43, 121, 53, NULL),
(43, 122, 54, NULL),
(43, 123, 55, NULL),
(43, 124, 56, NULL),
(43, 125, 57, NULL),
(43, 126, 58, NULL),
(43, 127, 59, NULL),
(43, 128, 60, NULL),
(43, 129, 61, NULL),
(43, 130, 62, NULL),
(43, 131, 63, NULL),
(43, 132, 64, NULL),
(44, 133, 1, NULL),
(44, 134, 2, NULL),
(44, 135, 3, NULL),
(44, 136, 4, NULL),
(44, 137, 5, NULL),
(44, 138, 6, NULL),
(44, 139, 7, NULL),
(44, 140, 8, NULL),
(44, 141, 9, NULL),
(44, 142, 10, NULL),
(44, 143, 11, NULL),
(44, 144, 12, NULL),
(44, 145, 13, NULL),
(44, 146, 14, NULL),
(44, 147, 15, NULL),
(44, 148, 16, NULL),
(44, 149, 17, NULL),
(44, 150, 18, NULL),
(44, 151, 19, NULL),
(44, 152, 20, NULL),
(44, 153, 21, NULL),
(44, 154, 22, NULL),
(44, 155, 23, NULL),
(44, 156, 24, NULL),
(44, 157, 25, NULL),
(44, 158, 26, NULL),
(44, 159, 27, NULL),
(45, 160, 1, NULL),
(45, 161, 2, NULL),
(45, 162, 3, NULL),
(45, 163, 4, NULL),
(45, 164, 5, NULL),
(45, 165, 6, NULL),
(45, 166, 7, NULL),
(45, 167, 8, NULL),
(45, 168, 9, NULL),
(45, 169, 10, NULL),
(45, 170, 11, NULL),
(45, 171, 12, NULL),
(45, 172, 13, NULL),
(45, 173, 14, NULL),
(45, 174, 15, NULL),
(45, 175, 16, NULL),
(45, 176, 17, NULL),
(45, 177, 18, NULL),
(45, 178, 19, NULL),
(45, 179, 20, NULL),
(45, 180, 21, NULL),
(45, 181, 22, NULL),
(45, 182, 23, NULL),
(45, 183, 24, NULL),
(45, 184, 25, NULL),
(46, 185, 1, NULL),
(46, 186, 2, NULL),
(46, 187, 3, NULL),
(46, 188, 4, NULL),
(46, 189, 5, NULL),
(46, 190, 6, NULL),
(46, 191, 7, NULL),
(46, 192, 8, NULL),
(46, 193, 9, NULL),
(46, 194, 10, NULL),
(46, 195, 11, NULL),
(46, 196, 12, NULL),
(46, 197, 13, NULL),
(46, 198, 14, NULL),
(46, 199, 15, NULL),
(46, 200, 16, NULL),
(46, 201, 17, NULL),
(46, 202, 18, NULL),
(46, 203, 19, NULL),
(46, 204, 20, NULL),
(46, 205, 21, NULL),
(46, 206, 22, NULL),
(46, 207, 23, NULL),
(46, 208, 24, NULL),
(46, 209, 25, NULL),
(46, 210, 26, NULL),
(47, 211, 1, NULL),
(47, 212, 2, NULL),
(47, 213, 3, NULL),
(47, 214, 4, NULL),
(47, 215, 5, NULL),
(47, 216, 6, NULL),
(47, 217, 7, NULL),
(47, 218, 8, NULL),
(47, 219, 9, NULL),
(47, 220, 10, NULL),
(47, 221, 11, NULL),
(47, 222, 12, NULL),
(47, 223, 13, NULL),
(47, 224, 14, NULL),
(47, 225, 15, NULL),
(47, 226, 16, NULL),
(47, 227, 17, NULL),
(47, 228, 18, NULL),
(47, 229, 19, NULL),
(47, 230, 20, NULL),
(47, 231, 21, NULL),
(47, 232, 22, NULL),
(47, 233, 23, NULL),
(47, 234, 24, NULL),
(47, 235, 25, NULL),
(48, 236, 1, NULL),
(48, 237, 2, NULL),
(48, 238, 3, NULL),
(48, 239, 4, NULL),
(48, 240, 5, NULL),
(48, 241, 6, NULL),
(48, 242, 7, NULL),
(48, 243, 8, NULL),
(48, 244, 9, NULL),
(48, 245, 10, NULL),
(48, 246, 11, NULL),
(48, 247, 12, NULL),
(48, 248, 13, NULL),
(48, 249, 14, NULL),
(48, 250, 15, NULL),
(48, 251, 16, NULL),
(48, 252, 17, NULL),
(48, 253, 18, NULL),
(48, 254, 19, NULL),
(48, 255, 20, NULL),
(48, 256, 21, NULL),
(48, 257, 22, NULL),
(49, 258, 1, NULL),
(49, 259, 2, NULL),
(49, 260, 3, NULL),
(49, 261, 4, NULL),
(49, 262, 5, NULL),
(49, 263, 6, NULL),
(49, 264, 7, NULL),
(49, 265, 8, NULL),
(49, 266, 9, NULL),
(49, 267, 10, NULL),
(49, 268, 11, NULL),
(49, 269, 12, NULL),
(49, 270, 13, NULL),
(49, 271, 14, NULL),
(49, 272, 15, NULL),
(49, 273, 16, NULL),
(49, 274, 17, NULL),
(49, 275, 18, NULL),
(49, 276, 19, NULL),
(49, 277, 20, NULL),
(49, 278, 21, NULL),
(49, 279, 22, NULL),
(49, 280, 23, NULL),
(49, 281, 24, NULL),
(49, 282, 25, NULL),
(49, 283, 26, NULL),
(49, 284, 27, NULL),
(49, 285, 28, NULL),
(49, 286, 29, NULL),
(49, 287, 30, NULL),
(49, 288, 31, NULL),
(49, 289, 32, NULL),
(49, 290, 33, NULL),
(49, 291, 34, NULL),
(49, 292, 35, NULL),
(49, 293, 36, NULL),
(49, 294, 37, NULL),
(50, 295, 1, NULL),
(50, 296, 2, NULL),
(50, 297, 3, NULL),
(50, 298, 4, NULL),
(50, 299, 5, NULL),
(50, 300, 6, NULL),
(50, 301, 7, NULL),
(50, 302, 8, NULL),
(50, 303, 9, NULL),
(50, 304, 10, NULL),
(50, 305, 11, NULL),
(50, 306, 12, NULL),
(50, 307, 13, NULL),
(50, 308, 14, NULL),
(50, 309, 15, NULL),
(50, 310, 16, NULL),
(50, 311, 17, NULL),
(50, 312, 18, NULL),
(50, 313, 19, NULL),
(50, 314, 20, NULL),
(50, 315, 21, NULL),
(50, 316, 22, NULL),
(51, 362, 1, NULL),
(51, 363, 2, NULL),
(51, 364, 3, NULL),
(51, 365, 4, NULL),
(51, 366, 5, NULL),
(51, 367, 6, NULL),
(51, 368, 7, NULL),
(51, 369, 8, NULL),
(51, 370, 9, NULL),
(51, 371, 10, NULL),
(51, 372, 11, NULL),
(51, 373, 12, NULL),
(51, 374, 13, NULL),
(51, 375, 14, NULL),
(51, 376, 15, NULL),
(51, 377, 16, NULL),
(51, 378, 17, NULL),
(51, 379, 18, NULL),
(51, 380, 19, NULL),
(51, 381, 20, NULL),
(51, 382, 21, NULL),
(52, 341, 1, NULL),
(52, 342, 2, NULL),
(52, 343, 3, NULL),
(52, 344, 4, NULL),
(52, 345, 5, NULL),
(52, 346, 6, NULL),
(52, 347, 7, NULL),
(52, 348, 8, NULL),
(52, 349, 9, NULL),
(52, 350, 10, NULL),
(52, 351, 11, NULL),
(52, 352, 12, NULL),
(52, 353, 13, NULL),
(52, 354, 14, NULL),
(52, 355, 15, NULL),
(52, 356, 16, NULL),
(52, 357, 17, NULL),
(52, 358, 18, NULL),
(52, 359, 19, NULL),
(52, 360, 20, NULL),
(52, 361, 21, NULL),
(53, 317, 1, NULL),
(53, 318, 2, NULL),
(53, 319, 3, NULL),
(53, 320, 4, NULL),
(53, 321, 5, NULL),
(53, 322, 6, NULL),
(53, 323, 7, NULL),
(53, 324, 8, NULL),
(53, 325, 9, NULL),
(53, 326, 10, NULL),
(53, 327, 11, NULL),
(53, 328, 12, NULL),
(53, 329, 13, NULL),
(53, 330, 14, NULL),
(53, 331, 15, NULL),
(53, 332, 16, NULL),
(53, 333, 17, NULL),
(53, 334, 18, NULL),
(53, 335, 19, NULL),
(53, 336, 20, NULL),
(53, 337, 21, NULL),
(53, 338, 22, NULL),
(53, 339, 23, NULL),
(53, 340, 24, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `article_tag`
--

DROP TABLE IF EXISTS `article_tag`;
CREATE TABLE `article_tag` (
  `id_article` int(11) unsigned NOT NULL,
  `id_tag` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_article`,`id_tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7';

-- --------------------------------------------------------

--
-- Table structure for table `article_type`
--

DROP TABLE IF EXISTS `article_type`;
CREATE TABLE `article_type` (
  `id_type` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ordering` int(11) DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `type_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `article_type`
--

INSERT INTO `article_type` (`id_type`, `type`, `ordering`, `description`, `type_flag`) VALUES
(1, 'three-fourth', 0, 'Type set to articles in three fourth blocs.', 0),
(2, 'one-fourth', 0, 'Type set to articles in one fourth blocs.', 0),
(3, 'intro', 0, 'Everywhere an intro article is needed...', 0);

-- --------------------------------------------------------

--
-- Table structure for table `captcha`
--

DROP TABLE IF EXISTS `captcha`;
CREATE TABLE `captcha` (
  `id_captcha` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `answer` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lang` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hash` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id_captcha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id_category` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ordering` int(11) DEFAULT '0',
  PRIMARY KEY (`id_category`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7' AUTO_INCREMENT=9 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id_category`, `name`, `ordering`) VALUES
(3, 'ntx-family-blog', 0),
(4, 'giao-duc', 0),
(5, 'suc-khoe', 0),
(6, 'ghi-chu-nhac-nho', 0),
(7, 'mam-mam', 0),
(8, 'picture-gallery', 0);

-- --------------------------------------------------------

--
-- Table structure for table `category_lang`
--

DROP TABLE IF EXISTS `category_lang`;
CREATE TABLE `category_lang` (
  `id_category` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_category`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7';

--
-- Dumping data for table `category_lang`
--

INSERT INTO `category_lang` (`id_category`, `lang`, `title`, `subtitle`, `description`) VALUES
(3, 'en', 'Blog', 'TNX Family blog', '<p>TNX Family blog</p>'),
(3, 'vi', 'blog', 'blog', ''),
(4, 'en', 'Giáo dục', '', '<p>Giáo dục</p>'),
(4, 'vi', 'Giáo dục', 'Giáo dục', '<p>Giáo dục</p>'),
(5, 'en', 'Sức khỏe', 'Sức khỏe', '<p>Sức khỏe</p>'),
(5, 'vi', '', '', '<p>Giáo dục</p>'),
(6, 'en', 'Ghi chú - nhắc nhở', 'Ghi chú - nhắc nhở', '<p>Ghi chú - nhắc nhở</p>'),
(6, 'vi', '', '', '<p>Giáo dục</p>'),
(7, 'en', 'Măm măm', 'Măm măm', '<p>Măm măm</p>'),
(7, 'vi', '', '', '<p>Giáo dục</p>'),
(8, 'en', 'Picture gallery', 'Picture gallery', ''),
(8, 'vi', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `demo_module`
--

DROP TABLE IF EXISTS `demo_module`;
CREATE TABLE `demo_module` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int(11) unsigned NOT NULL,
  `title` int(1) unsigned DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `element`
--

DROP TABLE IF EXISTS `element`;
CREATE TABLE `element` (
  `id_element` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_element_definition` int(11) unsigned NOT NULL,
  `parent` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_parent` int(11) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_element`),
  KEY `idx_element_id_element_definition` (`id_element_definition`),
  KEY `idx_element_id_parent` (`id_parent`),
  KEY `idx_element_parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `element_definition`
--

DROP TABLE IF EXISTS `element_definition`;
CREATE TABLE `element_definition` (
  `id_element_definition` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_element_definition`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `element_definition_lang`
--

DROP TABLE IF EXISTS `element_definition_lang`;
CREATE TABLE `element_definition_lang` (
  `id_element_definition` int(11) unsigned NOT NULL,
  `lang` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id_element_definition`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7';

-- --------------------------------------------------------

--
-- Table structure for table `extend_field`
--

DROP TABLE IF EXISTS `extend_field`;
CREATE TABLE `extend_field` (
  `id_extend_field` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `parent` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ordering` int(11) DEFAULT '0',
  `translated` char(1) COLLATE utf8_unicode_ci DEFAULT '0',
  `value` text COLLATE utf8_unicode_ci,
  `default_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `global` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `parents` varchar(300) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `id_element_definition` int(11) unsigned NOT NULL DEFAULT '0',
  `block` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id_extend_field`),
  KEY `idx_extend_field_parent` (`parent`),
  KEY `idx_extend_field_id_element_definition` (`id_element_definition`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `extend_fields`
--

DROP TABLE IF EXISTS `extend_fields`;
CREATE TABLE `extend_fields` (
  `id_extend_fields` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_extend_field` int(11) unsigned NOT NULL,
  `parent` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `id_parent` int(11) unsigned NOT NULL,
  `lang` char(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8_unicode_ci,
  `ordering` int(11) unsigned NOT NULL DEFAULT '0',
  `id_element` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_extend_fields`),
  KEY `idx_extend_fields_id_parent` (`id_parent`),
  KEY `idx_extend_fields_lang` (`lang`),
  KEY `idx_extend_fields_id_extend_field` (`id_extend_field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ion_sessions`
--

DROP TABLE IF EXISTS `ion_sessions`;
CREATE TABLE `ion_sessions` (
  `session_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `ip_address` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `user_agent` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7';

--
-- Dumping data for table `ion_sessions`
--

INSERT INTO `ion_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('7a6bdb035a00f4a04c5b906eb6b660cc', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1; rv:6.0.2) Gecko/20100', 1318101182, 'a:1:{s:19:"connect_blocked_url";s:44:"http://localhost/ionize-0.9.7-beta/en/manage";}');

-- --------------------------------------------------------

--
-- Table structure for table `lang`
--

DROP TABLE IF EXISTS `lang`;
CREATE TABLE `lang` (
  `lang` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `online` char(1) COLLATE utf8_unicode_ci DEFAULT '0',
  `def` char(1) COLLATE utf8_unicode_ci DEFAULT '0',
  `ordering` int(11) DEFAULT NULL,
  PRIMARY KEY (`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7';

--
-- Dumping data for table `lang`
--

INSERT INTO `lang` (`lang`, `name`, `online`, `def`, `ordering`) VALUES
('en', 'english', '1', '1', 1),
('vi', 'Tiếng Việt', '1', '0', 2);

-- --------------------------------------------------------

--
-- Table structure for table `login_tracker`
--

DROP TABLE IF EXISTS `login_tracker`;
CREATE TABLE `login_tracker` (
  `ip_address` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `first_time` int(11) unsigned NOT NULL,
  `failures` tinyint(2) unsigned DEFAULT NULL,
  PRIMARY KEY (`ip_address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7';

--
-- Dumping data for table `login_tracker`
--

INSERT INTO `login_tracker` (`ip_address`, `first_time`, `failures`) VALUES
('115.78.162.237', 1319777746, 1),
('118.69.67.154', 1319777757, 6);

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
CREATE TABLE `media` (
  `id_media` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'file_name',
  `path` varchar(500) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Complete path to the medium, including media file name, excluding host name',
  `base_path` varchar(500) COLLATE utf8_unicode_ci NOT NULL COMMENT 'medium folder base path, excluding host name',
  `copyright` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `container` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `date` datetime NOT NULL COMMENT 'Medium date',
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Link to a resource, attached to this medium',
  PRIMARY KEY (`id_media`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7' AUTO_INCREMENT=383 ;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id_media`, `type`, `file_name`, `path`, `base_path`, `copyright`, `container`, `date`, `link`) VALUES
(31, 'picture', 'header1.jpg', 'files/header/header1.jpg', 'files/header/', NULL, '', '0000-00-00 00:00:00', NULL),
(32, 'picture', 'header2.jpg', 'files/header/header2.jpg', 'files/header/', NULL, '', '0000-00-00 00:00:00', NULL),
(33, 'picture', 'header3.jpg', 'files/header/header3.jpg', 'files/header/', NULL, '', '0000-00-00 00:00:00', NULL),
(34, 'picture', 'header4.jpg', 'files/header/header4.jpg', 'files/header/', NULL, '', '0000-00-00 00:00:00', NULL),
(35, 'picture', 'header5.jpg', 'files/header/header5.jpg', 'files/header/', NULL, '', '0000-00-00 00:00:00', NULL),
(36, 'picture', 'Picture 158.jpg', 'files/Picture 158.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL),
(37, 'picture', 'Picture158.jpg', 'files/Picture158.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL),
(38, 'picture', 'slide0001_image051.jpg', 'files/slide0001_image051.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL),
(39, 'picture', '5448_1174388409904_1533873704_449813_2735452_n.jpg', 'files/5448_1174388409904_1533873704_449813_2735452_n.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL),
(40, 'picture', '35-gold-wedding-rings.jpg', 'files/35-gold-wedding-rings.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL),
(41, 'picture', 'Picture 265.jpg', 'files/pictures/Du_lich_phan_thiet/Picture 265.jpg', 'files/pictures/Du_lich_phan_thiet/', NULL, '', '0000-00-00 00:00:00', NULL),
(42, 'picture', 'Picture036.jpg', 'files/pictures/Du_lich_phan_thiet/Picture036.jpg', 'files/pictures/Du_lich_phan_thiet/', NULL, '', '0000-00-00 00:00:00', NULL),
(43, 'picture', 'Picture090.jpg', 'files/pictures/Du_lich_phan_thiet/Picture090.jpg', 'files/pictures/Du_lich_phan_thiet/', NULL, '', '0000-00-00 00:00:00', NULL),
(44, 'picture', 'Picture092.jpg', 'files/pictures/Du_lich_phan_thiet/Picture092.jpg', 'files/pictures/Du_lich_phan_thiet/', NULL, '', '0000-00-00 00:00:00', NULL),
(45, 'picture', 'Picture094.jpg', 'files/pictures/Du_lich_phan_thiet/Picture094.jpg', 'files/pictures/Du_lich_phan_thiet/', NULL, '', '0000-00-00 00:00:00', NULL),
(46, 'picture', 'Picture096.jpg', 'files/pictures/Du_lich_phan_thiet/Picture096.jpg', 'files/pictures/Du_lich_phan_thiet/', NULL, '', '0000-00-00 00:00:00', NULL),
(47, 'picture', 'Picture098.jpg', 'files/pictures/Du_lich_phan_thiet/Picture098.jpg', 'files/pictures/Du_lich_phan_thiet/', NULL, '', '0000-00-00 00:00:00', NULL),
(48, 'picture', 'Picture099.jpg', 'files/pictures/Du_lich_phan_thiet/Picture099.jpg', 'files/pictures/Du_lich_phan_thiet/', NULL, '', '0000-00-00 00:00:00', NULL),
(49, 'picture', 'Picture106.jpg', 'files/pictures/Du_lich_phan_thiet/Picture106.jpg', 'files/pictures/Du_lich_phan_thiet/', NULL, '', '0000-00-00 00:00:00', NULL),
(50, 'picture', 'Picture155.jpg', 'files/pictures/Du_lich_phan_thiet/Picture155.jpg', 'files/pictures/Du_lich_phan_thiet/', NULL, '', '0000-00-00 00:00:00', NULL),
(51, 'picture', 'Picture188.jpg', 'files/pictures/Du_lich_phan_thiet/Picture188.jpg', 'files/pictures/Du_lich_phan_thiet/', NULL, '', '0000-00-00 00:00:00', NULL),
(52, 'picture', 'Picture215.jpg', 'files/pictures/Du_lich_phan_thiet/Picture215.jpg', 'files/pictures/Du_lich_phan_thiet/', NULL, '', '0000-00-00 00:00:00', NULL),
(53, 'picture', 'Picture217.jpg', 'files/pictures/Du_lich_phan_thiet/Picture217.jpg', 'files/pictures/Du_lich_phan_thiet/', NULL, '', '0000-00-00 00:00:00', NULL),
(54, 'picture', 'Picture236.jpg', 'files/pictures/Du_lich_phan_thiet/Picture236.jpg', 'files/pictures/Du_lich_phan_thiet/', NULL, '', '0000-00-00 00:00:00', NULL),
(55, 'picture', 'Picture237.jpg', 'files/pictures/Du_lich_phan_thiet/Picture237.jpg', 'files/pictures/Du_lich_phan_thiet/', NULL, '', '0000-00-00 00:00:00', NULL),
(56, 'picture', 'Picture246.jpg', 'files/pictures/Du_lich_phan_thiet/Picture246.jpg', 'files/pictures/Du_lich_phan_thiet/', NULL, '', '0000-00-00 00:00:00', NULL),
(57, 'picture', 'Picture254.jpg', 'files/pictures/Du_lich_phan_thiet/Picture254.jpg', 'files/pictures/Du_lich_phan_thiet/', NULL, '', '0000-00-00 00:00:00', NULL),
(58, 'picture', 'Picture281.jpg', 'files/pictures/Du_lich_phan_thiet/Picture281.jpg', 'files/pictures/Du_lich_phan_thiet/', NULL, '', '0000-00-00 00:00:00', NULL),
(59, 'picture', 'Picture282.jpg', 'files/pictures/Du_lich_phan_thiet/Picture282.jpg', 'files/pictures/Du_lich_phan_thiet/', NULL, '', '0000-00-00 00:00:00', NULL),
(60, 'picture', 'Picture284.jpg', 'files/pictures/Du_lich_phan_thiet/Picture284.jpg', 'files/pictures/Du_lich_phan_thiet/', NULL, '', '0000-00-00 00:00:00', NULL),
(61, 'picture', 'Picture300.jpg', 'files/pictures/Du_lich_phan_thiet/Picture300.jpg', 'files/pictures/Du_lich_phan_thiet/', NULL, '', '0000-00-00 00:00:00', NULL),
(62, 'picture', 'Picture302.jpg', 'files/pictures/Du_lich_phan_thiet/Picture302.jpg', 'files/pictures/Du_lich_phan_thiet/', NULL, '', '0000-00-00 00:00:00', NULL),
(63, 'picture', 'Picture306.jpg', 'files/pictures/Du_lich_phan_thiet/Picture306.jpg', 'files/pictures/Du_lich_phan_thiet/', NULL, '', '0000-00-00 00:00:00', NULL),
(64, 'picture', 'Picture336.jpg', 'files/pictures/Du_lich_phan_thiet/Picture336.jpg', 'files/pictures/Du_lich_phan_thiet/', NULL, '', '0000-00-00 00:00:00', NULL),
(65, 'picture', 'Picture339.jpg', 'files/pictures/Du_lich_phan_thiet/Picture339.jpg', 'files/pictures/Du_lich_phan_thiet/', NULL, '', '0000-00-00 00:00:00', NULL),
(66, 'picture', '3806830832_583a5ffd0e_b.jpg', 'files/pictures/di_choi_vung_tau/3806830832_583a5ffd0e_b.jpg', 'files/pictures/di_choi_vung_tau/', NULL, '', '0000-00-00 00:00:00', NULL),
(67, 'picture', '3806040393_9c8b0b06a1_b.jpg', 'files/pictures/di_choi_vung_tau/3806040393_9c8b0b06a1_b.jpg', 'files/pictures/di_choi_vung_tau/', NULL, '', '0000-00-00 00:00:00', NULL),
(68, 'picture', '3806850392_b29905fb51_b.jpg', 'files/pictures/di_choi_vung_tau/3806850392_b29905fb51_b.jpg', 'files/pictures/di_choi_vung_tau/', NULL, '', '0000-00-00 00:00:00', NULL),
(69, 'picture', 'IMG_5119.jpg', 'files/pictures/hinh_cuoi_1/IMG_5119.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(70, 'picture', 'IMG_5120.jpg', 'files/pictures/hinh_cuoi_1/IMG_5120.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(71, 'picture', 'IMG_5121.jpg', 'files/pictures/hinh_cuoi_1/IMG_5121.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(72, 'picture', 'IMG_5122.jpg', 'files/pictures/hinh_cuoi_1/IMG_5122.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(73, 'picture', 'IMG_5123.jpg', 'files/pictures/hinh_cuoi_1/IMG_5123.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(74, 'picture', 'IMG_5124.jpg', 'files/pictures/hinh_cuoi_1/IMG_5124.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(75, 'picture', 'IMG_5125.jpg', 'files/pictures/hinh_cuoi_1/IMG_5125.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(76, 'picture', 'IMG_5126.jpg', 'files/pictures/hinh_cuoi_1/IMG_5126.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(77, 'picture', 'IMG_5127.jpg', 'files/pictures/hinh_cuoi_1/IMG_5127.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(78, 'picture', 'IMG_5128.jpg', 'files/pictures/hinh_cuoi_1/IMG_5128.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(79, 'picture', 'IMG_5129.jpg', 'files/pictures/hinh_cuoi_1/IMG_5129.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(80, 'picture', 'IMG_5130.jpg', 'files/pictures/hinh_cuoi_1/IMG_5130.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(81, 'picture', 'IMG_5131.jpg', 'files/pictures/hinh_cuoi_1/IMG_5131.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(82, 'picture', 'IMG_5133.jpg', 'files/pictures/hinh_cuoi_1/IMG_5133.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(83, 'picture', 'IMG_5134.jpg', 'files/pictures/hinh_cuoi_1/IMG_5134.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(84, 'picture', 'IMG_5135.jpg', 'files/pictures/hinh_cuoi_1/IMG_5135.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(85, 'picture', 'IMG_5136.jpg', 'files/pictures/hinh_cuoi_1/IMG_5136.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(86, 'picture', 'IMG_5137.jpg', 'files/pictures/hinh_cuoi_1/IMG_5137.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(87, 'picture', 'IMG_5138.jpg', 'files/pictures/hinh_cuoi_1/IMG_5138.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(88, 'picture', 'IMG_5139.jpg', 'files/pictures/hinh_cuoi_1/IMG_5139.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(89, 'picture', 'IMG_5140.jpg', 'files/pictures/hinh_cuoi_1/IMG_5140.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(90, 'picture', 'IMG_5141.jpg', 'files/pictures/hinh_cuoi_1/IMG_5141.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(91, 'picture', 'IMG_5142.jpg', 'files/pictures/hinh_cuoi_1/IMG_5142.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(92, 'picture', 'IMG_5143.jpg', 'files/pictures/hinh_cuoi_1/IMG_5143.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(93, 'picture', 'IMG_5145.jpg', 'files/pictures/hinh_cuoi_1/IMG_5145.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(94, 'picture', 'IMG_5146.jpg', 'files/pictures/hinh_cuoi_1/IMG_5146.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(95, 'picture', 'IMG_5147.jpg', 'files/pictures/hinh_cuoi_1/IMG_5147.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(96, 'picture', 'IMG_5148.jpg', 'files/pictures/hinh_cuoi_1/IMG_5148.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(97, 'picture', 'IMG_5149.jpg', 'files/pictures/hinh_cuoi_1/IMG_5149.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(98, 'picture', 'IMG_5150.jpg', 'files/pictures/hinh_cuoi_1/IMG_5150.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(99, 'picture', 'IMG_5151.jpg', 'files/pictures/hinh_cuoi_1/IMG_5151.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(100, 'picture', 'IMG_5152.jpg', 'files/pictures/hinh_cuoi_1/IMG_5152.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(101, 'picture', 'IMG_5153.jpg', 'files/pictures/hinh_cuoi_1/IMG_5153.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(102, 'picture', 'IMG_5154.jpg', 'files/pictures/hinh_cuoi_1/IMG_5154.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(103, 'picture', 'IMG_5155.jpg', 'files/pictures/hinh_cuoi_1/IMG_5155.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(104, 'picture', 'IMG_5156.jpg', 'files/pictures/hinh_cuoi_1/IMG_5156.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(105, 'picture', 'IMG_5157.jpg', 'files/pictures/hinh_cuoi_1/IMG_5157.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(106, 'picture', 'IMG_5158.jpg', 'files/pictures/hinh_cuoi_1/IMG_5158.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(107, 'picture', 'IMG_5159.jpg', 'files/pictures/hinh_cuoi_1/IMG_5159.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(108, 'picture', 'IMG_5160.jpg', 'files/pictures/hinh_cuoi_1/IMG_5160.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(109, 'picture', 'IMG_5161.jpg', 'files/pictures/hinh_cuoi_1/IMG_5161.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(110, 'picture', 'IMG_5162.jpg', 'files/pictures/hinh_cuoi_1/IMG_5162.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(111, 'picture', 'IMG_5163.jpg', 'files/pictures/hinh_cuoi_1/IMG_5163.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(112, 'picture', 'IMG_5164.jpg', 'files/pictures/hinh_cuoi_1/IMG_5164.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(113, 'picture', 'IMG_5166.jpg', 'files/pictures/hinh_cuoi_1/IMG_5166.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(114, 'picture', 'IMG_5167.jpg', 'files/pictures/hinh_cuoi_1/IMG_5167.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(115, 'picture', 'IMG_5168.jpg', 'files/pictures/hinh_cuoi_1/IMG_5168.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(116, 'picture', 'IMG_5169.jpg', 'files/pictures/hinh_cuoi_1/IMG_5169.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(117, 'picture', 'IMG_5170.jpg', 'files/pictures/hinh_cuoi_1/IMG_5170.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(118, 'picture', 'IMG_5172.jpg', 'files/pictures/hinh_cuoi_1/IMG_5172.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(119, 'picture', 'IMG_5173.jpg', 'files/pictures/hinh_cuoi_1/IMG_5173.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(120, 'picture', 'IMG_5174.jpg', 'files/pictures/hinh_cuoi_1/IMG_5174.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(121, 'picture', 'IMG_5175.jpg', 'files/pictures/hinh_cuoi_1/IMG_5175.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(122, 'picture', 'IMG_5176.jpg', 'files/pictures/hinh_cuoi_1/IMG_5176.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(123, 'picture', 'IMG_5177.jpg', 'files/pictures/hinh_cuoi_1/IMG_5177.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(124, 'picture', 'IMG_5178.jpg', 'files/pictures/hinh_cuoi_1/IMG_5178.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(125, 'picture', 'IMG_5179.jpg', 'files/pictures/hinh_cuoi_1/IMG_5179.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(126, 'picture', 'IMG_5180.jpg', 'files/pictures/hinh_cuoi_1/IMG_5180.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(127, 'picture', 'IMG_5181.jpg', 'files/pictures/hinh_cuoi_1/IMG_5181.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(128, 'picture', 'IMG_5183.jpg', 'files/pictures/hinh_cuoi_1/IMG_5183.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(129, 'picture', 'IMG_5184.jpg', 'files/pictures/hinh_cuoi_1/IMG_5184.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(130, 'picture', 'IMG_5185.jpg', 'files/pictures/hinh_cuoi_1/IMG_5185.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(131, 'picture', 'IMG_5186.jpg', 'files/pictures/hinh_cuoi_1/IMG_5186.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(132, 'picture', 'IMG_5187.jpg', 'files/pictures/hinh_cuoi_1/IMG_5187.jpg', 'files/pictures/hinh_cuoi_1/', NULL, '', '0000-00-00 00:00:00', NULL),
(133, 'picture', 'IMG_5188.jpg', 'files/pictures/hinh_cuoi_2/IMG_5188.jpg', 'files/pictures/hinh_cuoi_2/', NULL, '', '0000-00-00 00:00:00', NULL),
(134, 'picture', 'IMG_5189.jpg', 'files/pictures/hinh_cuoi_2/IMG_5189.jpg', 'files/pictures/hinh_cuoi_2/', NULL, '', '0000-00-00 00:00:00', NULL),
(135, 'picture', 'IMG_5190.jpg', 'files/pictures/hinh_cuoi_2/IMG_5190.jpg', 'files/pictures/hinh_cuoi_2/', NULL, '', '0000-00-00 00:00:00', NULL),
(136, 'picture', 'IMG_5191.jpg', 'files/pictures/hinh_cuoi_2/IMG_5191.jpg', 'files/pictures/hinh_cuoi_2/', NULL, '', '0000-00-00 00:00:00', NULL),
(137, 'picture', 'IMG_5192.jpg', 'files/pictures/hinh_cuoi_2/IMG_5192.jpg', 'files/pictures/hinh_cuoi_2/', NULL, '', '0000-00-00 00:00:00', NULL),
(138, 'picture', 'IMG_5195.jpg', 'files/pictures/hinh_cuoi_2/IMG_5195.jpg', 'files/pictures/hinh_cuoi_2/', NULL, '', '0000-00-00 00:00:00', NULL),
(139, 'picture', 'IMG_5196.jpg', 'files/pictures/hinh_cuoi_2/IMG_5196.jpg', 'files/pictures/hinh_cuoi_2/', NULL, '', '0000-00-00 00:00:00', NULL),
(140, 'picture', 'IMG_5197.jpg', 'files/pictures/hinh_cuoi_2/IMG_5197.jpg', 'files/pictures/hinh_cuoi_2/', NULL, '', '0000-00-00 00:00:00', NULL),
(141, 'picture', 'IMG_5199.jpg', 'files/pictures/hinh_cuoi_2/IMG_5199.jpg', 'files/pictures/hinh_cuoi_2/', NULL, '', '0000-00-00 00:00:00', NULL),
(142, 'picture', 'IMG_5200.jpg', 'files/pictures/hinh_cuoi_2/IMG_5200.jpg', 'files/pictures/hinh_cuoi_2/', NULL, '', '0000-00-00 00:00:00', NULL),
(143, 'picture', 'IMG_5201.jpg', 'files/pictures/hinh_cuoi_2/IMG_5201.jpg', 'files/pictures/hinh_cuoi_2/', NULL, '', '0000-00-00 00:00:00', NULL),
(144, 'picture', 'IMG_5202.jpg', 'files/pictures/hinh_cuoi_2/IMG_5202.jpg', 'files/pictures/hinh_cuoi_2/', NULL, '', '0000-00-00 00:00:00', NULL),
(145, 'picture', 'IMG_5203.jpg', 'files/pictures/hinh_cuoi_2/IMG_5203.jpg', 'files/pictures/hinh_cuoi_2/', NULL, '', '0000-00-00 00:00:00', NULL),
(146, 'picture', 'IMG_5204.jpg', 'files/pictures/hinh_cuoi_2/IMG_5204.jpg', 'files/pictures/hinh_cuoi_2/', NULL, '', '0000-00-00 00:00:00', NULL),
(147, 'picture', 'IMG_5205.jpg', 'files/pictures/hinh_cuoi_2/IMG_5205.jpg', 'files/pictures/hinh_cuoi_2/', NULL, '', '0000-00-00 00:00:00', NULL),
(148, 'picture', 'IMG_5206.jpg', 'files/pictures/hinh_cuoi_2/IMG_5206.jpg', 'files/pictures/hinh_cuoi_2/', NULL, '', '0000-00-00 00:00:00', NULL),
(149, 'picture', 'IMG_5207.jpg', 'files/pictures/hinh_cuoi_2/IMG_5207.jpg', 'files/pictures/hinh_cuoi_2/', NULL, '', '0000-00-00 00:00:00', NULL),
(150, 'picture', 'IMG_5208.jpg', 'files/pictures/hinh_cuoi_2/IMG_5208.jpg', 'files/pictures/hinh_cuoi_2/', NULL, '', '0000-00-00 00:00:00', NULL),
(151, 'picture', 'IMG_5211.jpg', 'files/pictures/hinh_cuoi_2/IMG_5211.jpg', 'files/pictures/hinh_cuoi_2/', NULL, '', '0000-00-00 00:00:00', NULL),
(152, 'picture', 'IMG_5210.jpg', 'files/pictures/hinh_cuoi_2/IMG_5210.jpg', 'files/pictures/hinh_cuoi_2/', NULL, '', '0000-00-00 00:00:00', NULL),
(153, 'picture', 'IMG_5213.jpg', 'files/pictures/hinh_cuoi_2/IMG_5213.jpg', 'files/pictures/hinh_cuoi_2/', NULL, '', '0000-00-00 00:00:00', NULL),
(154, 'picture', 'IMG_5214.jpg', 'files/pictures/hinh_cuoi_2/IMG_5214.jpg', 'files/pictures/hinh_cuoi_2/', NULL, '', '0000-00-00 00:00:00', NULL),
(155, 'picture', 'IMG_5215.jpg', 'files/pictures/hinh_cuoi_2/IMG_5215.jpg', 'files/pictures/hinh_cuoi_2/', NULL, '', '0000-00-00 00:00:00', NULL),
(156, 'picture', 'IMG_5217.jpg', 'files/pictures/hinh_cuoi_2/IMG_5217.jpg', 'files/pictures/hinh_cuoi_2/', NULL, '', '0000-00-00 00:00:00', NULL),
(157, 'picture', 'IMG_5218.jpg', 'files/pictures/hinh_cuoi_2/IMG_5218.jpg', 'files/pictures/hinh_cuoi_2/', NULL, '', '0000-00-00 00:00:00', NULL),
(158, 'picture', 'IMG_5219.jpg', 'files/pictures/hinh_cuoi_2/IMG_5219.jpg', 'files/pictures/hinh_cuoi_2/', NULL, '', '0000-00-00 00:00:00', NULL),
(159, 'picture', 'IMG_5220.jpg', 'files/pictures/hinh_cuoi_2/IMG_5220.jpg', 'files/pictures/hinh_cuoi_2/', NULL, '', '0000-00-00 00:00:00', NULL),
(160, 'picture', 'IMG_5221.jpg', 'files/pictures/hinh_cuoi_3/IMG_5221.jpg', 'files/pictures/hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(161, 'picture', 'IMG_5222.jpg', 'files/pictures/hinh_cuoi_3/IMG_5222.jpg', 'files/pictures/hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(162, 'picture', 'IMG_5223.jpg', 'files/pictures/hinh_cuoi_3/IMG_5223.jpg', 'files/pictures/hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(163, 'picture', 'IMG_5224.jpg', 'files/pictures/hinh_cuoi_3/IMG_5224.jpg', 'files/pictures/hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(164, 'picture', 'IMG_5225.jpg', 'files/pictures/hinh_cuoi_3/IMG_5225.jpg', 'files/pictures/hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(165, 'picture', 'IMG_5226.jpg', 'files/pictures/hinh_cuoi_3/IMG_5226.jpg', 'files/pictures/hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(166, 'picture', 'IMG_5227.jpg', 'files/pictures/hinh_cuoi_3/IMG_5227.jpg', 'files/pictures/hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(167, 'picture', 'IMG_5228.jpg', 'files/pictures/hinh_cuoi_3/IMG_5228.jpg', 'files/pictures/hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(168, 'picture', 'IMG_5229.jpg', 'files/pictures/hinh_cuoi_3/IMG_5229.jpg', 'files/pictures/hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(169, 'picture', 'IMG_5230.jpg', 'files/pictures/hinh_cuoi_3/IMG_5230.jpg', 'files/pictures/hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(170, 'picture', 'IMG_5231.jpg', 'files/pictures/hinh_cuoi_3/IMG_5231.jpg', 'files/pictures/hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(171, 'picture', 'IMG_5232.jpg', 'files/pictures/hinh_cuoi_3/IMG_5232.jpg', 'files/pictures/hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(172, 'picture', 'IMG_5233.jpg', 'files/pictures/hinh_cuoi_3/IMG_5233.jpg', 'files/pictures/hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(173, 'picture', 'IMG_5234.jpg', 'files/pictures/hinh_cuoi_3/IMG_5234.jpg', 'files/pictures/hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(174, 'picture', 'IMG_5235.jpg', 'files/pictures/hinh_cuoi_3/IMG_5235.jpg', 'files/pictures/hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(175, 'picture', 'IMG_5237.jpg', 'files/pictures/hinh_cuoi_3/IMG_5237.jpg', 'files/pictures/hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(176, 'picture', 'IMG_5238.jpg', 'files/pictures/hinh_cuoi_3/IMG_5238.jpg', 'files/pictures/hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(177, 'picture', 'IMG_5239.jpg', 'files/pictures/hinh_cuoi_3/IMG_5239.jpg', 'files/pictures/hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(178, 'picture', 'IMG_5240.jpg', 'files/pictures/hinh_cuoi_3/IMG_5240.jpg', 'files/pictures/hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(179, 'picture', 'IMG_5241.jpg', 'files/pictures/hinh_cuoi_3/IMG_5241.jpg', 'files/pictures/hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(180, 'picture', 'IMG_5242.jpg', 'files/pictures/hinh_cuoi_3/IMG_5242.jpg', 'files/pictures/hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(181, 'picture', 'IMG_5243.jpg', 'files/pictures/hinh_cuoi_3/IMG_5243.jpg', 'files/pictures/hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(182, 'picture', 'IMG_5244.jpg', 'files/pictures/hinh_cuoi_3/IMG_5244.jpg', 'files/pictures/hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(183, 'picture', 'IMG_5245.jpg', 'files/pictures/hinh_cuoi_3/IMG_5245.jpg', 'files/pictures/hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(184, 'picture', 'IMG_5246.jpg', 'files/pictures/hinh_cuoi_3/IMG_5246.jpg', 'files/pictures/hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(185, 'picture', 'IMG_5247.jpg', 'files/pictures/hinh_cuoi_4/IMG_5247.jpg', 'files/pictures/hinh_cuoi_4/', NULL, '', '0000-00-00 00:00:00', NULL),
(186, 'picture', 'IMG_5248.jpg', 'files/pictures/hinh_cuoi_4/IMG_5248.jpg', 'files/pictures/hinh_cuoi_4/', NULL, '', '0000-00-00 00:00:00', NULL),
(187, 'picture', 'IMG_5249.jpg', 'files/pictures/hinh_cuoi_4/IMG_5249.jpg', 'files/pictures/hinh_cuoi_4/', NULL, '', '0000-00-00 00:00:00', NULL),
(188, 'picture', 'IMG_5250.jpg', 'files/pictures/hinh_cuoi_4/IMG_5250.jpg', 'files/pictures/hinh_cuoi_4/', NULL, '', '0000-00-00 00:00:00', NULL),
(189, 'picture', 'IMG_5251.jpg', 'files/pictures/hinh_cuoi_4/IMG_5251.jpg', 'files/pictures/hinh_cuoi_4/', NULL, '', '0000-00-00 00:00:00', NULL),
(190, 'picture', 'IMG_5252.jpg', 'files/pictures/hinh_cuoi_4/IMG_5252.jpg', 'files/pictures/hinh_cuoi_4/', NULL, '', '0000-00-00 00:00:00', NULL),
(191, 'picture', 'IMG_5253.jpg', 'files/pictures/hinh_cuoi_4/IMG_5253.jpg', 'files/pictures/hinh_cuoi_4/', NULL, '', '0000-00-00 00:00:00', NULL),
(192, 'picture', 'IMG_5254.jpg', 'files/pictures/hinh_cuoi_4/IMG_5254.jpg', 'files/pictures/hinh_cuoi_4/', NULL, '', '0000-00-00 00:00:00', NULL),
(193, 'picture', 'IMG_5255.jpg', 'files/pictures/hinh_cuoi_4/IMG_5255.jpg', 'files/pictures/hinh_cuoi_4/', NULL, '', '0000-00-00 00:00:00', NULL),
(194, 'picture', 'IMG_5256.jpg', 'files/pictures/hinh_cuoi_4/IMG_5256.jpg', 'files/pictures/hinh_cuoi_4/', NULL, '', '0000-00-00 00:00:00', NULL),
(195, 'picture', 'IMG_5257.jpg', 'files/pictures/hinh_cuoi_4/IMG_5257.jpg', 'files/pictures/hinh_cuoi_4/', NULL, '', '0000-00-00 00:00:00', NULL),
(196, 'picture', 'IMG_5258.jpg', 'files/pictures/hinh_cuoi_4/IMG_5258.jpg', 'files/pictures/hinh_cuoi_4/', NULL, '', '0000-00-00 00:00:00', NULL),
(197, 'picture', 'IMG_5259.jpg', 'files/pictures/hinh_cuoi_4/IMG_5259.jpg', 'files/pictures/hinh_cuoi_4/', NULL, '', '0000-00-00 00:00:00', NULL),
(198, 'picture', 'IMG_5260.jpg', 'files/pictures/hinh_cuoi_4/IMG_5260.jpg', 'files/pictures/hinh_cuoi_4/', NULL, '', '0000-00-00 00:00:00', NULL),
(199, 'picture', 'IMG_5261.jpg', 'files/pictures/hinh_cuoi_4/IMG_5261.jpg', 'files/pictures/hinh_cuoi_4/', NULL, '', '0000-00-00 00:00:00', NULL),
(200, 'picture', 'IMG_5264.jpg', 'files/pictures/hinh_cuoi_4/IMG_5264.jpg', 'files/pictures/hinh_cuoi_4/', NULL, '', '0000-00-00 00:00:00', NULL),
(201, 'picture', 'IMG_5265.jpg', 'files/pictures/hinh_cuoi_4/IMG_5265.jpg', 'files/pictures/hinh_cuoi_4/', NULL, '', '0000-00-00 00:00:00', NULL),
(202, 'picture', 'IMG_5266.jpg', 'files/pictures/hinh_cuoi_4/IMG_5266.jpg', 'files/pictures/hinh_cuoi_4/', NULL, '', '0000-00-00 00:00:00', NULL),
(203, 'picture', 'IMG_5267.jpg', 'files/pictures/hinh_cuoi_4/IMG_5267.jpg', 'files/pictures/hinh_cuoi_4/', NULL, '', '0000-00-00 00:00:00', NULL),
(204, 'picture', 'IMG_5268.jpg', 'files/pictures/hinh_cuoi_4/IMG_5268.jpg', 'files/pictures/hinh_cuoi_4/', NULL, '', '0000-00-00 00:00:00', NULL),
(205, 'picture', 'IMG_5269.jpg', 'files/pictures/hinh_cuoi_4/IMG_5269.jpg', 'files/pictures/hinh_cuoi_4/', NULL, '', '0000-00-00 00:00:00', NULL),
(206, 'picture', 'IMG_5270.jpg', 'files/pictures/hinh_cuoi_4/IMG_5270.jpg', 'files/pictures/hinh_cuoi_4/', NULL, '', '0000-00-00 00:00:00', NULL),
(207, 'picture', 'IMG_5271.jpg', 'files/pictures/hinh_cuoi_4/IMG_5271.jpg', 'files/pictures/hinh_cuoi_4/', NULL, '', '0000-00-00 00:00:00', NULL),
(208, 'picture', 'IMG_5272.jpg', 'files/pictures/hinh_cuoi_4/IMG_5272.jpg', 'files/pictures/hinh_cuoi_4/', NULL, '', '0000-00-00 00:00:00', NULL),
(209, 'picture', 'IMG_5273.jpg', 'files/pictures/hinh_cuoi_4/IMG_5273.jpg', 'files/pictures/hinh_cuoi_4/', NULL, '', '0000-00-00 00:00:00', NULL),
(210, 'picture', 'IMG_5274.jpg', 'files/pictures/hinh_cuoi_4/IMG_5274.jpg', 'files/pictures/hinh_cuoi_4/', NULL, '', '0000-00-00 00:00:00', NULL),
(211, 'picture', 'IMG_5275.jpg', 'files/pictures/hinh_cuoi_5/IMG_5275.jpg', 'files/pictures/hinh_cuoi_5/', NULL, '', '0000-00-00 00:00:00', NULL),
(212, 'picture', 'IMG_5276.jpg', 'files/pictures/hinh_cuoi_5/IMG_5276.jpg', 'files/pictures/hinh_cuoi_5/', NULL, '', '0000-00-00 00:00:00', NULL),
(213, 'picture', 'IMG_5277.jpg', 'files/pictures/hinh_cuoi_5/IMG_5277.jpg', 'files/pictures/hinh_cuoi_5/', NULL, '', '0000-00-00 00:00:00', NULL),
(214, 'picture', 'IMG_5278.jpg', 'files/pictures/hinh_cuoi_5/IMG_5278.jpg', 'files/pictures/hinh_cuoi_5/', NULL, '', '0000-00-00 00:00:00', NULL),
(215, 'picture', 'IMG_5279.jpg', 'files/pictures/hinh_cuoi_5/IMG_5279.jpg', 'files/pictures/hinh_cuoi_5/', NULL, '', '0000-00-00 00:00:00', NULL),
(216, 'picture', 'IMG_5280.jpg', 'files/pictures/hinh_cuoi_5/IMG_5280.jpg', 'files/pictures/hinh_cuoi_5/', NULL, '', '0000-00-00 00:00:00', NULL),
(217, 'picture', 'IMG_5281.jpg', 'files/pictures/hinh_cuoi_5/IMG_5281.jpg', 'files/pictures/hinh_cuoi_5/', NULL, '', '0000-00-00 00:00:00', NULL),
(218, 'picture', 'IMG_5282.jpg', 'files/pictures/hinh_cuoi_5/IMG_5282.jpg', 'files/pictures/hinh_cuoi_5/', NULL, '', '0000-00-00 00:00:00', NULL),
(219, 'picture', 'IMG_5283.jpg', 'files/pictures/hinh_cuoi_5/IMG_5283.jpg', 'files/pictures/hinh_cuoi_5/', NULL, '', '0000-00-00 00:00:00', NULL),
(220, 'picture', 'IMG_5284.jpg', 'files/pictures/hinh_cuoi_5/IMG_5284.jpg', 'files/pictures/hinh_cuoi_5/', NULL, '', '0000-00-00 00:00:00', NULL),
(221, 'picture', 'IMG_5286.jpg', 'files/pictures/hinh_cuoi_5/IMG_5286.jpg', 'files/pictures/hinh_cuoi_5/', NULL, '', '0000-00-00 00:00:00', NULL),
(222, 'picture', 'IMG_5287.jpg', 'files/pictures/hinh_cuoi_5/IMG_5287.jpg', 'files/pictures/hinh_cuoi_5/', NULL, '', '0000-00-00 00:00:00', NULL),
(223, 'picture', 'IMG_5288.jpg', 'files/pictures/hinh_cuoi_5/IMG_5288.jpg', 'files/pictures/hinh_cuoi_5/', NULL, '', '0000-00-00 00:00:00', NULL),
(224, 'picture', 'IMG_5289.jpg', 'files/pictures/hinh_cuoi_5/IMG_5289.jpg', 'files/pictures/hinh_cuoi_5/', NULL, '', '0000-00-00 00:00:00', NULL),
(225, 'picture', 'IMG_5291.jpg', 'files/pictures/hinh_cuoi_5/IMG_5291.jpg', 'files/pictures/hinh_cuoi_5/', NULL, '', '0000-00-00 00:00:00', NULL),
(226, 'picture', 'IMG_5292.jpg', 'files/pictures/hinh_cuoi_5/IMG_5292.jpg', 'files/pictures/hinh_cuoi_5/', NULL, '', '0000-00-00 00:00:00', NULL),
(227, 'picture', 'IMG_5293.jpg', 'files/pictures/hinh_cuoi_5/IMG_5293.jpg', 'files/pictures/hinh_cuoi_5/', NULL, '', '0000-00-00 00:00:00', NULL),
(228, 'picture', 'IMG_5294.jpg', 'files/pictures/hinh_cuoi_5/IMG_5294.jpg', 'files/pictures/hinh_cuoi_5/', NULL, '', '0000-00-00 00:00:00', NULL),
(229, 'picture', 'IMG_5295.jpg', 'files/pictures/hinh_cuoi_5/IMG_5295.jpg', 'files/pictures/hinh_cuoi_5/', NULL, '', '0000-00-00 00:00:00', NULL),
(230, 'picture', 'IMG_5296.jpg', 'files/pictures/hinh_cuoi_5/IMG_5296.jpg', 'files/pictures/hinh_cuoi_5/', NULL, '', '0000-00-00 00:00:00', NULL),
(231, 'picture', 'IMG_5297.jpg', 'files/pictures/hinh_cuoi_5/IMG_5297.jpg', 'files/pictures/hinh_cuoi_5/', NULL, '', '0000-00-00 00:00:00', NULL),
(232, 'picture', 'IMG_5298.jpg', 'files/pictures/hinh_cuoi_5/IMG_5298.jpg', 'files/pictures/hinh_cuoi_5/', NULL, '', '0000-00-00 00:00:00', NULL),
(233, 'picture', 'IMG_5299.jpg', 'files/pictures/hinh_cuoi_5/IMG_5299.jpg', 'files/pictures/hinh_cuoi_5/', NULL, '', '0000-00-00 00:00:00', NULL),
(234, 'picture', 'IMG_5300.jpg', 'files/pictures/hinh_cuoi_5/IMG_5300.jpg', 'files/pictures/hinh_cuoi_5/', NULL, '', '0000-00-00 00:00:00', NULL),
(235, 'picture', 'IMG_5301.jpg', 'files/pictures/hinh_cuoi_5/IMG_5301.jpg', 'files/pictures/hinh_cuoi_5/', NULL, '', '0000-00-00 00:00:00', NULL),
(236, 'picture', 'IMG_5302.jpg', 'files/pictures/hinh_cuoi_6/IMG_5302.jpg', 'files/pictures/hinh_cuoi_6/', NULL, '', '0000-00-00 00:00:00', NULL),
(237, 'picture', 'IMG_5303.jpg', 'files/pictures/hinh_cuoi_6/IMG_5303.jpg', 'files/pictures/hinh_cuoi_6/', NULL, '', '0000-00-00 00:00:00', NULL),
(238, 'picture', 'IMG_5304.jpg', 'files/pictures/hinh_cuoi_6/IMG_5304.jpg', 'files/pictures/hinh_cuoi_6/', NULL, '', '0000-00-00 00:00:00', NULL),
(239, 'picture', 'IMG_5305.jpg', 'files/pictures/hinh_cuoi_6/IMG_5305.jpg', 'files/pictures/hinh_cuoi_6/', NULL, '', '0000-00-00 00:00:00', NULL),
(240, 'picture', 'IMG_5306.jpg', 'files/pictures/hinh_cuoi_6/IMG_5306.jpg', 'files/pictures/hinh_cuoi_6/', NULL, '', '0000-00-00 00:00:00', NULL),
(241, 'picture', 'IMG_5308.jpg', 'files/pictures/hinh_cuoi_6/IMG_5308.jpg', 'files/pictures/hinh_cuoi_6/', NULL, '', '0000-00-00 00:00:00', NULL),
(242, 'picture', 'IMG_5309.jpg', 'files/pictures/hinh_cuoi_6/IMG_5309.jpg', 'files/pictures/hinh_cuoi_6/', NULL, '', '0000-00-00 00:00:00', NULL),
(243, 'picture', 'IMG_5310.jpg', 'files/pictures/hinh_cuoi_6/IMG_5310.jpg', 'files/pictures/hinh_cuoi_6/', NULL, '', '0000-00-00 00:00:00', NULL),
(244, 'picture', 'IMG_5311.jpg', 'files/pictures/hinh_cuoi_6/IMG_5311.jpg', 'files/pictures/hinh_cuoi_6/', NULL, '', '0000-00-00 00:00:00', NULL),
(245, 'picture', 'IMG_5312.jpg', 'files/pictures/hinh_cuoi_6/IMG_5312.jpg', 'files/pictures/hinh_cuoi_6/', NULL, '', '0000-00-00 00:00:00', NULL),
(246, 'picture', 'IMG_5313.jpg', 'files/pictures/hinh_cuoi_6/IMG_5313.jpg', 'files/pictures/hinh_cuoi_6/', NULL, '', '0000-00-00 00:00:00', NULL),
(247, 'picture', 'IMG_5314.jpg', 'files/pictures/hinh_cuoi_6/IMG_5314.jpg', 'files/pictures/hinh_cuoi_6/', NULL, '', '0000-00-00 00:00:00', NULL),
(248, 'picture', 'IMG_5315.jpg', 'files/pictures/hinh_cuoi_6/IMG_5315.jpg', 'files/pictures/hinh_cuoi_6/', NULL, '', '0000-00-00 00:00:00', NULL),
(249, 'picture', 'IMG_5317.jpg', 'files/pictures/hinh_cuoi_6/IMG_5317.jpg', 'files/pictures/hinh_cuoi_6/', NULL, '', '0000-00-00 00:00:00', NULL),
(250, 'picture', 'IMG_5318.jpg', 'files/pictures/hinh_cuoi_6/IMG_5318.jpg', 'files/pictures/hinh_cuoi_6/', NULL, '', '0000-00-00 00:00:00', NULL),
(251, 'picture', 'IMG_5319.jpg', 'files/pictures/hinh_cuoi_6/IMG_5319.jpg', 'files/pictures/hinh_cuoi_6/', NULL, '', '0000-00-00 00:00:00', NULL),
(252, 'picture', 'IMG_5320.jpg', 'files/pictures/hinh_cuoi_6/IMG_5320.jpg', 'files/pictures/hinh_cuoi_6/', NULL, '', '0000-00-00 00:00:00', NULL),
(253, 'picture', 'IMG_5321.jpg', 'files/pictures/hinh_cuoi_6/IMG_5321.jpg', 'files/pictures/hinh_cuoi_6/', NULL, '', '0000-00-00 00:00:00', NULL),
(254, 'picture', 'IMG_5322.jpg', 'files/pictures/hinh_cuoi_6/IMG_5322.jpg', 'files/pictures/hinh_cuoi_6/', NULL, '', '0000-00-00 00:00:00', NULL),
(255, 'picture', 'IMG_5323.jpg', 'files/pictures/hinh_cuoi_6/IMG_5323.jpg', 'files/pictures/hinh_cuoi_6/', NULL, '', '0000-00-00 00:00:00', NULL),
(256, 'picture', 'IMG_5324.jpg', 'files/pictures/hinh_cuoi_6/IMG_5324.jpg', 'files/pictures/hinh_cuoi_6/', NULL, '', '0000-00-00 00:00:00', NULL),
(257, 'picture', 'IMG_5326.jpg', 'files/pictures/hinh_cuoi_6/IMG_5326.jpg', 'files/pictures/hinh_cuoi_6/', NULL, '', '0000-00-00 00:00:00', NULL),
(258, 'picture', 'IMG_5327.jpg', 'files/pictures/hinh_cuoi_7/IMG_5327.jpg', 'files/pictures/hinh_cuoi_7/', NULL, '', '0000-00-00 00:00:00', NULL),
(259, 'picture', 'IMG_5328.jpg', 'files/pictures/hinh_cuoi_7/IMG_5328.jpg', 'files/pictures/hinh_cuoi_7/', NULL, '', '0000-00-00 00:00:00', NULL),
(260, 'picture', 'IMG_5329.jpg', 'files/pictures/hinh_cuoi_7/IMG_5329.jpg', 'files/pictures/hinh_cuoi_7/', NULL, '', '0000-00-00 00:00:00', NULL),
(261, 'picture', 'IMG_5330.jpg', 'files/pictures/hinh_cuoi_7/IMG_5330.jpg', 'files/pictures/hinh_cuoi_7/', NULL, '', '0000-00-00 00:00:00', NULL),
(262, 'picture', 'IMG_5331.jpg', 'files/pictures/hinh_cuoi_7/IMG_5331.jpg', 'files/pictures/hinh_cuoi_7/', NULL, '', '0000-00-00 00:00:00', NULL),
(263, 'picture', 'IMG_5332.jpg', 'files/pictures/hinh_cuoi_7/IMG_5332.jpg', 'files/pictures/hinh_cuoi_7/', NULL, '', '0000-00-00 00:00:00', NULL),
(264, 'picture', 'IMG_5333.jpg', 'files/pictures/hinh_cuoi_7/IMG_5333.jpg', 'files/pictures/hinh_cuoi_7/', NULL, '', '0000-00-00 00:00:00', NULL),
(265, 'picture', 'IMG_5334.jpg', 'files/pictures/hinh_cuoi_7/IMG_5334.jpg', 'files/pictures/hinh_cuoi_7/', NULL, '', '0000-00-00 00:00:00', NULL),
(266, 'picture', 'IMG_5335.jpg', 'files/pictures/hinh_cuoi_7/IMG_5335.jpg', 'files/pictures/hinh_cuoi_7/', NULL, '', '0000-00-00 00:00:00', NULL),
(267, 'picture', 'IMG_5336.jpg', 'files/pictures/hinh_cuoi_7/IMG_5336.jpg', 'files/pictures/hinh_cuoi_7/', NULL, '', '0000-00-00 00:00:00', NULL),
(268, 'picture', 'IMG_5337.jpg', 'files/pictures/hinh_cuoi_7/IMG_5337.jpg', 'files/pictures/hinh_cuoi_7/', NULL, '', '0000-00-00 00:00:00', NULL),
(269, 'picture', 'IMG_5338.jpg', 'files/pictures/hinh_cuoi_7/IMG_5338.jpg', 'files/pictures/hinh_cuoi_7/', NULL, '', '0000-00-00 00:00:00', NULL),
(270, 'picture', 'IMG_5340.jpg', 'files/pictures/hinh_cuoi_7/IMG_5340.jpg', 'files/pictures/hinh_cuoi_7/', NULL, '', '0000-00-00 00:00:00', NULL),
(271, 'picture', 'IMG_5341.jpg', 'files/pictures/hinh_cuoi_7/IMG_5341.jpg', 'files/pictures/hinh_cuoi_7/', NULL, '', '0000-00-00 00:00:00', NULL),
(272, 'picture', 'IMG_5342.jpg', 'files/pictures/hinh_cuoi_7/IMG_5342.jpg', 'files/pictures/hinh_cuoi_7/', NULL, '', '0000-00-00 00:00:00', NULL),
(273, 'picture', 'IMG_5343.jpg', 'files/pictures/hinh_cuoi_7/IMG_5343.jpg', 'files/pictures/hinh_cuoi_7/', NULL, '', '0000-00-00 00:00:00', NULL),
(274, 'picture', 'IMG_5344.jpg', 'files/pictures/hinh_cuoi_7/IMG_5344.jpg', 'files/pictures/hinh_cuoi_7/', NULL, '', '0000-00-00 00:00:00', NULL),
(275, 'picture', 'IMG_5345.jpg', 'files/pictures/hinh_cuoi_7/IMG_5345.jpg', 'files/pictures/hinh_cuoi_7/', NULL, '', '0000-00-00 00:00:00', NULL),
(276, 'picture', 'IMG_5346.jpg', 'files/pictures/hinh_cuoi_7/IMG_5346.jpg', 'files/pictures/hinh_cuoi_7/', NULL, '', '0000-00-00 00:00:00', NULL),
(277, 'picture', 'IMG_5347.jpg', 'files/pictures/hinh_cuoi_7/IMG_5347.jpg', 'files/pictures/hinh_cuoi_7/', NULL, '', '0000-00-00 00:00:00', NULL),
(278, 'picture', 'IMG_5348.jpg', 'files/pictures/hinh_cuoi_7/IMG_5348.jpg', 'files/pictures/hinh_cuoi_7/', NULL, '', '0000-00-00 00:00:00', NULL),
(279, 'picture', 'IMG_5349.jpg', 'files/pictures/hinh_cuoi_7/IMG_5349.jpg', 'files/pictures/hinh_cuoi_7/', NULL, '', '0000-00-00 00:00:00', NULL),
(280, 'picture', 'IMG_5350.jpg', 'files/pictures/hinh_cuoi_7/IMG_5350.jpg', 'files/pictures/hinh_cuoi_7/', NULL, '', '0000-00-00 00:00:00', NULL),
(281, 'picture', 'IMG_5351.jpg', 'files/pictures/hinh_cuoi_7/IMG_5351.jpg', 'files/pictures/hinh_cuoi_7/', NULL, '', '0000-00-00 00:00:00', NULL),
(282, 'picture', 'IMG_5353.jpg', 'files/pictures/hinh_cuoi_7/IMG_5353.jpg', 'files/pictures/hinh_cuoi_7/', NULL, '', '0000-00-00 00:00:00', NULL),
(283, 'picture', 'IMG_5354.jpg', 'files/pictures/hinh_cuoi_7/IMG_5354.jpg', 'files/pictures/hinh_cuoi_7/', NULL, '', '0000-00-00 00:00:00', NULL),
(284, 'picture', 'IMG_5355.jpg', 'files/pictures/hinh_cuoi_7/IMG_5355.jpg', 'files/pictures/hinh_cuoi_7/', NULL, '', '0000-00-00 00:00:00', NULL),
(285, 'picture', 'IMG_5356.jpg', 'files/pictures/hinh_cuoi_7/IMG_5356.jpg', 'files/pictures/hinh_cuoi_7/', NULL, '', '0000-00-00 00:00:00', NULL),
(286, 'picture', 'IMG_5357.jpg', 'files/pictures/hinh_cuoi_7/IMG_5357.jpg', 'files/pictures/hinh_cuoi_7/', NULL, '', '0000-00-00 00:00:00', NULL),
(287, 'picture', 'IMG_5358.jpg', 'files/pictures/hinh_cuoi_7/IMG_5358.jpg', 'files/pictures/hinh_cuoi_7/', NULL, '', '0000-00-00 00:00:00', NULL),
(288, 'picture', 'IMG_5359.jpg', 'files/pictures/hinh_cuoi_7/IMG_5359.jpg', 'files/pictures/hinh_cuoi_7/', NULL, '', '0000-00-00 00:00:00', NULL),
(289, 'picture', 'IMG_5360.jpg', 'files/pictures/hinh_cuoi_7/IMG_5360.jpg', 'files/pictures/hinh_cuoi_7/', NULL, '', '0000-00-00 00:00:00', NULL),
(290, 'picture', 'IMG_5361.jpg', 'files/pictures/hinh_cuoi_7/IMG_5361.jpg', 'files/pictures/hinh_cuoi_7/', NULL, '', '0000-00-00 00:00:00', NULL),
(291, 'picture', 'IMG_5362.jpg', 'files/pictures/hinh_cuoi_7/IMG_5362.jpg', 'files/pictures/hinh_cuoi_7/', NULL, '', '0000-00-00 00:00:00', NULL),
(292, 'picture', 'IMG_5363.jpg', 'files/pictures/hinh_cuoi_7/IMG_5363.jpg', 'files/pictures/hinh_cuoi_7/', NULL, '', '0000-00-00 00:00:00', NULL),
(293, 'picture', 'IMG_5364.jpg', 'files/pictures/hinh_cuoi_7/IMG_5364.jpg', 'files/pictures/hinh_cuoi_7/', NULL, '', '0000-00-00 00:00:00', NULL),
(294, 'picture', 'IMG_5365.jpg', 'files/pictures/hinh_cuoi_7/IMG_5365.jpg', 'files/pictures/hinh_cuoi_7/', NULL, '', '0000-00-00 00:00:00', NULL),
(295, 'picture', 'IMG_5371.jpg', 'files/pictures/hinh_cuoi_8/IMG_5371.jpg', 'files/pictures/hinh_cuoi_8/', NULL, '', '0000-00-00 00:00:00', NULL),
(296, 'picture', 'IMG_5372.jpg', 'files/pictures/hinh_cuoi_8/IMG_5372.jpg', 'files/pictures/hinh_cuoi_8/', NULL, '', '0000-00-00 00:00:00', NULL),
(297, 'picture', 'IMG_5374.jpg', 'files/pictures/hinh_cuoi_8/IMG_5374.jpg', 'files/pictures/hinh_cuoi_8/', NULL, '', '0000-00-00 00:00:00', NULL),
(298, 'picture', 'IMG_5373.jpg', 'files/pictures/hinh_cuoi_8/IMG_5373.jpg', 'files/pictures/hinh_cuoi_8/', NULL, '', '0000-00-00 00:00:00', NULL),
(299, 'picture', 'IMG_5375.jpg', 'files/pictures/hinh_cuoi_8/IMG_5375.jpg', 'files/pictures/hinh_cuoi_8/', NULL, '', '0000-00-00 00:00:00', NULL),
(300, 'picture', 'IMG_5376.jpg', 'files/pictures/hinh_cuoi_8/IMG_5376.jpg', 'files/pictures/hinh_cuoi_8/', NULL, '', '0000-00-00 00:00:00', NULL),
(301, 'picture', 'IMG_5378.jpg', 'files/pictures/hinh_cuoi_8/IMG_5378.jpg', 'files/pictures/hinh_cuoi_8/', NULL, '', '0000-00-00 00:00:00', NULL),
(302, 'picture', 'IMG_5379.jpg', 'files/pictures/hinh_cuoi_8/IMG_5379.jpg', 'files/pictures/hinh_cuoi_8/', NULL, '', '0000-00-00 00:00:00', NULL),
(303, 'picture', 'IMG_5380.jpg', 'files/pictures/hinh_cuoi_8/IMG_5380.jpg', 'files/pictures/hinh_cuoi_8/', NULL, '', '0000-00-00 00:00:00', NULL),
(304, 'picture', 'IMG_5381.jpg', 'files/pictures/hinh_cuoi_8/IMG_5381.jpg', 'files/pictures/hinh_cuoi_8/', NULL, '', '0000-00-00 00:00:00', NULL),
(305, 'picture', 'IMG_5382.jpg', 'files/pictures/hinh_cuoi_8/IMG_5382.jpg', 'files/pictures/hinh_cuoi_8/', NULL, '', '0000-00-00 00:00:00', NULL),
(306, 'picture', 'IMG_5383.jpg', 'files/pictures/hinh_cuoi_8/IMG_5383.jpg', 'files/pictures/hinh_cuoi_8/', NULL, '', '0000-00-00 00:00:00', NULL),
(307, 'picture', 'IMG_5384.jpg', 'files/pictures/hinh_cuoi_8/IMG_5384.jpg', 'files/pictures/hinh_cuoi_8/', NULL, '', '0000-00-00 00:00:00', NULL),
(308, 'picture', 'IMG_5385.jpg', 'files/pictures/hinh_cuoi_8/IMG_5385.jpg', 'files/pictures/hinh_cuoi_8/', NULL, '', '0000-00-00 00:00:00', NULL),
(309, 'picture', 'IMG_5386.jpg', 'files/pictures/hinh_cuoi_8/IMG_5386.jpg', 'files/pictures/hinh_cuoi_8/', NULL, '', '0000-00-00 00:00:00', NULL),
(310, 'picture', 'IMG_5387.jpg', 'files/pictures/hinh_cuoi_8/IMG_5387.jpg', 'files/pictures/hinh_cuoi_8/', NULL, '', '0000-00-00 00:00:00', NULL),
(311, 'picture', 'IMG_5388.jpg', 'files/pictures/hinh_cuoi_8/IMG_5388.jpg', 'files/pictures/hinh_cuoi_8/', NULL, '', '0000-00-00 00:00:00', NULL),
(312, 'picture', 'IMG_5389.jpg', 'files/pictures/hinh_cuoi_8/IMG_5389.jpg', 'files/pictures/hinh_cuoi_8/', NULL, '', '0000-00-00 00:00:00', NULL),
(313, 'picture', 'IMG_5390.jpg', 'files/pictures/hinh_cuoi_8/IMG_5390.jpg', 'files/pictures/hinh_cuoi_8/', NULL, '', '0000-00-00 00:00:00', NULL),
(314, 'picture', 'IMG_5391.jpg', 'files/pictures/hinh_cuoi_8/IMG_5391.jpg', 'files/pictures/hinh_cuoi_8/', NULL, '', '0000-00-00 00:00:00', NULL),
(315, 'picture', 'IMG_5392.jpg', 'files/pictures/hinh_cuoi_8/IMG_5392.jpg', 'files/pictures/hinh_cuoi_8/', NULL, '', '0000-00-00 00:00:00', NULL),
(316, 'picture', 'IMG_5393.jpg', 'files/pictures/hinh_cuoi_8/IMG_5393.jpg', 'files/pictures/hinh_cuoi_8/', NULL, '', '0000-00-00 00:00:00', NULL),
(317, 'picture', 'IMG_8903.jpg', 'files/pictures/hau_truong_hinh_cuoi_3/IMG_8903.jpg', 'files/pictures/hau_truong_hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(318, 'picture', 'IMG_8904.jpg', 'files/pictures/hau_truong_hinh_cuoi_3/IMG_8904.jpg', 'files/pictures/hau_truong_hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(319, 'picture', 'IMG_8906.jpg', 'files/pictures/hau_truong_hinh_cuoi_3/IMG_8906.jpg', 'files/pictures/hau_truong_hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(320, 'picture', 'IMG_8910.jpg', 'files/pictures/hau_truong_hinh_cuoi_3/IMG_8910.jpg', 'files/pictures/hau_truong_hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(321, 'picture', 'IMG_8911.jpg', 'files/pictures/hau_truong_hinh_cuoi_3/IMG_8911.jpg', 'files/pictures/hau_truong_hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(322, 'picture', 'IMG_8914.jpg', 'files/pictures/hau_truong_hinh_cuoi_3/IMG_8914.jpg', 'files/pictures/hau_truong_hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(323, 'picture', 'IMG_8915.jpg', 'files/pictures/hau_truong_hinh_cuoi_3/IMG_8915.jpg', 'files/pictures/hau_truong_hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(324, 'picture', 'IMG_8917.jpg', 'files/pictures/hau_truong_hinh_cuoi_3/IMG_8917.jpg', 'files/pictures/hau_truong_hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(325, 'picture', 'IMG_8918.jpg', 'files/pictures/hau_truong_hinh_cuoi_3/IMG_8918.jpg', 'files/pictures/hau_truong_hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(326, 'picture', 'IMG_8919.jpg', 'files/pictures/hau_truong_hinh_cuoi_3/IMG_8919.jpg', 'files/pictures/hau_truong_hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(327, 'picture', 'IMG_8922.jpg', 'files/pictures/hau_truong_hinh_cuoi_3/IMG_8922.jpg', 'files/pictures/hau_truong_hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(328, 'picture', 'IMG_8924.jpg', 'files/pictures/hau_truong_hinh_cuoi_3/IMG_8924.jpg', 'files/pictures/hau_truong_hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(329, 'picture', 'IMG_8925.jpg', 'files/pictures/hau_truong_hinh_cuoi_3/IMG_8925.jpg', 'files/pictures/hau_truong_hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(330, 'picture', 'IMG_8926.jpg', 'files/pictures/hau_truong_hinh_cuoi_3/IMG_8926.jpg', 'files/pictures/hau_truong_hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(331, 'picture', 'IMG_8931.jpg', 'files/pictures/hau_truong_hinh_cuoi_3/IMG_8931.jpg', 'files/pictures/hau_truong_hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(332, 'picture', 'IMG_8932.jpg', 'files/pictures/hau_truong_hinh_cuoi_3/IMG_8932.jpg', 'files/pictures/hau_truong_hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(333, 'picture', 'IMG_8946.jpg', 'files/pictures/hau_truong_hinh_cuoi_3/IMG_8946.jpg', 'files/pictures/hau_truong_hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(334, 'picture', 'IMG_8948.jpg', 'files/pictures/hau_truong_hinh_cuoi_3/IMG_8948.jpg', 'files/pictures/hau_truong_hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(335, 'picture', 'IMG_8954.jpg', 'files/pictures/hau_truong_hinh_cuoi_3/IMG_8954.jpg', 'files/pictures/hau_truong_hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(336, 'picture', 'IMG_8955.jpg', 'files/pictures/hau_truong_hinh_cuoi_3/IMG_8955.jpg', 'files/pictures/hau_truong_hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(337, 'picture', 'IMG_8956.jpg', 'files/pictures/hau_truong_hinh_cuoi_3/IMG_8956.jpg', 'files/pictures/hau_truong_hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(338, 'picture', 'IMG_8986.jpg', 'files/pictures/hau_truong_hinh_cuoi_3/IMG_8986.jpg', 'files/pictures/hau_truong_hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(339, 'picture', 'IMG_8992.jpg', 'files/pictures/hau_truong_hinh_cuoi_3/IMG_8992.jpg', 'files/pictures/hau_truong_hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(340, 'picture', 'IMG_8993.jpg', 'files/pictures/hau_truong_hinh_cuoi_3/IMG_8993.jpg', 'files/pictures/hau_truong_hinh_cuoi_3/', NULL, '', '0000-00-00 00:00:00', NULL),
(341, 'picture', 'IMG_8848.jpg', 'files/pictures/hau_truong_hinh_cuoi_2/IMG_8848.jpg', 'files/pictures/hau_truong_hinh_cuoi_2/', NULL, '', '0000-00-00 00:00:00', NULL),
(342, 'picture', 'IMG_8849.jpg', 'files/pictures/hau_truong_hinh_cuoi_2/IMG_8849.jpg', 'files/pictures/hau_truong_hinh_cuoi_2/', NULL, '', '0000-00-00 00:00:00', NULL),
(343, 'picture', 'IMG_8850.jpg', 'files/pictures/hau_truong_hinh_cuoi_2/IMG_8850.jpg', 'files/pictures/hau_truong_hinh_cuoi_2/', NULL, '', '0000-00-00 00:00:00', NULL),
(344, 'picture', 'IMG_8851.jpg', 'files/pictures/hau_truong_hinh_cuoi_2/IMG_8851.jpg', 'files/pictures/hau_truong_hinh_cuoi_2/', NULL, '', '0000-00-00 00:00:00', NULL),
(345, 'picture', 'IMG_8854.jpg', 'files/pictures/hau_truong_hinh_cuoi_2/IMG_8854.jpg', 'files/pictures/hau_truong_hinh_cuoi_2/', NULL, '', '0000-00-00 00:00:00', NULL),
(346, 'picture', 'IMG_8852.jpg', 'files/pictures/hau_truong_hinh_cuoi_2/IMG_8852.jpg', 'files/pictures/hau_truong_hinh_cuoi_2/', NULL, '', '0000-00-00 00:00:00', NULL),
(347, 'picture', 'IMG_8855.jpg', 'files/pictures/hau_truong_hinh_cuoi_2/IMG_8855.jpg', 'files/pictures/hau_truong_hinh_cuoi_2/', NULL, '', '0000-00-00 00:00:00', NULL),
(348, 'picture', 'IMG_8857.jpg', 'files/pictures/hau_truong_hinh_cuoi_2/IMG_8857.jpg', 'files/pictures/hau_truong_hinh_cuoi_2/', NULL, '', '0000-00-00 00:00:00', NULL),
(349, 'picture', 'IMG_8865.jpg', 'files/pictures/hau_truong_hinh_cuoi_2/IMG_8865.jpg', 'files/pictures/hau_truong_hinh_cuoi_2/', NULL, '', '0000-00-00 00:00:00', NULL),
(350, 'picture', 'IMG_8862.jpg', 'files/pictures/hau_truong_hinh_cuoi_2/IMG_8862.jpg', 'files/pictures/hau_truong_hinh_cuoi_2/', NULL, '', '0000-00-00 00:00:00', NULL),
(351, 'picture', 'IMG_8889.jpg', 'files/pictures/hau_truong_hinh_cuoi_2/IMG_8889.jpg', 'files/pictures/hau_truong_hinh_cuoi_2/', NULL, '', '0000-00-00 00:00:00', NULL),
(352, 'picture', 'IMG_8890.jpg', 'files/pictures/hau_truong_hinh_cuoi_2/IMG_8890.jpg', 'files/pictures/hau_truong_hinh_cuoi_2/', NULL, '', '0000-00-00 00:00:00', NULL),
(353, 'picture', 'IMG_8891.jpg', 'files/pictures/hau_truong_hinh_cuoi_2/IMG_8891.jpg', 'files/pictures/hau_truong_hinh_cuoi_2/', NULL, '', '0000-00-00 00:00:00', NULL),
(354, 'picture', 'IMG_8892.jpg', 'files/pictures/hau_truong_hinh_cuoi_2/IMG_8892.jpg', 'files/pictures/hau_truong_hinh_cuoi_2/', NULL, '', '0000-00-00 00:00:00', NULL),
(355, 'picture', 'IMG_8893.jpg', 'files/pictures/hau_truong_hinh_cuoi_2/IMG_8893.jpg', 'files/pictures/hau_truong_hinh_cuoi_2/', NULL, '', '0000-00-00 00:00:00', NULL),
(356, 'picture', 'IMG_8896.jpg', 'files/pictures/hau_truong_hinh_cuoi_2/IMG_8896.jpg', 'files/pictures/hau_truong_hinh_cuoi_2/', NULL, '', '0000-00-00 00:00:00', NULL),
(357, 'picture', 'IMG_8897.jpg', 'files/pictures/hau_truong_hinh_cuoi_2/IMG_8897.jpg', 'files/pictures/hau_truong_hinh_cuoi_2/', NULL, '', '0000-00-00 00:00:00', NULL),
(358, 'picture', 'IMG_8899.jpg', 'files/pictures/hau_truong_hinh_cuoi_2/IMG_8899.jpg', 'files/pictures/hau_truong_hinh_cuoi_2/', NULL, '', '0000-00-00 00:00:00', NULL),
(359, 'picture', 'IMG_8900.jpg', 'files/pictures/hau_truong_hinh_cuoi_2/IMG_8900.jpg', 'files/pictures/hau_truong_hinh_cuoi_2/', NULL, '', '0000-00-00 00:00:00', NULL),
(360, 'picture', 'IMG_8901.jpg', 'files/pictures/hau_truong_hinh_cuoi_2/IMG_8901.jpg', 'files/pictures/hau_truong_hinh_cuoi_2/', NULL, '', '0000-00-00 00:00:00', NULL),
(361, 'picture', 'IMG_8902.jpg', 'files/pictures/hau_truong_hinh_cuoi_2/IMG_8902.jpg', 'files/pictures/hau_truong_hinh_cuoi_2/', NULL, '', '0000-00-00 00:00:00', NULL),
(362, 'picture', 'IMG_8787.jpg', 'files/pictures/hau_truong_hinh_cuoi/IMG_8787.jpg', 'files/pictures/hau_truong_hinh_cuoi/', NULL, '', '0000-00-00 00:00:00', NULL),
(363, 'picture', 'IMG_8788.jpg', 'files/pictures/hau_truong_hinh_cuoi/IMG_8788.jpg', 'files/pictures/hau_truong_hinh_cuoi/', NULL, '', '0000-00-00 00:00:00', NULL),
(364, 'picture', 'IMG_8789.jpg', 'files/pictures/hau_truong_hinh_cuoi/IMG_8789.jpg', 'files/pictures/hau_truong_hinh_cuoi/', NULL, '', '0000-00-00 00:00:00', NULL);
INSERT INTO `media` (`id_media`, `type`, `file_name`, `path`, `base_path`, `copyright`, `container`, `date`, `link`) VALUES
(365, 'picture', 'IMG_8790.jpg', 'files/pictures/hau_truong_hinh_cuoi/IMG_8790.jpg', 'files/pictures/hau_truong_hinh_cuoi/', NULL, '', '0000-00-00 00:00:00', NULL),
(366, 'picture', 'IMG_8791.jpg', 'files/pictures/hau_truong_hinh_cuoi/IMG_8791.jpg', 'files/pictures/hau_truong_hinh_cuoi/', NULL, '', '0000-00-00 00:00:00', NULL),
(367, 'picture', 'IMG_8792.jpg', 'files/pictures/hau_truong_hinh_cuoi/IMG_8792.jpg', 'files/pictures/hau_truong_hinh_cuoi/', NULL, '', '0000-00-00 00:00:00', NULL),
(368, 'picture', 'IMG_8797.jpg', 'files/pictures/hau_truong_hinh_cuoi/IMG_8797.jpg', 'files/pictures/hau_truong_hinh_cuoi/', NULL, '', '0000-00-00 00:00:00', NULL),
(369, 'picture', 'IMG_8819.jpg', 'files/pictures/hau_truong_hinh_cuoi/IMG_8819.jpg', 'files/pictures/hau_truong_hinh_cuoi/', NULL, '', '0000-00-00 00:00:00', NULL),
(370, 'picture', 'IMG_8824.jpg', 'files/pictures/hau_truong_hinh_cuoi/IMG_8824.jpg', 'files/pictures/hau_truong_hinh_cuoi/', NULL, '', '0000-00-00 00:00:00', NULL),
(371, 'picture', 'IMG_8825.jpg', 'files/pictures/hau_truong_hinh_cuoi/IMG_8825.jpg', 'files/pictures/hau_truong_hinh_cuoi/', NULL, '', '0000-00-00 00:00:00', NULL),
(372, 'picture', 'IMG_8826.jpg', 'files/pictures/hau_truong_hinh_cuoi/IMG_8826.jpg', 'files/pictures/hau_truong_hinh_cuoi/', NULL, '', '0000-00-00 00:00:00', NULL),
(373, 'picture', 'IMG_8828.jpg', 'files/pictures/hau_truong_hinh_cuoi/IMG_8828.jpg', 'files/pictures/hau_truong_hinh_cuoi/', NULL, '', '0000-00-00 00:00:00', NULL),
(374, 'picture', 'IMG_8827.jpg', 'files/pictures/hau_truong_hinh_cuoi/IMG_8827.jpg', 'files/pictures/hau_truong_hinh_cuoi/', NULL, '', '0000-00-00 00:00:00', NULL),
(375, 'picture', 'IMG_8829.jpg', 'files/pictures/hau_truong_hinh_cuoi/IMG_8829.jpg', 'files/pictures/hau_truong_hinh_cuoi/', NULL, '', '0000-00-00 00:00:00', NULL),
(376, 'picture', 'IMG_8830.jpg', 'files/pictures/hau_truong_hinh_cuoi/IMG_8830.jpg', 'files/pictures/hau_truong_hinh_cuoi/', NULL, '', '0000-00-00 00:00:00', NULL),
(377, 'picture', 'IMG_8832.jpg', 'files/pictures/hau_truong_hinh_cuoi/IMG_8832.jpg', 'files/pictures/hau_truong_hinh_cuoi/', NULL, '', '0000-00-00 00:00:00', NULL),
(378, 'picture', 'IMG_8842.jpg', 'files/pictures/hau_truong_hinh_cuoi/IMG_8842.jpg', 'files/pictures/hau_truong_hinh_cuoi/', NULL, '', '0000-00-00 00:00:00', NULL),
(379, 'picture', 'IMG_8843.jpg', 'files/pictures/hau_truong_hinh_cuoi/IMG_8843.jpg', 'files/pictures/hau_truong_hinh_cuoi/', NULL, '', '0000-00-00 00:00:00', NULL),
(380, 'picture', 'IMG_8844.jpg', 'files/pictures/hau_truong_hinh_cuoi/IMG_8844.jpg', 'files/pictures/hau_truong_hinh_cuoi/', NULL, '', '0000-00-00 00:00:00', NULL),
(381, 'picture', 'IMG_8846.jpg', 'files/pictures/hau_truong_hinh_cuoi/IMG_8846.jpg', 'files/pictures/hau_truong_hinh_cuoi/', NULL, '', '0000-00-00 00:00:00', NULL),
(382, 'picture', 'IMG_8847.jpg', 'files/pictures/hau_truong_hinh_cuoi/IMG_8847.jpg', 'files/pictures/hau_truong_hinh_cuoi/', NULL, '', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_lang`
--

DROP TABLE IF EXISTS `media_lang`;
CREATE TABLE `media_lang` (
  `lang` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `id_media` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id_media`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7';

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ordering` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_menu`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `name`, `title`, `ordering`) VALUES
(1, 'main', 'Main menu', NULL),
(2, 'system', 'System menu', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

DROP TABLE IF EXISTS `module`;
CREATE TABLE `module` (
  `id_module` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `with_admin` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `version` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `info` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_module`),
  KEY `i_module_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `module_setting`
--

DROP TABLE IF EXISTS `module_setting`;
CREATE TABLE `module_setting` (
  `id_module_setting` int(11) NOT NULL AUTO_INCREMENT,
  `id_module` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Setting name',
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Setting content',
  `lang` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_module_setting`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `note`
--

DROP TABLE IF EXISTS `note`;
CREATE TABLE `note` (
  `id_note` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_note`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

DROP TABLE IF EXISTS `page`;
CREATE TABLE `page` (
  `id_page` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_parent` int(11) unsigned NOT NULL DEFAULT '0',
  `id_menu` int(11) unsigned NOT NULL DEFAULT '0',
  `id_subnav` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ordering` int(11) unsigned DEFAULT '0',
  `level` int(11) unsigned NOT NULL DEFAULT '0',
  `online` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` tinyint(1) NOT NULL DEFAULT '0',
  `author` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updater` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  `publish_on` datetime NOT NULL,
  `publish_off` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `logical_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `appears` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `view` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Page view',
  `article_list_view` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Article list view for each article linked to this page',
  `article_view` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Article detail view for each article linked to this page',
  `article_order` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ordering' COMMENT 'Article order in this page. Can be "ordering", "date"',
  `article_order_direction` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ASC',
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT '' COMMENT 'Link to internal / external resource',
  `link_type` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '''page'', ''article'' or NULL',
  `link_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pagination` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Pagination use ?',
  `pagination_nb` tinyint(1) unsigned NOT NULL DEFAULT '5' COMMENT 'Article number per page',
  `id_group` smallint(4) unsigned NOT NULL,
  `priority` int(1) unsigned NOT NULL DEFAULT '5' COMMENT 'Page priority',
  PRIMARY KEY (`id_page`),
  KEY `idx_page_id_parent` (`id_parent`),
  KEY `idx_page_level` (`level`),
  KEY `idx_page_menu` (`id_menu`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7' AUTO_INCREMENT=22 ;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id_page`, `id_parent`, `id_menu`, `id_subnav`, `name`, `ordering`, `level`, `online`, `home`, `author`, `updater`, `created`, `publish_on`, `publish_off`, `updated`, `logical_date`, `appears`, `view`, `article_list_view`, `article_view`, `article_order`, `article_order_direction`, `link`, `link_type`, `link_id`, `pagination`, `pagination_nb`, `id_group`, `priority`) VALUES
(1, 0, 2, 0, '404', 0, 0, 1, 0, '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-08-24 22:51:41', '0000-00-00 00:00:00', 0, '404', '', '', '0', '0', '', NULL, '', 0, 0, 0, 5),
(2, 0, 1, 0, 'tnx-family-homepage', 1, 0, 1, 1, '0', 'admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-10-19 00:30:08', '0000-00-00 00:00:00', 1, 'page_home', '', '', '0', '0', '', '', '', 0, 0, 0, 5),
(3, 0, 1, 0, 'contact', 6, 0, 1, 0, '0', '', '2011-07-05 17:29:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-07-27 06:53:26', '0000-00-00 00:00:00', 1, 'page_contact', '0', '', '0', '0', '', NULL, '', 0, 0, 0, 5),
(6, 0, 1, 0, 'blog', 2, 0, 1, 0, '0', '', '2011-07-05 17:36:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-07-13 21:08:29', '0000-00-00 00:00:00', 1, 'page_blog', 'article_blog_post_list', 'article_blog_post_detail', '0', '0', '', NULL, '', 0, 0, 0, 5),
(8, 0, 2, 0, 'search-result', 1, 0, 1, 0, '0', '', '2011-07-12 16:33:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-07-12 16:54:38', '0000-00-00 00:00:00', 0, 'page_search_result', '0', '', '0', '0', '', NULL, '', 0, 0, 0, 5),
(9, 0, 2, 0, 'footer', 2, 0, 1, 0, '0', 'admin', '2011-07-12 17:03:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-10-19 03:45:12', '0000-00-00 00:00:00', 0, '', '', '', '0', '0', '', NULL, '', 0, 0, 0, 5),
(10, 0, 1, 0, 'picture-gallery', 3, 0, 1, 0, '0', 'admin', '2011-07-14 00:35:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-10-19 03:21:09', '0000-00-00 00:00:00', 1, '', 'article_blog_post_list', 'article_picture_gallery', '0', '0', '', NULL, '', 0, 0, 0, 5),
(15, 0, 1, 0, 'tnx-family-gioi-thieu', 5, 0, 1, 0, 'admin', '0', '2011-10-08 23:23:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '0', '0', '0', '0', '0', '', NULL, '', 0, 0, 0, 5),
(16, 0, 1, 0, 'cam-nang-gia-dinh', 4, 0, 1, 0, 'admin', '0', '2011-10-08 23:56:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '0', '0', '0', '0', '0', '', '', '0', 0, 0, 0, 5),
(17, 16, 1, 0, 'suc-khoe', 7, 1, 1, 0, '0', 'admin', '2011-10-09 15:12:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-10-09 17:01:27', '0000-00-00 00:00:00', 1, 'page_blog', 'article_blog_post_list', 'article_blog_post_detail', '0', '0', '', NULL, '', 0, 0, 0, 5),
(18, 16, 1, 0, 'cam-nang-mam-mam', 8, 1, 1, 0, '0', 'admin', '2011-10-10 22:43:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-10-10 22:49:20', '0000-00-00 00:00:00', 1, 'page_blog', '', '', '0', '0', '', NULL, '', 0, 0, 0, 5),
(19, 16, 1, 0, 'cam-nang-giao-duc', 9, 1, 1, 0, 'admin', '0', '2011-10-10 22:47:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'page_blog', '0', '0', '0', '0', '', NULL, '', 0, 0, 0, 5),
(21, 16, 1, 0, 'cau-chuyen', 11, 1, 1, 0, 'admin', '0', '2011-10-10 23:07:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'page_blog', '0', '0', '0', '0', '', NULL, '', 0, 0, 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `page_article`
--

DROP TABLE IF EXISTS `page_article`;
CREATE TABLE `page_article` (
  `id_page` int(11) unsigned NOT NULL,
  `id_article` int(11) unsigned NOT NULL,
  `online` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `view` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ordering` int(11) DEFAULT '0',
  `id_type` int(11) unsigned DEFAULT NULL,
  `link_type` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `main_parent` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_page`,`id_article`),
  KEY `idx_page_article_id_type` (`id_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7';

--
-- Dumping data for table `page_article`
--

INSERT INTO `page_article` (`id_page`, `id_article`, `online`, `view`, `ordering`, `id_type`, `link_type`, `link_id`, `link`, `main_parent`) VALUES
(1, 1, 1, '404', 0, NULL, '', '', '', 1),
(2, 2, 1, NULL, 3, NULL, '', '', '', 1),
(2, 4, 1, NULL, 4, NULL, '', '', '', 1),
(2, 5, 1, NULL, 6, 2, '', '', '', 1),
(2, 32, 1, NULL, 5, NULL, '', '', '', 1),
(2, 37, 1, NULL, 1, NULL, '', '', '', 1),
(3, 13, 1, NULL, 1, NULL, '', '', '', 1),
(6, 10, 1, NULL, 5, NULL, '', '', '', 1),
(6, 11, 1, NULL, 6, NULL, '', '', '', 1),
(9, 6, 1, 'article_footer', 1, NULL, '', '', '', 1),
(9, 7, 1, 'article_footer', 2, NULL, '', '', '', 1),
(9, 8, 1, 'article_footer', 3, NULL, '', '', '', 1),
(10, 31, 1, '', 13, 0, '', '', '', 1),
(10, 42, 1, '', 12, 0, '', '', '', 1),
(10, 43, 1, NULL, 11, 0, '', '', '', 1),
(10, 44, 1, NULL, 10, NULL, '', '', '', 1),
(10, 45, 1, NULL, 9, NULL, '', '', '', 1),
(10, 46, 1, NULL, 8, NULL, '', '', '', 1),
(10, 47, 1, NULL, 7, NULL, '', '', '', 1),
(10, 48, 1, NULL, 6, NULL, '', '', '', 1),
(10, 49, 1, NULL, 5, NULL, '', '', '', 1),
(10, 50, 1, NULL, 4, NULL, '', '', '', 1),
(10, 51, 1, NULL, 3, NULL, '', '', '', 1),
(10, 52, 1, NULL, 2, NULL, '', '', '', 1),
(10, 53, 0, NULL, 1, NULL, '', '', '', 1),
(16, 36, 1, NULL, 1, NULL, '', '', '', 1),
(17, 38, 1, NULL, 2, NULL, '', '', '', 1),
(17, 39, 1, NULL, 1, NULL, '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `page_lang`
--

DROP TABLE IF EXISTS `page_lang`;
CREATE TABLE `page_lang` (
  `lang` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `id_page` int(11) unsigned NOT NULL DEFAULT '0',
  `url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nav_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `subnav_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `online` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_page`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7';

--
-- Dumping data for table `page_lang`
--

INSERT INTO `page_lang` (`lang`, `id_page`, `url`, `link`, `title`, `subtitle`, `nav_title`, `subnav_title`, `meta_title`, `meta_description`, `meta_keywords`, `online`) VALUES
('en', 1, '404', '', '404', '', '', '', '', '', '', 1),
('vi', 1, '404', '', NULL, NULL, '', '', NULL, NULL, NULL, 1),
('en', 2, 'tnx-family-homepage', '', 'Trang chủ', 'Chào mừng đến với TNX-Family', '', '', '', '', '', 1),
('vi', 2, 'tnx-family-homepage', '', '', '', '', '', '', '', '', 1),
('en', 3, 'contact', '', 'Contact', '', '', '', '', '', '', 1),
('vi', 3, 'contact', '', NULL, NULL, '', '', NULL, NULL, NULL, 1),
('en', 6, 'blog', '', 'Blog', '', '', '', '', '', '', 1),
('vi', 6, 'blog', '', NULL, NULL, '', '', NULL, NULL, NULL, 1),
('en', 8, 'search-result', '', 'Search Results', '', '', '', '', '', '', 1),
('vi', 8, 'search-result', '', NULL, NULL, '', '', NULL, NULL, NULL, 1),
('en', 9, 'footer', '', 'Footer', '', '', '', '', '', '', 0),
('vi', 9, 'footer', '', '', '', '', '', '', '', '', 1),
('en', 10, 'picture-gallery', '', 'Picture Gallery', '', '', '', '', '', '', 1),
('vi', 10, 'picture-gallery', '', '', '', '', '', '', '', '', 1),
('en', 15, 'tnx-family-gioi-thieu', '', 'Giới thiệu', 'Về TNX Family', '', '', '', '', '', 1),
('vi', 15, 'tnx-family-gioi-thieu', '', NULL, NULL, '', '', NULL, NULL, NULL, 1),
('en', 16, 'cam-nang-gia-dinh', '', 'Cẩm nang gia đình', 'Cẩm nang gia đình', '', '', '', '', '', 1),
('vi', 16, 'cam-nang-gia-dinh', '', '', '', '', '', '', '', '', 1),
('en', 17, 'suc-khoe', '', 'Sức khỏe', 'Cẩm nang sức khỏe', '', '', '', '', '', 1),
('vi', 17, 'suc-khoe', '', '', '', '', '', '', '', '', 1),
('en', 18, 'cam-nang-mam-mam', '', 'Măm măm', 'Măm măm', '', '', '', '', '', 1),
('vi', 18, 'mm-mm', '', '', '', '', '', '', '', '', 1),
('en', 19, 'cam-nang-giao-duc', '', 'Giáo dục', 'Giáo dục', '', '', '', '', '', 1),
('vi', 19, 'cam-nang-giao-duc', '', '', '', '', '', '', '', '', 1),
('en', 21, 'cau-chuyen', '', 'Câu chuyện', '', '', '', '', '', '', 1),
('vi', 21, 'cau-chuyen', '', '', '', '', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `page_media`
--

DROP TABLE IF EXISTS `page_media`;
CREATE TABLE `page_media` (
  `id_page` int(11) unsigned NOT NULL DEFAULT '0',
  `id_media` int(11) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) unsigned DEFAULT '9999',
  PRIMARY KEY (`id_page`,`id_media`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7';

--
-- Dumping data for table `page_media`
--

INSERT INTO `page_media` (`id_page`, `id_media`, `ordering`) VALUES
(1, 1, 4),
(1, 3, 5),
(1, 7, 3),
(1, 10, 6),
(1, 13, 7),
(2, 31, 1),
(2, 32, 2),
(2, 33, 3),
(2, 34, 4),
(2, 35, 5);

-- --------------------------------------------------------

--
-- Table structure for table `page_user_groups`
--

DROP TABLE IF EXISTS `page_user_groups`;
CREATE TABLE `page_user_groups` (
  `id_page` int(11) unsigned NOT NULL DEFAULT '0',
  `ig_group` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_page`,`ig_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7';

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `id_setting` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_setting`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7' AUTO_INCREMENT=50 ;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id_setting`, `name`, `content`, `lang`) VALUES
(2, 'website_email', '', NULL),
(3, 'files_path', 'files', NULL),
(6, 'theme', 'demo', NULL),
(7, 'theme_admin', 'admin', NULL),
(14, 'google_analytics', '', NULL),
(15, 'filemanager', 'mootools-filemanager', NULL),
(23, 'show_help_tips', '1', NULL),
(24, 'display_connected_label', '1', NULL),
(25, 'texteditor', 'tinymce', NULL),
(26, 'media_thumb_size', '120', NULL),
(27, 'tinybuttons1', 'pdw_toggle,|,bold,italic,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,|,formatselect,|,bullist,numlist,|,link,unlink,image,|,spellchecker', NULL),
(28, 'tinybuttons2', 'fullscreen, undo,redo,|,pastetext,selectall,removeformat,|,media,charmap,hr,blockquote,|,template,|,codemirror', NULL),
(29, 'tinybuttons3', 'tablecontrols', NULL),
(30, 'displayed_admin_languages', 'en', NULL),
(31, 'date_format', '%Y.%m.%d', NULL),
(32, 'force_lang_urls', '0', NULL),
(33, 'tinyblockformats', 'p,h2,h3,h4,h5,pre,div', NULL),
(34, 'article_allowed_tags', 'h2,h3,h4,h5,h6,em,img,iframe,table,object,thead,tbody,tfoot,tr,th,td,param,embed,map,p,a,ul,ol,li,br,b,strong', NULL),
(35, 'filemanager_file_types', 'gif,jpe,jpeg,jpg,png,flv,mpeg,mpg,mp3,pdf', NULL),
(36, 'default_admin_lang', 'en', NULL),
(37, 'ionize_version', '0.9.7', NULL),
(38, 'media_upload_mode', 'multiple', NULL),
(39, 'site_title', 'TNX-Family', 'en'),
(40, 'thumb_430', 'width,430,,', NULL),
(41, 'thumb_540', 'width,540,,', NULL),
(42, 'thumb_150', 'width,150,true,true', NULL),
(43, 'thumb_940', 'width,940,,', NULL),
(44, 'thumb_280', 'width,280,,true', NULL),
(45, 'meta_keywords', 'Website gia đình NT-NX', 'en'),
(46, 'meta_description', 'Website gia đình NT-NX', 'en'),
(47, 'meta_keywords', '', 'vi'),
(48, 'meta_description', '', 'vi'),
(49, 'site_title', '', 'vi');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `id_tag` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id_user` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_group` smallint(4) unsigned NOT NULL,
  `join_date` timestamp NULL DEFAULT NULL,
  `last_visit` timestamp NULL DEFAULT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `screen_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `username` (`username`),
  KEY `id_group` (`id_group`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `id_group`, `join_date`, `last_visit`, `username`, `screen_name`, `password`, `email`, `salt`) VALUES
(1, 1, '2011-10-09 01:40:20', '2011-10-29 17:17:20', 'admin', 'Cuong Vu', 'pCDKBPXVSDE0q382/Hyjjw==', 'manhcuongvu2004@yahoo.com', '492541ceeec01074');

-- --------------------------------------------------------

--
-- Table structure for table `users_info`
--

DROP TABLE IF EXISTS `users_info`;
CREATE TABLE `users_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int(11) unsigned NOT NULL,
  `title` int(1) unsigned DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `housenumber` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` int(1) unsigned DEFAULT NULL,
  `newsletter` int(1) unsigned DEFAULT NULL,
  `infomails` int(1) unsigned DEFAULT NULL,
  `terms` int(1) unsigned DEFAULT NULL,
  `about_me` text COLLATE utf8_unicode_ci,
  `my_references` text COLLATE utf8_unicode_ci,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `experience` text COLLATE utf8_unicode_ci,
  `company_profile` int(1) unsigned DEFAULT NULL,
  `contact_person` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` int(1) unsigned DEFAULT NULL,
  `xing` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users_meta`
--

DROP TABLE IF EXISTS `users_meta`;
CREATE TABLE `users_meta` (
  `id_user` int(11) unsigned NOT NULL,
  `newsletter` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7';

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

DROP TABLE IF EXISTS `user_groups`;
CREATE TABLE `user_groups` (
  `id_group` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `level` int(11) DEFAULT NULL,
  `slug` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `group_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` tinytext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id_group`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7' AUTO_INCREMENT=9 ;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`id_group`, `level`, `slug`, `group_name`, `description`) VALUES
(1, 10000, 'super-admins', 'Super Admins', NULL),
(2, 5000, 'admins', 'Admins', NULL),
(3, 1000, 'editors', 'Editors', NULL),
(4, 100, 'users', 'Users', NULL),
(5, 50, 'pending', 'Pending', NULL),
(6, 10, 'guests', 'Guests', NULL),
(7, -10, 'banned', 'Banned', NULL),
(8, -100, 'deactivated', 'Deactivated', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
