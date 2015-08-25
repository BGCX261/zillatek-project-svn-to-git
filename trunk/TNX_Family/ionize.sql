/*
SQLyog Enterprise - MySQL GUI v8.1 
MySQL - 5.1.33-community-log : Database - tnx_home
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`xinhmoin_tnx_home` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `xinhmoin_tnx_home`;

/*Table structure for table `article` */

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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7';

/*Data for the table `article` */

insert  into `article`(id_article,name,author,updater,created,publish_on,publish_off,updated,logical_date,indexed,id_category,comment_allow,comment_autovalid,comment_expire,flag) values (1,'404',NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,'0','0',NULL,0),(2,'tnx-house-welcome','','admin','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','2011-10-19 01:39:46','0000-00-00 00:00:00',0,0,'','','0000-00-00 00:00:00',0),(4,'home-example','','admin','2011-07-05 18:27:14','0000-00-00 00:00:00','0000-00-00 00:00:00','2011-10-19 03:22:52','0000-00-00 00:00:00',0,0,'','','0000-00-00 00:00:00',0),(5,'tnx-family','','admin','2011-07-05 19:35:29','0000-00-00 00:00:00','0000-00-00 00:00:00','2011-10-19 01:08:30','0000-00-00 00:00:00',0,0,'','','0000-00-00 00:00:00',0),(6,'footer-article','','admin','2011-07-12 17:04:09','0000-00-00 00:00:00','0000-00-00 00:00:00','2011-10-19 03:44:46','0000-00-00 00:00:00',0,0,'','','0000-00-00 00:00:00',0),(7,'footer-views','','admin','2011-07-12 17:04:58','0000-00-00 00:00:00','0000-00-00 00:00:00','2011-10-19 03:44:50','0000-00-00 00:00:00',0,0,'','','0000-00-00 00:00:00',0),(8,'cuoi-tuong-bo','','admin','2011-07-12 17:05:23','0000-00-00 00:00:00','0000-00-00 00:00:00','2011-10-19 03:51:00','0000-00-00 00:00:00',0,0,'','','0000-00-00 00:00:00',0),(10,'chup-hinh-cuoi-xong','','admin','2011-07-13 21:16:43','0000-00-00 00:00:00','0000-00-00 00:00:00','2011-10-19 03:34:59','2011-10-15 02:28:55',1,0,'1','','0000-00-00 00:00:00',0),(11,'blog-gia-dinh','','admin','2011-07-13 23:33:48','0000-00-00 00:00:00','0000-00-00 00:00:00','2011-10-19 03:27:48','0000-00-00 00:00:00',1,0,'1','','0000-00-00 00:00:00',0),(13,'contact-information','','admin','2011-07-27 06:55:23','0000-00-00 00:00:00','0000-00-00 00:00:00','2011-10-19 03:43:55','0000-00-00 00:00:00',0,0,'','','0000-00-00 00:00:00',0),(31,'di-choi-vung-tau','','admin','2011-08-24 20:54:34','0000-00-00 00:00:00','0000-00-00 00:00:00','2011-10-19 03:20:15','0000-00-00 00:00:00',1,0,'','','0000-00-00 00:00:00',0),(32,'for-developpers','','','2011-08-25 11:43:39','0000-00-00 00:00:00','0000-00-00 00:00:00','2011-08-25 11:44:49','0000-00-00 00:00:00',0,0,'','','0000-00-00 00:00:00',0),(36,'cm-nang-tnx-family','admin','','2011-10-09 00:28:47','0000-00-00 00:00:00','0000-00-00 00:00:00','2011-10-09 00:28:47','0000-00-00 00:00:00',0,0,'','','0000-00-00 00:00:00',0),(37,'chup-hinh-cuoi','admin','admin','2011-10-09 15:08:49','0000-00-00 00:00:00','0000-00-00 00:00:00','2011-10-19 01:45:45','0000-00-00 00:00:00',0,0,'','','0000-00-00 00:00:00',0),(38,'kinh-nghiem-kham-benh-o-benh-vien-da-lieu','admin','','2011-10-09 15:17:00','0000-00-00 00:00:00','0000-00-00 00:00:00','2011-10-09 15:17:00','0000-00-00 00:00:00',1,0,'','','0000-00-00 00:00:00',0),(39,'dau-lung-phia-sau-vai','admin','admin','2011-10-09 17:00:08','0000-00-00 00:00:00','0000-00-00 00:00:00','2011-10-09 17:00:50','0000-00-00 00:00:00',0,0,'1','','0000-00-00 00:00:00',0),(42,'hinh-du-lich-phan-thiet','admin','admin','2011-10-11 00:56:57','0000-00-00 00:00:00','0000-00-00 00:00:00','2011-10-19 02:26:15','0000-00-00 00:00:00',0,0,'','','0000-00-00 00:00:00',0),(43,'hinh-cuoi','admin','admin','2011-10-19 02:32:13','0000-00-00 00:00:00','0000-00-00 00:00:00','2011-10-19 03:23:47','0000-00-00 00:00:00',0,0,'','','0000-00-00 00:00:00',0);

/*Table structure for table `article_category` */

DROP TABLE IF EXISTS `article_category`;

CREATE TABLE `article_category` (
  `id_article` int(11) unsigned NOT NULL,
  `id_category` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7';

/*Data for the table `article_category` */

insert  into `article_category`(id_article,id_category) values (38,5),(39,5),(37,6),(42,8),(31,8),(43,8);

/*Table structure for table `article_comment` */

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7';

/*Data for the table `article_comment` */

/*Table structure for table `article_lang` */

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

/*Data for the table `article_lang` */

insert  into `article_lang`(id_article,lang,url,title,subtitle,meta_title,summary,content,meta_keywords,meta_description,online) values (1,'en','404','404',NULL,NULL,NULL,'<p>The content you asked was not found !</p>',NULL,NULL,1),(1,'vi','404',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(2,'en','tnx-house-welcome','Câu chuyện tình tôi','TNX\'s house','',NULL,'<p>Khi 2 người dưng làm quen với nhau, chàng hẹn nhiều lần mà không được gặp, sau đó chàng biết nàng thích ăn kẹo dừa nên đi Bến Tre mua về dụ, từ đó chàng gọi nàng là Người Xấu, nàng gọi chàng là Người Tốt và đến với nhau để xây dựng một gia đình nhỏ, gia đình Người Tốt + Người Xấu</p>\n<p>TNX có thể đọc là Tốt And Xấu, hoặc đọc từ chữ N ra 2 bên (vì ngược nhau mà) Người Tốt, Người Xấu .</p>',NULL,NULL,1),(2,'vi','welcome-article-url','','','',NULL,'',NULL,NULL,1),(4,'en','home-example','TNX-Home website','','',NULL,'<p>TNX-Home là trang web của gia đình Mạnh Cường + Ngọc Thắng, để sử dụng cho gia đình với mục đích lưu trữ, chia sẻ những hoạt động, những kinh nghiệm cuộc sống cho bạn bè, người thân để cuộc sống gia đình trở nên vui tươi, ấm cúng và ngày càng hạnh phúc hơn.</p>',NULL,NULL,1),(4,'vi','home-example','','','',NULL,'',NULL,NULL,1),(5,'en','tnx-family','Câu chuyện tình tôi','','',NULL,'<p>Khi mới làm quen với nhau, chàng hẹn nhiều lần mà không được gặp, sau đó chàng biết nàng thích ăn kẹo dừa nên đi Bến Tre mua về dụ, từ đó chàng gọi nàng là Người Xấu, nàng gọi chàng là Người Tốt và đến với nhau để xây dựng một gia đình nhỏ, gia đình Người Tốt + Người Xấu</p>\n<p>TNX có thể đọc là Tốt And Xấu, hoặc đọc từ chữ N ra 2 bên (vì ngược nhau mà) Người Tốt, Người Xấu .</p>',NULL,NULL,1),(5,'vi','article-type','','','',NULL,'',NULL,NULL,1),(6,'en','footer-article','Footer article','','',NULL,'<p>This article has the view \"Footer\" and is located in the page called \"Footer\".<br />Views define how one content will be displayed.</p>',NULL,NULL,0),(6,'vi','footer-article','','','',NULL,'',NULL,NULL,1),(7,'en','footer-views','More about views','','',NULL,'<p>Views are PHP files. They can be declared as \"Page\" or \"Article\" in Ionize. Then, they will be available when editing a page.</p>',NULL,NULL,0),(7,'vi','footer-views','','','',NULL,'',NULL,NULL,1),(8,'en','cuoi-tuong-bo','Cười: Tưởng bở','','',NULL,'<p class=\"Lead\">Người thợ săn vào rừng, gặp con hổ, ông lập cập rút súng ra, nhưng con hổ đã vồ đến.</p>\n<p class=\"Normal\">Ông sợ quá, chạy tọt vào rừng, con hổ đuổi theo. Đến cuối bờ dốc, không chạy được nữa, ông mới quỳ xuống và cầu xin trước chúa:</p>\n<p class=\"Normal\">- Lạy chúa, hãy cứu con thoát khỏi kiếp nạn này!</p>\n<p class=\"Normal\">Và đột nhiên, như một phép nhiệm màu, con hổ quỳ xuống trước mặt ông và cầu nguyện. Ông vui mừng hết sức, chạy đến chỗ con hổ:</p>\n<p class=\"Normal\">- Khi chết đi, mày sẽ được lên thiên đường.</p>\n<p class=\"Normal\">Con hổ đáp:</p>\n<p class=\"Normal\">- Cảm ơn, tôi thường cầu nguyện trước bữa ăn mà.</p>\n<p class=\"Normal\">- !!!!!</p>\n<p class=\"Normal\">(VNExpress.net)</p>',NULL,NULL,0),(8,'vi','follow-us','','','',NULL,'',NULL,NULL,1),(10,'en','chup-hinh-cuoi-xong','Chụp hình cưới xong','','',NULL,'<p>Hôm nay đi chụp hình cưới về, đuối hết cả người nhưng thấy vui vì thời tiết đúng như mình mong đợi. Chụp về xem hình ngay tại studio thấy cũng rất ưng ý.</p>\n<p>Vậy là một việc nữa được hoàn thành, giờ chọn hình rồi gửi qua cho studio họ chỉnh sửa, thiết kế album.</p>\n<p>Ở studio này họ cho thay 6 bộ cho cô dâu, chú rể cũng vậy nhưng có một cái áo sơ mi tím mặc cùng váy cá tím của cô dâu, cái sơ mi này bị nhăn quá nên mềnh ko mặc, lấy ao trắng mặc thắt cà vạt.</p>\n<p>Chụp hình cưới có vài người bạn đi chụp cũng vui, khi nào post ảnh hậu trường chụp hình cưới lên cho mọi người xem. Nhưng trước hết post loạt hình thô lấy ở studio về đã, cái này chắc phải chia 7, 8 phần để post cho nó nhẹ.</p>',NULL,NULL,1),(10,'vi','one-blog-post','','','',NULL,'',NULL,NULL,1),(11,'en','blog-gia-dinh','Lập trang blog gia đình','','',NULL,'<p>Muốn làm trang blog gia đình, lúc đầu muốn tự viết bằng CodeIgniter nhưng thấy lâu quá nên tìm cái cms có sẵn, customize rồi đẩy lên cho lẹ, có thời gian chỉnh sửa sau.</p>',NULL,NULL,1),(11,'vi','another-post','','','',NULL,'',NULL,NULL,1),(13,'en','contact-information','Contact information','','',NULL,'<p>Contact email: manhcuongvu2004@yahoo.com</p>',NULL,NULL,1),(13,'vi','corporate-information','','','',NULL,'',NULL,NULL,1),(31,'en','di-choi-vung-tau','Đi chơi Vũng Tàu','','',NULL,'<p>Hình đi chơi Vũng Tàu</p>',NULL,NULL,1),(31,'vi','picture-gallery','','','',NULL,'',NULL,NULL,1),(32,'en','for-developpers','For developpers','','',NULL,'<p>The last version of Ionize is always available on GitHub :</p>\n<p>http://www.github.com/ionize/ionize/</p>',NULL,NULL,1),(32,'vi','for-developpers',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(36,'en','cm-nang-tnx-family','Cẩm nang TNX-Family','Cẩm nang TNX-Family','',NULL,'<p>Là tổng hợp những bài viết, những kinh nghiệm được đúc kết trong gia đình về tất cả những vấn liên quan đến gia đình, cuộc sống như giáo dục, sức khỏe, kỹ năng... để làm cẩm nang cho gia đình cũng như chia sẻ với bạn bè, người thân.</p>',NULL,NULL,1),(36,'vi','cm-nang-tnx-family','','','',NULL,'',NULL,NULL,1),(37,'en','chup-hinh-cuoi','Chụp hình cưới','Chụp hình cưới','',NULL,'<p>Ngày 25 tháng 10 năm 2011 bọn mình chụp hình cưới, sau nhiều lần đi tham khảo nhiều nơi cuối cùng bị ấn tượng bởi hình cưới ở Venus, mặc dù giá thành khá cao so với những studio khác nhưng lỡ coi ở đó rồi đi nơi khác thấy album rất tầm thường.</p>\n<p>Không biết hôm đó chụp sao, tự dưng lo lắng vì dạo này mưa hoài, lúc ấy mà mưa thì không biết sao luôn. Mong sang trời nắng, nhiều mây trắng vào ngày đó.</p>',NULL,NULL,1),(37,'vi','chup-hinh-cuoi','','','',NULL,'',NULL,NULL,1),(38,'en','kinh-nghiem-kham-benh-o-benh-vien-da-lieu','Kinh nghiệm khám bệnh ở BV Da liễu','Kinh nghiệm khám bệnh ở BV Da liễu','',NULL,'<p>Hầu hết các bệnh viện đều nên khám dịch vụ nếu có điều kiện, nhưng riêng bệnh viện Da Liễu thì nên đi khám lúc đầu giờ chiều và khám thường, đợt NX đi khám ở đó thấy khám thường chu đáo và tốt hơn.</p>',NULL,NULL,1),(38,'vi','kinh-nghiem-kham-benh-o-benh-vien-da-lieu','','','',NULL,'',NULL,NULL,1),(39,'en','dau-lung-phia-sau-vai','Đau lưng ở sau vai','Đau lưng ở sau vai','',NULL,'<p>Vừa rồi NT ngồi máy tính 2 tuần liền không vận động, lưng đau khủng khiếp ở chỗ mà vòng tay từ trên xuống thò hết cỡ xuống giữa lưng. </p>\n\n<p>Vừa rồi NT ngồi máy tính 2 tuần liền không vận động, lưng đau khủng khiếp ở chỗ mà vòng tay từ trên xuống thò hết cỡ xuống giữa lưng. </p>\n\n<p>Vừa rồi NT ngồi máy tính 2 tuần liền không vận động, lưng đau khủng khiếp ở chỗ mà vòng tay từ trên xuống thò hết cỡ xuống giữa lưng. </p>\n\n<p>Vừa rồi NT ngồi máy tính 2 tuần liền không vận động, lưng đau khủng khiếp ở chỗ mà vòng tay từ trên xuống thò hết cỡ xuống giữa lưng. </p>\n\n<p>Vừa rồi NT ngồi máy tính 2 tuần liền không vận động, lưng đau khủng khiếp ở chỗ mà vòng tay từ trên xuống thò hết cỡ xuống giữa lưng. </p>\n\n<p>Vừa rồi NT ngồi máy tính 2 tuần liền không vận động, lưng đau khủng khiếp ở chỗ mà vòng tay từ trên xuống thò hết cỡ xuống giữa lưng. </p>\n\n<p>Vừa rồi NT ngồi máy tính 2 tuần liền không vận động, lưng đau khủng khiếp ở chỗ mà vòng tay từ trên xuống thò hết cỡ xuống giữa lưng. </p>\n\n<p>Vừa rồi NT ngồi máy tính 2 tuần liền không vận động, lưng đau khủng khiếp ở chỗ mà vòng tay từ trên xuống thò hết cỡ xuống giữa lưng. </p>\n\n<p>Vừa rồi NT ngồi máy tính 2 tuần liền không vận động, lưng đau khủng khiếp ở chỗ mà vòng tay từ trên xuống thò hết cỡ xuống giữa lưng. </p>\n\n<p>Vừa rồi NT ngồi máy tính 2 tuần liền không vận động, lưng đau khủng khiếp ở chỗ mà vòng tay từ trên xuống thò hết cỡ xuống giữa lưng. </p>\n\n<p>Vừa rồi NT ngồi máy tính 2 tuần liền không vận động, lưng đau khủng khiếp ở chỗ mà vòng tay từ trên xuống thò hết cỡ xuống giữa lưng. </p>\n\n<p>Vừa rồi NT ngồi máy tính 2 tuần liền không vận động, lưng đau khủng khiếp ở chỗ mà vòng tay từ trên xuống thò hết cỡ xuống giữa lưng. </p>\n\n<p>Vừa rồi NT ngồi máy tính 2 tuần liền không vận động, lưng đau khủng khiếp ở chỗ mà vòng tay từ trên xuống thò hết cỡ xuống giữa lưng. </p>\n\n<p>Vừa rồi NT ngồi máy tính 2 tuần liền không vận động, lưng đau khủng khiếp ở chỗ mà vòng tay từ trên xuống thò hết cỡ xuống giữa lưng. </p>\n\n<p>Vừa rồi NT ngồi máy tính 2 tuần liền không vận động, lưng đau khủng khiếp ở chỗ mà vòng tay từ trên xuống thò hết cỡ xuống giữa lưng. </p>\n\n<p>Vừa rồi NT ngồi máy tính 2 tuần liền không vận động, lưng đau khủng khiếp ở chỗ mà vòng tay từ trên xuống thò hết cỡ xuống giữa lưng. </p>\n\n<p>Vừa rồi NT ngồi máy tính 2 tuần liền không vận động, lưng đau khủng khiếp ở chỗ mà vòng tay từ trên xuống thò hết cỡ xuống giữa lưng. </p>\n\n<p>Vừa rồi NT ngồi máy tính 2 tuần liền không vận động, lưng đau khủng khiếp ở chỗ mà vòng tay từ trên xuống thò hết cỡ xuống giữa lưng. </p>\n\n<p>Vừa rồi NT ngồi máy tính 2 tuần liền không vận động, lưng đau khủng khiếp ở chỗ mà vòng tay từ trên xuống thò hết cỡ xuống giữa lưng. </p>\n\n<p>Vừa rồi NT ngồi máy tính 2 tuần liền không vận động, lưng đau khủng khiếp ở chỗ mà vòng tay từ trên xuống thò hết cỡ xuống giữa lưng. </p>\n\n<p>Vừa rồi NT ngồi máy tính 2 tuần liền không vận động, lưng đau khủng khiếp ở chỗ mà vòng tay từ trên xuống thò hết cỡ xuống giữa lưng. </p>\n\n<p>Vừa rồi NT ngồi máy tính 2 tuần liền không vận động, lưng đau khủng khiếp ở chỗ mà vòng tay từ trên xuống thò hết cỡ xuống giữa lưng. </p>\n\n<p>Vừa rồi NT ngồi máy tính 2 tuần liền không vận động, lưng đau khủng khiếp ở chỗ mà vòng tay từ trên xuống thò hết cỡ xuống giữa lưng. </p>\n\n<p>Vừa rồi NT ngồi máy tính 2 tuần liền không vận động, lưng đau khủng khiếp ở chỗ mà vòng tay từ trên xuống thò hết cỡ xuống giữa lưng. </p>\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n',NULL,NULL,1),(39,'vi','dau-lung-phia-sau-vai','','','',NULL,'',NULL,NULL,1),(42,'en','hinh-du-lich-phan-thiet','Hình đi du lịch Phan Thiết','','',NULL,'<p>Đây là hình đi du lịch phan thiết đầu năm 2011.</p>',NULL,NULL,1),(42,'vi','hinh-du-lich-phan-thiet','','','',NULL,'',NULL,NULL,1),(43,'en','hinh-cuoi','Hình cưới 1/8','','',NULL,'<p>Hình cưới chưa chỉnh sửa, chụp ngày 15/11/2011 (Studio Venus đường Hồ Văn Huê).</p>\n<p>(Phần 1/8)</p>',NULL,NULL,1),(43,'vi','hinh-cuoi','','','',NULL,'',NULL,NULL,1);

/*Table structure for table `article_media` */

DROP TABLE IF EXISTS `article_media`;

CREATE TABLE `article_media` (
  `id_article` int(11) unsigned NOT NULL DEFAULT '0',
  `id_media` int(11) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) unsigned DEFAULT '9999',
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_article`,`id_media`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7';

/*Data for the table `article_media` */

insert  into `article_media`(id_article,id_media,ordering,url) values (2,15,1,NULL),(2,39,1,NULL),(4,38,1,NULL),(5,15,1,NULL),(10,13,2,NULL),(11,7,1,NULL),(31,14,7,NULL),(31,66,2,NULL),(31,67,1,NULL),(31,68,3,NULL),(32,28,1,NULL),(37,40,1,NULL),(42,42,1,NULL),(42,43,2,NULL),(42,44,3,NULL),(42,45,4,NULL),(42,46,5,NULL),(42,47,6,NULL),(42,48,7,NULL),(42,49,8,NULL),(42,50,9,NULL),(42,51,10,NULL),(42,52,11,NULL),(42,53,12,NULL),(42,54,13,NULL),(42,55,14,NULL),(42,56,15,NULL),(42,57,16,NULL),(42,58,17,NULL),(42,59,18,NULL),(42,60,19,NULL),(42,61,20,NULL),(42,62,21,NULL),(42,63,22,NULL),(42,64,23,NULL),(42,65,24,NULL),(43,69,1,NULL),(43,70,2,NULL),(43,71,3,NULL),(43,72,4,NULL),(43,73,5,NULL),(43,74,6,NULL),(43,75,7,NULL),(43,76,8,NULL),(43,77,9,NULL),(43,78,10,NULL),(43,79,11,NULL),(43,80,12,NULL),(43,81,13,NULL),(43,82,14,NULL),(43,83,15,NULL),(43,84,16,NULL),(43,85,17,NULL),(43,86,18,NULL),(43,87,19,NULL),(43,88,20,NULL),(43,89,21,NULL),(43,90,22,NULL),(43,91,23,NULL),(43,92,24,NULL),(43,93,25,NULL),(43,94,26,NULL),(43,95,27,NULL),(43,96,28,NULL),(43,97,29,NULL),(43,98,30,NULL),(43,99,31,NULL),(43,100,32,NULL),(43,101,33,NULL),(43,102,34,NULL),(43,103,35,NULL),(43,104,36,NULL),(43,105,37,NULL),(43,106,38,NULL),(43,107,39,NULL),(43,108,40,NULL),(43,109,41,NULL),(43,110,42,NULL),(43,111,43,NULL),(43,112,44,NULL),(43,113,45,NULL),(43,114,46,NULL),(43,115,47,NULL),(43,116,48,NULL),(43,117,49,NULL),(43,118,50,NULL),(43,119,51,NULL),(43,120,52,NULL),(43,121,53,NULL),(43,122,54,NULL),(43,123,55,NULL),(43,124,56,NULL),(43,125,57,NULL),(43,126,58,NULL),(43,127,59,NULL),(43,128,60,NULL),(43,129,61,NULL),(43,130,62,NULL),(43,131,63,NULL),(43,132,64,NULL);

/*Table structure for table `article_tag` */

DROP TABLE IF EXISTS `article_tag`;

CREATE TABLE `article_tag` (
  `id_article` int(11) unsigned NOT NULL,
  `id_tag` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_article`,`id_tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7';

/*Data for the table `article_tag` */

/*Table structure for table `article_type` */

DROP TABLE IF EXISTS `article_type`;

CREATE TABLE `article_type` (
  `id_type` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ordering` int(11) DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `type_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7';

/*Data for the table `article_type` */

insert  into `article_type`(id_type,type,ordering,description,type_flag) values (1,'three-fourth',0,'Type set to articles in three fourth blocs.',0),(2,'one-fourth',0,'Type set to articles in one fourth blocs.',0),(3,'intro',0,'Everywhere an intro article is needed...',0);

/*Table structure for table `captcha` */

DROP TABLE IF EXISTS `captcha`;

CREATE TABLE `captcha` (
  `id_captcha` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `answer` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lang` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hash` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id_captcha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7';

/*Data for the table `captcha` */

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id_category` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ordering` int(11) DEFAULT '0',
  PRIMARY KEY (`id_category`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7';

/*Data for the table `category` */

insert  into `category`(id_category,name,ordering) values (3,'ntx-family-blog',0),(4,'giao-duc',0),(5,'suc-khoe',0),(6,'ghi-chu-nhac-nho',0),(7,'mam-mam',0),(8,'picture-gallery',0);

/*Table structure for table `category_lang` */

DROP TABLE IF EXISTS `category_lang`;

CREATE TABLE `category_lang` (
  `id_category` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_category`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7';

/*Data for the table `category_lang` */

insert  into `category_lang`(id_category,lang,title,subtitle,description) values (3,'en','Blog','TNX Family blog','<p>TNX Family blog</p>'),(3,'vi','blog','blog',''),(4,'en','Giáo dục','','<p>Giáo dục</p>'),(4,'vi','Giáo dục','Giáo dục','<p>Giáo dục</p>'),(5,'en','Sức khỏe','Sức khỏe','<p>Sức khỏe</p>'),(5,'vi','','','<p>Giáo dục</p>'),(6,'en','Ghi chú - nhắc nhở','Ghi chú - nhắc nhở','<p>Ghi chú - nhắc nhở</p>'),(6,'vi','','','<p>Giáo dục</p>'),(7,'en','Măm măm','Măm măm','<p>Măm măm</p>'),(7,'vi','','','<p>Giáo dục</p>'),(8,'en','Picture gallery','Picture gallery',''),(8,'vi','','','');

/*Table structure for table `demo_module` */

DROP TABLE IF EXISTS `demo_module`;

CREATE TABLE `demo_module` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int(11) unsigned NOT NULL,
  `title` int(1) unsigned DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `demo_module` */

/*Table structure for table `element` */

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7';

/*Data for the table `element` */

/*Table structure for table `element_definition` */

DROP TABLE IF EXISTS `element_definition`;

CREATE TABLE `element_definition` (
  `id_element_definition` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_element_definition`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7';

/*Data for the table `element_definition` */

/*Table structure for table `element_definition_lang` */

DROP TABLE IF EXISTS `element_definition_lang`;

CREATE TABLE `element_definition_lang` (
  `id_element_definition` int(11) unsigned NOT NULL,
  `lang` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id_element_definition`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7';

/*Data for the table `element_definition_lang` */

/*Table structure for table `extend_field` */

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7';

/*Data for the table `extend_field` */

/*Table structure for table `extend_fields` */

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7';

/*Data for the table `extend_fields` */

/*Table structure for table `ion_sessions` */

DROP TABLE IF EXISTS `ion_sessions`;

CREATE TABLE `ion_sessions` (
  `session_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `ip_address` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `user_agent` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7';

/*Data for the table `ion_sessions` */

insert  into `ion_sessions`(session_id,ip_address,user_agent,last_activity,user_data) values ('7a6bdb035a00f4a04c5b906eb6b660cc','127.0.0.1','Mozilla/5.0 (Windows NT 5.1; rv:6.0.2) Gecko/20100',1318101182,'a:1:{s:19:\"connect_blocked_url\";s:44:\"http://localhost/ionize-0.9.7-beta/en/manage\";}');

/*Table structure for table `lang` */

DROP TABLE IF EXISTS `lang`;

CREATE TABLE `lang` (
  `lang` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `online` char(1) COLLATE utf8_unicode_ci DEFAULT '0',
  `def` char(1) COLLATE utf8_unicode_ci DEFAULT '0',
  `ordering` int(11) DEFAULT NULL,
  PRIMARY KEY (`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7';

/*Data for the table `lang` */

insert  into `lang`(lang,name,online,def,ordering) values ('en','english','1','1',1),('vi','Tiếng Việt','1','0',2);

/*Table structure for table `login_tracker` */

DROP TABLE IF EXISTS `login_tracker`;

CREATE TABLE `login_tracker` (
  `ip_address` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `first_time` int(11) unsigned NOT NULL,
  `failures` tinyint(2) unsigned DEFAULT NULL,
  PRIMARY KEY (`ip_address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7';

/*Data for the table `login_tracker` */

/*Table structure for table `media` */

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
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7';

/*Data for the table `media` */

insert  into `media`(id_media,type,file_name,path,base_path,copyright,container,date,link) values (31,'picture','header1.jpg','files/header/header1.jpg','files/header/',NULL,'','0000-00-00 00:00:00',NULL),(32,'picture','header2.jpg','files/header/header2.jpg','files/header/',NULL,'','0000-00-00 00:00:00',NULL),(33,'picture','header3.jpg','files/header/header3.jpg','files/header/',NULL,'','0000-00-00 00:00:00',NULL),(34,'picture','header4.jpg','files/header/header4.jpg','files/header/',NULL,'','0000-00-00 00:00:00',NULL),(35,'picture','header5.jpg','files/header/header5.jpg','files/header/',NULL,'','0000-00-00 00:00:00',NULL),(36,'picture','Picture 158.jpg','files/Picture 158.jpg','files/',NULL,'','0000-00-00 00:00:00',NULL),(37,'picture','Picture158.jpg','files/Picture158.jpg','files/',NULL,'','0000-00-00 00:00:00',NULL),(38,'picture','slide0001_image051.jpg','files/slide0001_image051.jpg','files/',NULL,'','0000-00-00 00:00:00',NULL),(39,'picture','5448_1174388409904_1533873704_449813_2735452_n.jpg','files/5448_1174388409904_1533873704_449813_2735452_n.jpg','files/',NULL,'','0000-00-00 00:00:00',NULL),(40,'picture','35-gold-wedding-rings.jpg','files/35-gold-wedding-rings.jpg','files/',NULL,'','0000-00-00 00:00:00',NULL),(41,'picture','Picture 265.jpg','files/pictures/Du_lich_phan_thiet/Picture 265.jpg','files/pictures/Du_lich_phan_thiet/',NULL,'','0000-00-00 00:00:00',NULL),(42,'picture','Picture036.jpg','files/pictures/Du_lich_phan_thiet/Picture036.jpg','files/pictures/Du_lich_phan_thiet/',NULL,'','0000-00-00 00:00:00',NULL),(43,'picture','Picture090.jpg','files/pictures/Du_lich_phan_thiet/Picture090.jpg','files/pictures/Du_lich_phan_thiet/',NULL,'','0000-00-00 00:00:00',NULL),(44,'picture','Picture092.jpg','files/pictures/Du_lich_phan_thiet/Picture092.jpg','files/pictures/Du_lich_phan_thiet/',NULL,'','0000-00-00 00:00:00',NULL),(45,'picture','Picture094.jpg','files/pictures/Du_lich_phan_thiet/Picture094.jpg','files/pictures/Du_lich_phan_thiet/',NULL,'','0000-00-00 00:00:00',NULL),(46,'picture','Picture096.jpg','files/pictures/Du_lich_phan_thiet/Picture096.jpg','files/pictures/Du_lich_phan_thiet/',NULL,'','0000-00-00 00:00:00',NULL),(47,'picture','Picture098.jpg','files/pictures/Du_lich_phan_thiet/Picture098.jpg','files/pictures/Du_lich_phan_thiet/',NULL,'','0000-00-00 00:00:00',NULL),(48,'picture','Picture099.jpg','files/pictures/Du_lich_phan_thiet/Picture099.jpg','files/pictures/Du_lich_phan_thiet/',NULL,'','0000-00-00 00:00:00',NULL),(49,'picture','Picture106.jpg','files/pictures/Du_lich_phan_thiet/Picture106.jpg','files/pictures/Du_lich_phan_thiet/',NULL,'','0000-00-00 00:00:00',NULL),(50,'picture','Picture155.jpg','files/pictures/Du_lich_phan_thiet/Picture155.jpg','files/pictures/Du_lich_phan_thiet/',NULL,'','0000-00-00 00:00:00',NULL),(51,'picture','Picture188.jpg','files/pictures/Du_lich_phan_thiet/Picture188.jpg','files/pictures/Du_lich_phan_thiet/',NULL,'','0000-00-00 00:00:00',NULL),(52,'picture','Picture215.jpg','files/pictures/Du_lich_phan_thiet/Picture215.jpg','files/pictures/Du_lich_phan_thiet/',NULL,'','0000-00-00 00:00:00',NULL),(53,'picture','Picture217.jpg','files/pictures/Du_lich_phan_thiet/Picture217.jpg','files/pictures/Du_lich_phan_thiet/',NULL,'','0000-00-00 00:00:00',NULL),(54,'picture','Picture236.jpg','files/pictures/Du_lich_phan_thiet/Picture236.jpg','files/pictures/Du_lich_phan_thiet/',NULL,'','0000-00-00 00:00:00',NULL),(55,'picture','Picture237.jpg','files/pictures/Du_lich_phan_thiet/Picture237.jpg','files/pictures/Du_lich_phan_thiet/',NULL,'','0000-00-00 00:00:00',NULL),(56,'picture','Picture246.jpg','files/pictures/Du_lich_phan_thiet/Picture246.jpg','files/pictures/Du_lich_phan_thiet/',NULL,'','0000-00-00 00:00:00',NULL),(57,'picture','Picture254.jpg','files/pictures/Du_lich_phan_thiet/Picture254.jpg','files/pictures/Du_lich_phan_thiet/',NULL,'','0000-00-00 00:00:00',NULL),(58,'picture','Picture281.jpg','files/pictures/Du_lich_phan_thiet/Picture281.jpg','files/pictures/Du_lich_phan_thiet/',NULL,'','0000-00-00 00:00:00',NULL),(59,'picture','Picture282.jpg','files/pictures/Du_lich_phan_thiet/Picture282.jpg','files/pictures/Du_lich_phan_thiet/',NULL,'','0000-00-00 00:00:00',NULL),(60,'picture','Picture284.jpg','files/pictures/Du_lich_phan_thiet/Picture284.jpg','files/pictures/Du_lich_phan_thiet/',NULL,'','0000-00-00 00:00:00',NULL),(61,'picture','Picture300.jpg','files/pictures/Du_lich_phan_thiet/Picture300.jpg','files/pictures/Du_lich_phan_thiet/',NULL,'','0000-00-00 00:00:00',NULL),(62,'picture','Picture302.jpg','files/pictures/Du_lich_phan_thiet/Picture302.jpg','files/pictures/Du_lich_phan_thiet/',NULL,'','0000-00-00 00:00:00',NULL),(63,'picture','Picture306.jpg','files/pictures/Du_lich_phan_thiet/Picture306.jpg','files/pictures/Du_lich_phan_thiet/',NULL,'','0000-00-00 00:00:00',NULL),(64,'picture','Picture336.jpg','files/pictures/Du_lich_phan_thiet/Picture336.jpg','files/pictures/Du_lich_phan_thiet/',NULL,'','0000-00-00 00:00:00',NULL),(65,'picture','Picture339.jpg','files/pictures/Du_lich_phan_thiet/Picture339.jpg','files/pictures/Du_lich_phan_thiet/',NULL,'','0000-00-00 00:00:00',NULL),(66,'picture','3806830832_583a5ffd0e_b.jpg','files/pictures/di_choi_vung_tau/3806830832_583a5ffd0e_b.jpg','files/pictures/di_choi_vung_tau/',NULL,'','0000-00-00 00:00:00',NULL),(67,'picture','3806040393_9c8b0b06a1_b.jpg','files/pictures/di_choi_vung_tau/3806040393_9c8b0b06a1_b.jpg','files/pictures/di_choi_vung_tau/',NULL,'','0000-00-00 00:00:00',NULL),(68,'picture','3806850392_b29905fb51_b.jpg','files/pictures/di_choi_vung_tau/3806850392_b29905fb51_b.jpg','files/pictures/di_choi_vung_tau/',NULL,'','0000-00-00 00:00:00',NULL),(69,'picture','IMG_5119.jpg','files/pictures/hinh_cuoi_1/IMG_5119.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(70,'picture','IMG_5120.jpg','files/pictures/hinh_cuoi_1/IMG_5120.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(71,'picture','IMG_5121.jpg','files/pictures/hinh_cuoi_1/IMG_5121.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(72,'picture','IMG_5122.jpg','files/pictures/hinh_cuoi_1/IMG_5122.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(73,'picture','IMG_5123.jpg','files/pictures/hinh_cuoi_1/IMG_5123.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(74,'picture','IMG_5124.jpg','files/pictures/hinh_cuoi_1/IMG_5124.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(75,'picture','IMG_5125.jpg','files/pictures/hinh_cuoi_1/IMG_5125.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(76,'picture','IMG_5126.jpg','files/pictures/hinh_cuoi_1/IMG_5126.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(77,'picture','IMG_5127.jpg','files/pictures/hinh_cuoi_1/IMG_5127.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(78,'picture','IMG_5128.jpg','files/pictures/hinh_cuoi_1/IMG_5128.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(79,'picture','IMG_5129.jpg','files/pictures/hinh_cuoi_1/IMG_5129.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(80,'picture','IMG_5130.jpg','files/pictures/hinh_cuoi_1/IMG_5130.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(81,'picture','IMG_5131.jpg','files/pictures/hinh_cuoi_1/IMG_5131.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(82,'picture','IMG_5133.jpg','files/pictures/hinh_cuoi_1/IMG_5133.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(83,'picture','IMG_5134.jpg','files/pictures/hinh_cuoi_1/IMG_5134.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(84,'picture','IMG_5135.jpg','files/pictures/hinh_cuoi_1/IMG_5135.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(85,'picture','IMG_5136.jpg','files/pictures/hinh_cuoi_1/IMG_5136.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(86,'picture','IMG_5137.jpg','files/pictures/hinh_cuoi_1/IMG_5137.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(87,'picture','IMG_5138.jpg','files/pictures/hinh_cuoi_1/IMG_5138.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(88,'picture','IMG_5139.jpg','files/pictures/hinh_cuoi_1/IMG_5139.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(89,'picture','IMG_5140.jpg','files/pictures/hinh_cuoi_1/IMG_5140.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(90,'picture','IMG_5141.jpg','files/pictures/hinh_cuoi_1/IMG_5141.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(91,'picture','IMG_5142.jpg','files/pictures/hinh_cuoi_1/IMG_5142.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(92,'picture','IMG_5143.jpg','files/pictures/hinh_cuoi_1/IMG_5143.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(93,'picture','IMG_5145.jpg','files/pictures/hinh_cuoi_1/IMG_5145.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(94,'picture','IMG_5146.jpg','files/pictures/hinh_cuoi_1/IMG_5146.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(95,'picture','IMG_5147.jpg','files/pictures/hinh_cuoi_1/IMG_5147.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(96,'picture','IMG_5148.jpg','files/pictures/hinh_cuoi_1/IMG_5148.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(97,'picture','IMG_5149.jpg','files/pictures/hinh_cuoi_1/IMG_5149.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(98,'picture','IMG_5150.jpg','files/pictures/hinh_cuoi_1/IMG_5150.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(99,'picture','IMG_5151.jpg','files/pictures/hinh_cuoi_1/IMG_5151.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(100,'picture','IMG_5152.jpg','files/pictures/hinh_cuoi_1/IMG_5152.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(101,'picture','IMG_5153.jpg','files/pictures/hinh_cuoi_1/IMG_5153.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(102,'picture','IMG_5154.jpg','files/pictures/hinh_cuoi_1/IMG_5154.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(103,'picture','IMG_5155.jpg','files/pictures/hinh_cuoi_1/IMG_5155.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(104,'picture','IMG_5156.jpg','files/pictures/hinh_cuoi_1/IMG_5156.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(105,'picture','IMG_5157.jpg','files/pictures/hinh_cuoi_1/IMG_5157.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(106,'picture','IMG_5158.jpg','files/pictures/hinh_cuoi_1/IMG_5158.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(107,'picture','IMG_5159.jpg','files/pictures/hinh_cuoi_1/IMG_5159.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(108,'picture','IMG_5160.jpg','files/pictures/hinh_cuoi_1/IMG_5160.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(109,'picture','IMG_5161.jpg','files/pictures/hinh_cuoi_1/IMG_5161.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(110,'picture','IMG_5162.jpg','files/pictures/hinh_cuoi_1/IMG_5162.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(111,'picture','IMG_5163.jpg','files/pictures/hinh_cuoi_1/IMG_5163.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(112,'picture','IMG_5164.jpg','files/pictures/hinh_cuoi_1/IMG_5164.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(113,'picture','IMG_5166.jpg','files/pictures/hinh_cuoi_1/IMG_5166.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(114,'picture','IMG_5167.jpg','files/pictures/hinh_cuoi_1/IMG_5167.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(115,'picture','IMG_5168.jpg','files/pictures/hinh_cuoi_1/IMG_5168.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(116,'picture','IMG_5169.jpg','files/pictures/hinh_cuoi_1/IMG_5169.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(117,'picture','IMG_5170.jpg','files/pictures/hinh_cuoi_1/IMG_5170.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(118,'picture','IMG_5172.jpg','files/pictures/hinh_cuoi_1/IMG_5172.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(119,'picture','IMG_5173.jpg','files/pictures/hinh_cuoi_1/IMG_5173.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(120,'picture','IMG_5174.jpg','files/pictures/hinh_cuoi_1/IMG_5174.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(121,'picture','IMG_5175.jpg','files/pictures/hinh_cuoi_1/IMG_5175.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(122,'picture','IMG_5176.jpg','files/pictures/hinh_cuoi_1/IMG_5176.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(123,'picture','IMG_5177.jpg','files/pictures/hinh_cuoi_1/IMG_5177.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(124,'picture','IMG_5178.jpg','files/pictures/hinh_cuoi_1/IMG_5178.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(125,'picture','IMG_5179.jpg','files/pictures/hinh_cuoi_1/IMG_5179.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(126,'picture','IMG_5180.jpg','files/pictures/hinh_cuoi_1/IMG_5180.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(127,'picture','IMG_5181.jpg','files/pictures/hinh_cuoi_1/IMG_5181.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(128,'picture','IMG_5183.jpg','files/pictures/hinh_cuoi_1/IMG_5183.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(129,'picture','IMG_5184.jpg','files/pictures/hinh_cuoi_1/IMG_5184.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(130,'picture','IMG_5185.jpg','files/pictures/hinh_cuoi_1/IMG_5185.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(131,'picture','IMG_5186.jpg','files/pictures/hinh_cuoi_1/IMG_5186.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL),(132,'picture','IMG_5187.jpg','files/pictures/hinh_cuoi_1/IMG_5187.jpg','files/pictures/hinh_cuoi_1/',NULL,'','0000-00-00 00:00:00',NULL);

/*Table structure for table `media_lang` */

DROP TABLE IF EXISTS `media_lang`;

CREATE TABLE `media_lang` (
  `lang` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `id_media` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id_media`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7';

/*Data for the table `media_lang` */

/*Table structure for table `menu` */

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ordering` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_menu`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7';

/*Data for the table `menu` */

insert  into `menu`(id_menu,name,title,ordering) values (1,'main','Main menu',NULL),(2,'system','System menu',NULL);

/*Table structure for table `module` */

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7';

/*Data for the table `module` */

/*Table structure for table `module_setting` */

DROP TABLE IF EXISTS `module_setting`;

CREATE TABLE `module_setting` (
  `id_module_setting` int(11) NOT NULL AUTO_INCREMENT,
  `id_module` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Setting name',
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Setting content',
  `lang` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_module_setting`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7';

/*Data for the table `module_setting` */

/*Table structure for table `note` */

DROP TABLE IF EXISTS `note`;

CREATE TABLE `note` (
  `id_note` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_note`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7';

/*Data for the table `note` */

/*Table structure for table `page` */

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7';

/*Data for the table `page` */

insert  into `page`(id_page,id_parent,id_menu,id_subnav,name,ordering,level,online,home,author,updater,created,publish_on,publish_off,updated,logical_date,appears,view,article_list_view,article_view,article_order,article_order_direction,link,link_type,link_id,pagination,pagination_nb,id_group,priority) values (1,0,2,0,'404',0,0,1,0,'0','','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','2011-08-24 22:51:41','0000-00-00 00:00:00',0,'404','','','0','0','',NULL,'',0,0,0,5),(2,0,1,0,'tnx-family-homepage',1,0,1,1,'0','admin','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','2011-10-19 00:30:08','0000-00-00 00:00:00',1,'page_home','','','0','0','','','',0,0,0,5),(3,0,1,0,'contact',6,0,1,0,'0','','2011-07-05 17:29:30','0000-00-00 00:00:00','0000-00-00 00:00:00','2011-07-27 06:53:26','0000-00-00 00:00:00',1,'page_contact','0','','0','0','',NULL,'',0,0,0,5),(6,0,1,0,'blog',2,0,1,0,'0','','2011-07-05 17:36:21','0000-00-00 00:00:00','0000-00-00 00:00:00','2011-07-13 21:08:29','0000-00-00 00:00:00',1,'page_blog','article_blog_post_list','article_blog_post_detail','0','0','',NULL,'',0,0,0,5),(8,0,2,0,'search-result',1,0,1,0,'0','','2011-07-12 16:33:29','0000-00-00 00:00:00','0000-00-00 00:00:00','2011-07-12 16:54:38','0000-00-00 00:00:00',0,'page_search_result','0','','0','0','',NULL,'',0,0,0,5),(9,0,2,0,'footer',2,0,1,0,'0','admin','2011-07-12 17:03:22','0000-00-00 00:00:00','0000-00-00 00:00:00','2011-10-19 03:45:12','0000-00-00 00:00:00',0,'','','','0','0','',NULL,'',0,0,0,5),(10,0,1,0,'picture-gallery',3,0,1,0,'0','admin','2011-07-14 00:35:27','0000-00-00 00:00:00','0000-00-00 00:00:00','2011-10-19 03:21:09','0000-00-00 00:00:00',1,'','article_blog_post_list','article_picture_gallery','0','0','',NULL,'',0,0,0,5),(15,0,1,0,'tnx-family-gioi-thieu',5,0,1,0,'admin','0','2011-10-08 23:23:25','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0','0','0','0','0','',NULL,'',0,0,0,5),(16,0,1,0,'cam-nang-gia-dinh',4,0,1,0,'admin','0','2011-10-08 23:56:34','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0','0','0','0','0','','','0',0,0,0,5),(17,16,1,0,'suc-khoe',7,1,1,0,'0','admin','2011-10-09 15:12:56','0000-00-00 00:00:00','0000-00-00 00:00:00','2011-10-09 17:01:27','0000-00-00 00:00:00',1,'page_blog','article_blog_post_list','article_blog_post_detail','0','0','',NULL,'',0,0,0,5),(18,16,1,0,'cam-nang-mam-mam',8,1,1,0,'0','admin','2011-10-10 22:43:19','0000-00-00 00:00:00','0000-00-00 00:00:00','2011-10-10 22:49:20','0000-00-00 00:00:00',1,'page_blog','','','0','0','',NULL,'',0,0,0,5),(19,16,1,0,'cam-nang-giao-duc',9,1,1,0,'admin','0','2011-10-10 22:47:53','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'page_blog','0','0','0','0','',NULL,'',0,0,0,5),(21,16,1,0,'cau-chuyen',11,1,1,0,'admin','0','2011-10-10 23:07:01','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'page_blog','0','0','0','0','',NULL,'',0,0,0,5);

/*Table structure for table `page_article` */

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

/*Data for the table `page_article` */

insert  into `page_article`(id_page,id_article,online,view,ordering,id_type,link_type,link_id,link,main_parent) values (1,1,1,'404',0,NULL,'','','',1),(2,2,1,NULL,3,NULL,'','','',1),(2,4,1,NULL,4,NULL,'','','',1),(2,5,1,NULL,6,2,'','','',1),(2,32,1,NULL,5,NULL,'','','',1),(2,37,1,NULL,1,NULL,'','','',1),(3,13,1,NULL,1,NULL,'','','',1),(6,10,1,NULL,5,NULL,'','','',1),(6,11,1,NULL,6,NULL,'','','',1),(9,6,1,'article_footer',1,NULL,'','','',1),(9,7,1,'article_footer',2,NULL,'','','',1),(9,8,1,'article_footer',3,NULL,'','','',1),(10,31,1,'',3,0,'','','',1),(10,42,1,'',2,0,'','','',1),(10,43,1,NULL,1,0,'','','',1),(16,36,1,NULL,1,NULL,'','','',1),(17,38,1,NULL,2,NULL,'','','',1),(17,39,1,NULL,1,NULL,'','','',1);

/*Table structure for table `page_lang` */

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

/*Data for the table `page_lang` */

insert  into `page_lang`(lang,id_page,url,link,title,subtitle,nav_title,subnav_title,meta_title,meta_description,meta_keywords,online) values ('en',1,'404','','404','','','','','','',1),('vi',1,'404','',NULL,NULL,'','',NULL,NULL,NULL,1),('en',2,'tnx-family-homepage','','Trang chủ','Chào mừng đến với TNX-Family','','','','','',1),('vi',2,'tnx-family-homepage','','','','','','','','',1),('en',3,'contact','','Contact','','','','','','',1),('vi',3,'contact','',NULL,NULL,'','',NULL,NULL,NULL,1),('en',6,'blog','','Blog','','','','','','',1),('vi',6,'blog','',NULL,NULL,'','',NULL,NULL,NULL,1),('en',8,'search-result','','Search Results','','','','','','',1),('vi',8,'search-result','',NULL,NULL,'','',NULL,NULL,NULL,1),('en',9,'footer','','Footer','','','','','','',0),('vi',9,'footer','','','','','','','','',1),('en',10,'picture-gallery','','Picture Gallery','','','','','','',1),('vi',10,'picture-gallery','','','','','','','','',1),('en',15,'tnx-family-gioi-thieu','','Giới thiệu','Về TNX Family','','','','','',1),('vi',15,'tnx-family-gioi-thieu','',NULL,NULL,'','',NULL,NULL,NULL,1),('en',16,'cam-nang-gia-dinh','','Cẩm nang gia đình','Cẩm nang gia đình','','','','','',1),('vi',16,'cam-nang-gia-dinh','','','','','','','','',1),('en',17,'suc-khoe','','Sức khỏe','Cẩm nang sức khỏe','','','','','',1),('vi',17,'suc-khoe','','','','','','','','',1),('en',18,'cam-nang-mam-mam','','Măm măm','Măm măm','','','','','',1),('vi',18,'mm-mm','','','','','','','','',1),('en',19,'cam-nang-giao-duc','','Giáo dục','Giáo dục','','','','','',1),('vi',19,'cam-nang-giao-duc','','','','','','','','',1),('en',21,'cau-chuyen','','Câu chuyện','','','','','','',1),('vi',21,'cau-chuyen','','','','','','','','',1);

/*Table structure for table `page_media` */

DROP TABLE IF EXISTS `page_media`;

CREATE TABLE `page_media` (
  `id_page` int(11) unsigned NOT NULL DEFAULT '0',
  `id_media` int(11) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) unsigned DEFAULT '9999',
  PRIMARY KEY (`id_page`,`id_media`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7';

/*Data for the table `page_media` */

insert  into `page_media`(id_page,id_media,ordering) values (1,1,4),(1,3,5),(1,7,3),(1,10,6),(1,13,7),(2,31,1),(2,32,2),(2,33,3),(2,34,4),(2,35,5);

/*Table structure for table `page_user_groups` */

DROP TABLE IF EXISTS `page_user_groups`;

CREATE TABLE `page_user_groups` (
  `id_page` int(11) unsigned NOT NULL DEFAULT '0',
  `ig_group` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_page`,`ig_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7';

/*Data for the table `page_user_groups` */

/*Table structure for table `setting` */

DROP TABLE IF EXISTS `setting`;

CREATE TABLE `setting` (
  `id_setting` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_setting`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7';

/*Data for the table `setting` */

insert  into `setting`(id_setting,name,content,lang) values (2,'website_email','',NULL),(3,'files_path','files',NULL),(6,'theme','demo',NULL),(7,'theme_admin','admin',NULL),(14,'google_analytics','',NULL),(15,'filemanager','mootools-filemanager',NULL),(23,'show_help_tips','1',NULL),(24,'display_connected_label','1',NULL),(25,'texteditor','tinymce',NULL),(26,'media_thumb_size','120',NULL),(27,'tinybuttons1','pdw_toggle,|,bold,italic,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,|,formatselect,|,bullist,numlist,|,link,unlink,image,|,spellchecker',NULL),(28,'tinybuttons2','fullscreen, undo,redo,|,pastetext,selectall,removeformat,|,media,charmap,hr,blockquote,|,template,|,codemirror',NULL),(29,'tinybuttons3','tablecontrols',NULL),(30,'displayed_admin_languages','en',NULL),(31,'date_format','%Y.%m.%d',NULL),(32,'force_lang_urls','0',NULL),(33,'tinyblockformats','p,h2,h3,h4,h5,pre,div',NULL),(34,'article_allowed_tags','h2,h3,h4,h5,h6,em,img,iframe,table,object,thead,tbody,tfoot,tr,th,td,param,embed,map,p,a,ul,ol,li,br,b,strong',NULL),(35,'filemanager_file_types','gif,jpe,jpeg,jpg,png,flv,mpeg,mpg,mp3,pdf',NULL),(36,'default_admin_lang','en',NULL),(37,'ionize_version','0.9.7',NULL),(38,'media_upload_mode','multiple',NULL),(39,'site_title','TNX-Family','en'),(40,'thumb_430','width,430,,',NULL),(41,'thumb_540','width,540,,',NULL),(42,'thumb_150','width,150,true,true',NULL),(43,'thumb_940','width,940,,',NULL),(44,'thumb_280','width,280,,true',NULL),(45,'meta_keywords','Website gia đình NT-NX','en'),(46,'meta_description','Website gia đình NT-NX','en'),(47,'meta_keywords','','vi'),(48,'meta_description','','vi'),(49,'site_title','','vi');

/*Table structure for table `tag` */

DROP TABLE IF EXISTS `tag`;

CREATE TABLE `tag` (
  `id_tag` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7';

/*Data for the table `tag` */

/*Table structure for table `user_groups` */

DROP TABLE IF EXISTS `user_groups`;

CREATE TABLE `user_groups` (
  `id_group` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `level` int(11) DEFAULT NULL,
  `slug` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `group_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` tinytext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id_group`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7';

/*Data for the table `user_groups` */

insert  into `user_groups`(id_group,level,slug,group_name,description) values (1,10000,'super-admins','Super Admins',NULL),(2,5000,'admins','Admins',NULL),(3,1000,'editors','Editors',NULL),(4,100,'users','Users',NULL),(5,50,'pending','Pending',NULL),(6,10,'guests','Guests',NULL),(7,-10,'banned','Banned',NULL),(8,-100,'deactivated','Deactivated',NULL);

/*Table structure for table `users` */

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7';

/*Data for the table `users` */

insert  into `users`(id_user,id_group,join_date,last_visit,username,screen_name,password,email,salt) values (1,1,'2011-10-08 18:40:20','2011-10-14 01:22:25','admin','Cuong Vu','pCDKBPXVSDE0q382/Hyjjw==','manhcuongvu2004@yahoo.com','492541ceeec01074');

/*Table structure for table `users_info` */

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `users_info` */

/*Table structure for table `users_meta` */

DROP TABLE IF EXISTS `users_meta`;

CREATE TABLE `users_meta` (
  `id_user` int(11) unsigned NOT NULL,
  `newsletter` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7';

/*Data for the table `users_meta` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
