-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2016 at 05:58 PM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_giantshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_category`
--

CREATE TABLE IF NOT EXISTS `ci_category` (
  `id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parentid` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `access` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `trash` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ci_category`
--

INSERT INTO `ci_category` (`id`, `level`, `title`, `link`, `parentid`, `type`, `created`, `created_by`, `modified`, `modified_by`, `access`, `status`, `trash`) VALUES
(1, 1, 'Trang chủ', 'trang-chu', 0, 'content', '2016-01-31 10:27:26', 'Tiến Phát', '2016-01-31 10:32:02', 'Tiến Phát', 0, 1, 1),
(2, 1, 'Giới thiệu', 'gioi-thieu', 0, 'content', '2016-01-22 00:00:00', 'Super Admin', '2016-01-22 00:00:00', 'Super Admin', 0, 1, 1),
(3, 1, 'Sản phẩm', 'san-pham', 0, 'product', '2016-01-22 00:00:00', 'Super Admin', '2016-01-22 00:00:00', 'Super Admin', 0, 1, 1),
(4, 1, 'Liên hệ', 'lien-he', 0, 'contact', '2016-01-22 00:00:00', 'Super Admin', '2016-01-22 00:00:00', 'Super Admin', 0, 1, 1),
(5, 1, 'Dịch vụ', 'dich-vu', 0, 'content', '2016-01-22 00:00:00', 'Super Admin', '2016-01-22 00:00:00', 'Super Admin', 0, 1, 1),
(6, 1, 'Tin tức', 'tin-tuc', 0, 'content', '2016-01-22 00:00:00', 'Super Admin', '2016-01-22 00:00:00', 'Super Admin', 0, 1, 1),
(7, 2, 'Thời trang nam', 'thoi-trang-nam', 3, 'product', '2016-01-22 00:00:00', 'Super Admin', '2016-04-18 04:35:38', 'Ngô Tiến Phát', 1, 1, 1),
(8, 2, 'Thời trang nữ', 'thoi-trang-nu', 3, 'product', '2016-01-22 00:00:00', 'Super Admin', '2016-01-22 00:00:00', 'Super Admin', 1, 1, 1),
(9, 2, 'Thời trang trẻ em', 'thoi-trang-tre-em', 3, 'product', '2016-01-22 00:00:00', 'Super Admin', '2016-01-22 00:00:00', 'Super Admin', 1, 1, 1),
(11, 3, 'Giầy nam', 'giay-nam', 7, 'product', '2016-01-22 00:00:00', 'Super Admin', '2016-01-22 00:00:00', 'Super Admin', 1, 1, 1),
(12, 3, 'Áo sơ mi nam', 'ao-so-mi-nam', 7, 'product', '2016-01-22 00:00:00', 'Super Admin', '2016-01-22 00:00:00', 'Super Admin', 1, 1, 1),
(13, 3, 'Áo khoác nam', 'ao-khoac-nam', 7, 'product', '2016-01-22 00:00:00', 'Super Admin', '2016-01-22 00:00:00', 'Super Admin', 1, 1, 1),
(14, 3, 'Đồ vest nam', 'do-vest-nam', 7, 'product', '2016-01-22 00:00:00', 'Tiến Phát', '2016-01-22 00:00:00', 'Tiến Phát', 1, 1, 1),
(15, 3, 'Áo thun nam', 'ao-thun-nam', 7, 'product', '2016-01-22 00:00:00', 'Super Admin', '2016-01-22 00:00:00', 'Super Admin', 1, 1, 1),
(16, 3, 'Áo len nam', 'ao-len-nam', 7, 'product', '2016-01-22 00:00:00', 'Super Admin', '2016-01-22 00:00:00', 'Super Admin', 1, 1, 1),
(17, 3, 'Váy đầm', 'vay-dam', 8, 'product', '2016-01-22 00:00:00', 'Super Admin', '2016-01-22 00:00:00', 'Super Admin', 1, 1, 1),
(18, 3, 'Áo sơmi nữ', 'ao-somi-nu', 8, 'product', '2016-01-22 00:00:00', 'Super Admin', '2016-01-22 00:00:00', 'Super Admin', 1, 1, 1),
(19, 3, 'Áo len nữ', 'ao-len-nu', 8, 'product', '2016-01-22 00:00:00', 'Super Admin', '2016-01-22 00:00:00', 'Super Admin', 1, 1, 1),
(20, 3, 'Áo thun nữ', 'ao-thun-nu', 8, 'product', '2016-01-22 00:00:00', 'Super Admin', '2016-01-22 00:00:00', 'Super Admin', 1, 1, 1),
(21, 3, 'Áo kiểu nữ', 'ao-kieu-nu', 8, 'product', '2016-01-22 00:00:00', 'Super Admin', '2016-01-22 00:00:00', 'Super Admin', 1, 1, 1),
(22, 3, 'Áo khoác nữ', 'ao-khoac-nu', 8, 'product', '2016-01-22 00:00:00', 'Super Admin', '2016-01-22 00:00:00', 'Super Admin', 1, 1, 1),
(23, 3, 'Giày cao gót', 'giay-cao-got', 8, 'product', '2016-01-22 00:00:00', 'Tiến Phát', '2016-01-22 00:00:00', 'Tiến Phát', 1, 1, 1),
(24, 3, 'Giày bệt nữ', 'giay-bet-nu', 8, 'product', '2016-01-22 00:00:00', 'Super Admin', '2016-01-22 00:00:00', 'Super Admin', 1, 1, 1),
(25, 3, 'Giày sandal nữ', 'giay-sandal-nu', 8, 'product', '2016-01-22 00:00:00', 'Super Admin', '2016-01-22 00:00:00', 'Super Admin', 1, 1, 1),
(26, 3, 'Giày búp bê nữ', 'giay-bup-be-nu', 8, 'product', '2016-01-22 00:00:00', 'Super Admin', '2016-01-22 00:00:00', 'Super Admin', 1, 1, 1),
(27, 3, 'Quần áo bé trai', 'quan-ao-be-trai', 9, 'product', '2016-01-22 00:00:00', 'Super Admin', '2016-01-22 00:00:00', 'Super Admin', 1, 1, 1),
(28, 3, 'Quần áo bé gái', 'quan-ao-be-gai', 9, 'product', '2016-01-22 00:00:00', 'Super Admin', '2016-01-22 00:00:00', 'Super Admin', 1, 1, 1),
(29, 3, 'Giày bé trai', 'giay-be-trai', 9, 'product', '2016-01-22 00:00:00', 'Super Admin', '2016-01-22 00:00:00', 'Super Admin', 1, 1, 1),
(30, 3, 'Giày bé gái', 'giay-be-gai', 9, 'product', '2016-01-22 00:00:00', 'Tiến Phát', '2016-01-22 00:00:00', 'Tiến Phát', 1, 1, 1),
(31, 3, 'Đồng hồ', 'dong-ho', 10, 'product', '2016-01-22 00:00:00', 'Super Admin', '2016-01-22 00:00:00', 'Super Admin', 1, 1, 1),
(32, 3, 'Mắt kính', 'mat-kinh', 10, 'product', '2016-01-22 00:00:00', 'Super Admin', '2016-01-22 00:00:00', 'Super Admin', 1, 1, 1),
(33, 3, 'Thắt lưng', 'that-lung', 10, 'product', '2016-01-22 00:00:00', 'Tiến Phát', '2016-01-22 00:00:00', 'Tiến Phát', 1, 1, 1),
(34, 3, 'Bóp', 'bop', 10, 'product', '2016-01-22 00:00:00', 'Super Admin', '2016-01-22 00:00:00', 'Super Admin', 1, 1, 1),
(35, 3, 'Nón', 'non', 10, 'product', '2016-01-22 00:00:00', 'Super Admin', '2016-01-22 00:00:00', 'Super Admin', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ci_contact`
--

CREATE TABLE IF NOT EXISTS `ci_contact` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(15) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ci_contact`
--

INSERT INTO `ci_contact` (`id`, `fullname`, `email`, `phone`, `title`, `content`) VALUES
(6, 'Ngô Tiến Phát', 'quangphatc3@gmail.com', 9546743, 'Test Liên hệ', 'adgfgh'),
(7, 'Tiến Phát', 'quangphattt95@gmail.com', 0, 'Test Liên hệ', 'sda'),
(8, 'Ngô Tiến Phát', 'quangphatc3@gmail.com', 967085852, 'Web đẹp', 'Website của bạn đẹp quá!');

-- --------------------------------------------------------

--
-- Table structure for table `ci_content`
--

CREATE TABLE IF NOT EXISTS `ci_content` (
  `id` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `introtext` text COLLATE utf8_unicode_ci NOT NULL,
  `fulltext` text COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `access` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `trash` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ci_content`
--

INSERT INTO `ci_content` (`id`, `catid`, `title`, `alias`, `introtext`, `fulltext`, `img`, `created`, `created_by`, `modified`, `modified_by`, `access`, `status`, `trash`) VALUES
(1, 2, 'Giới thiệu', 'gioi-thieu', '', '<div class="rte">\n			<p>I. QUÁ TRÌNH HÌNH THÀNH VÀ PHÁT TRIỂN</p>\n\n<p>Trong những năm qua, xã hội phát triển, kinh tế tăng trưởng đồng thời là chất lượng cuộc sống của người dân ngày càng càng được nâng cao nhiều trung tâm thương mại, nhà cao tầng, biệt thự được mọc ra kèm theo đấy là nhu cầu mua sắm các thiết bị phục vụ nhu cầu thời trang cho mọi tầng lớp...</p>\n\n<p>Khai trương shop GiantShop tại Ngõ 181, Hàng Bột, Đống Đa, Hà Nội, Việt Nam chính thức tham gia vào lĩnh vực kinh doanh bán lẻ mặt hàng thể thao, tạo ra một phong cách mua sắm hoàn toàn mới với người dân thủ đô, thông qua cung cấp các sản phẩm và dịch vụ tới người tiêu dùng.</p>\n\n<p>• TẦM NHÌN:</p>\n\n<p>Công ty số 1 tại Việt Nam trong lĩnh vực phân phối, bán lẻ các sản phẩm thời trang.</p>\n\n<p>• SỨ MỆNH:</p>\n\n<p>Với kim chỉ nam là “Không ngừng phát triển vì khách hàng” và làm hài lòng khách hàng bằng cách tạo ra những giá trị gia tăng như cung cấp các sản phẩm, dịch vụ tốt nhất.</p>\n\n<p>• MỤC TIÊU CHIẾN LƯỢC:</p>\n\n<p>1. Tối đa hoá giá trị đầu tư của các cổ đông; giữ vững tốc độ tăng trưởng lợi nhuận và tình hình tài chính lành mạnh;</p>\n\n<p>2. Không ngừng nâng cao động lực làm việc và năng lực cán bộ; GiantShop phải luôn dẫn đầu trong lĩnh vực thời trang&nbsp;trong việc sáng tạo, phát triển chính sách đãi ngộ và cơ hội thăng tiến nghề nghiệp cho cán bộ của mình;</p>\n\n<p>3. Duy trì sự hài lòng, trung thành và gắn bó của khách hàng với GiantShop ; xây dựng GiantShop thành một trong những công ty hàng đầu Việt Nam có chất lượng dịch vụ tốt nhất do khách hàng lựa chọn.</p>\n\n<p>4. Phát triển GiantShop thành một trong những nhà bán lẻ hàng đầu Việt Nam về: quản lý tốt nhất, môi trường làm việc tốt nhất, văn hoá doanh nghiệp chú trọng khách hàng, thúc đẩy hợp tác và sáng tạo, linh hoạt nhất khi môi trường kinh doanh thay đổi.</p>\n\n<p>II. THẾ MẠNH VÀ ĐỊNH HƯỚNG CỦA CÔNG TY</p>\n\n<p>Với kim chỉ nam là “Không ngừng phát triển vì khách hàng”, GiantShop đã quy tụ được Ban Lãnh đạo có bề dày kinh nghiệm trong các lĩnh vực điện tử không chỉ mạnh về kinh doanh mà còn mạnh về công nghệ có nhiều tiềm năng phát triển, kết hợp với đội ngũ nhân viên trẻ, năng động và chuyên nghiệp tạo lên thế mạnh nòng cốt của công ty để thực hiện tốt các mục tiêu đề ra.</p>\n\n<p>Hơn nữa, trên cơ sở nguồn lực của công ty và nhu cầu của xã hội, GiantShop lựa chọn phát triển kinh doanh các sản phẩm Điện tử phục vụ nhu cầu thiết yếu của người dân với các sản phẩm đa dạng phong phú mang lại giá trị gia tăng cho người tiêu dùng thông qua các dịch vụ sau bán hàng.</p>\n\n<p>Qua quá trình phát triển, bên cạnh việc thiết lập được một hệ thống đối tác nước trong nước và ngoài đến từ các doanh nghiệp lớn của Korea, Singapore, Trung Quốc, Nhật Bản, có thế mạnh trong lĩnh vực thời trang.&nbsp;...</p>\n\n<p>III. ĐỘI NGŨ NHÂN SỰ</p>\n\n<p>Hội đồng Quản trị do Đại hội đồng cổ đông tín nhiệm bầu ra. Hội đồng quản trị là cơ quan quản trị toàn bộ mọi hoạt động của công ty, các chiến lược, kế hoạch sản xuất và kinh doanh trong nhiệm kỳ của mình.</p>\n\n<p>Ban Giám đốc sẽ chịu trách nhiệm về các mặt hoạt động của công ty trước Hội đồng Quản trị và pháp luật hiện hành, quyết định các chủ trương, chính sách, mục tiêu chiến lược của công ty, đồng thời giám sát và kiểm tra tất cả các hoạt động về sản xuất kinh doanh, đầu tư của công ty.</p>\n\n<p>IV. CAM KẾT</p>\n\n<p>GiantShop nỗ lực hướng tới mục tiêu phát triển bền vững và trở thành thương hiệu hàng đầu về cung cấp các sản phẩm thời trang&nbsp;tại Việt Nam mang tầm cỡ quốc tế. Dựa vào nội lực của chính mình và mở rộng hợp tác với các đối tác trong và ngoài nước chúng tôi cam kết.</p>\n\n<p>Cam kết với đối tác:</p>\n\n<p>- Trở thành đối tác chiến lược trong và ngoài nước trên cơ sở " Hợp tác, phát triển bền vững " hợp tác toàn diện lâu dài nhằm kịp thời đưa những sản phẩm mới nhất và dịch vụ theo các yêu cầu đặc thù của khách hàng.</p>\n\n<p>Cam kết với khách hàng:</p>\n\n<p>- Luôn luôn làm khách hàng hài lòng về các sản phẩm và dịch vụ do GiantShop cung cấp. Sự thành công hài lòng của khách hàng là thước đo uy tín hiệu quả của doanh nghiệp.</p>\n\n<p>- Giá cả hàng hóa luôn hợp lý và được cập nhật chính xác, kịp thời nhất để phục vụ khách hàng tốt nhất.</p>\n\n<p>- Luôn lắng nghe, phân tích và học hỏi từ thị trường trong và ngoài nước. Không bao giờ tự mãn với thành công đã có.</p>\n\n<p>- Luôn nhìn lại mình để phát triển (đạo đức và kiến thức chuyên môn). Mỗi nhân viên là một thương hiệu cá nhân. Mỗi nhân viên là một đại sứ thiện chí của GiantShop đối với thế giới bên ngoài.</p>\n\n<p>&nbsp;V. NHỮNG MỤC TIÊU TƯƠNG LAI</p>\n\n<p>Không ngừng vươn xa, GiantShop sẽ mở rộng Hệ thống về&nbsp;Dụng cụ thể thao&nbsp;tới các Tỉnh thành trong cả nước với tiêu chí phát triển, hiệu quả, bền vững. Sự gia tăng mạnh mẽ cả về nguồn vốn, mô hình và mạng lưới hoạt động cũng như chất lượng nguồn nhân lực không chỉ thể hiện những khởi sắc mà còn là dấu ấn quan trọng trong hoạt động kinh doanh của GiantShop.</p>\n		</div>', '', '2016-01-22 00:00:00', 'Super Admin', '2016-01-22 00:00:00', 'Super Admin', 1, 1, 1),
(2, 6, '6 cách kiếm tiền khi bạn còn ở trung học', 'tin-tuc-1', 'Ở trường trung học, bạn không cần phải lo lắng về công việc vì có hàng tá cách để kiếm tiền, cho dù bạn đang quá bận rộn với việc học tập. Nhưng nếu bạn muốn có một khoản tiền nho nhỏ để mua những thứ mình thích, bạn xứng đáng với những nỗ lực của mình. Dưới đây là một vài cách đơn giản giúp teen kiếm tiền ngay khi còn học trung học.', 'Dưới đây là một vài cách đơn giản giúp teen kiếm tiền ngay khi còn học trung học.\nỞ trường trung học, bạn không cần phải lo lắng về công việc vì có hàng tá cách để kiếm tiền, cho dù bạn đang quá bận rộn với việc học tập. Nhưng nếu bạn muốn có một khoản tiền nho nhỏ để mua những thứ mình thích, bạn xứng đáng với những nỗ lực của mình. Dưới đây là một vài cách đơn giản giúp teen kiếm tiền ngay khi còn học trung học.\nBán đồ ăn vặt tại trường\n\n6 cách kiếm tiền khi bạn còn ở trung học - Ảnh 1.\nThèm ăn vặt là một thói quen và cũng là một “căn bệnh” của lứa tuổi teen. Hầu hết các thanh thiếu niên đều mê đồ ngọt. Bạn có thể kiếm thật nhiều tiền bằng việc bán đồ ăn vặt như trà đá, cafe, nước ngọt, bánh kẹo...tại trường của mình. Hãy tưởng tượng xem, bạn duy trì công việc kinh doanh của mình trong 2-3 tuần, thậm chí 2-3 tháng trước bạn sẽ tiết kiệm được một khoản kha khá.\n\nBán quà tặng online\n\nBạn vẽ đẹp và thích làm bưu thiếp? Hãy mang sở thích của mình tạo thành một thú vui kinh doanh. Ngày lễ Giáng sinh và Tết Dương lịch sắp đến rồi hãy tự tạo ra những tấm bưu thiếp đẹp đẽ, ngọt ngào và rao bán chúng trên forum của trường hoặc chính trang mạng xã hội của bạn. Bạn cũng có thể nhập thêm một số đồ lưu niệm và rao bán chúng. Bán quà tặng online là cách nhanh chóng và dễ dàng để kiếm thêm một số tiền mặt. Vì bạn bán hàng online, nên sẽ giảm thiểu được khá nhiều chi phí, bạn hoàn toàn có thể cạnh tranh với các shop quà tặng khác về giá thành và cả chất lượng. Những mẫu thiếp và quà lưu niệm độc và lạ sẽ thu hút những bạn trẻ hơn bao giờ hết.\n\nBán đồ cũ\n\n6 cách kiếm tiền khi bạn còn ở trung học - Ảnh 2.\nBạn cảm thấy không còn thích thú với những món đồ của mình? Bạn hoàn toàn có thể bán lại với giá thanh lí trên mạng. Ắt hẳn sẽ có rất nhiều người sẽ thích thú và quan tâm đến tủ đồ của bạn vì chất lượng cũng như vì giá cả siêu mềm của chúng. Để quần áo cũ mãi “đắp đống” trong tủ của bạn không phải là một ý kiến hay. Vì sao bạn không bán đồ hoặc tham gia đổi đồ với bạn bè của mình trên mạng. Bạn cũng có thể giúp đỡ người thân của mình bán đồ/ đổi đồ cũ. Ắt hẳn họ cũng sẽ rất vui mừng khi tủ đồ “sắp sập” được dọn dẹp bớt.\n\nDạy gia sư\n\nBạn học giỏi và yêu thích một môn học hoặc nhóm môn học? Đây cũng là cơ hội để bạn kiếm tiền nhờ khả năng của mình. Bạn có thể dạy gia sư cho bất cứ ai: em nhỏ ở gần nhà, các anh em họ, thậm chí cả bạn cùng lớp, cùng khóa với bạn. Và khoản tiền thù lao nho nhỏ trả cho công sức của mình sẽ khiến bạn hết sức hãnh diện và tự hào vì bản thân mình.\n\nLàm việc nhà\n\nVới thời gian rảnh rỗi của bạn, làm một công việc nhà theo giờ là hoàn toàn có thể. Bạn hoàn toàn có thể làm việc nhà từ 2-4 tiếng mỗi ngày và kiếm được một khoản tiền kha khá dựa trên sức lao động của mình. Sau đó, bạn cuối cùng sẽ có thể mua được đôi giày bạn đã nhắm vào cuối tháng!\n\nĐan len hoặc làm đồ thủ công\n\nNếu bạn thấy mình có nhiều thời gian rảnh, hãy làm một công việc vui vẻ và hiệu quả. Đan len cũng là một cách để giết thời gian mà cũng mang lại hiệu quả kinh tế cho bạn. Hãy chịu khó tìm tòi và học hỏi về các kiểu đan khác nhau, cũng như các vật dụng đa dạng từ len như: mũ, khăn, hộp bút, áo, tất, găng tay... Sau đó, bạn có thể chụp ảnh và đăng nó trên Instagram hoặc Facebook để khoe và rao bán với mọi người. Mùa đông đã đến rồi, những đồ len là cần thiết hơn bao giờ hết. \n\nTuy nhiên đừng ngược đãi bản thân bằng việc nhận quá nhiều đơn hàng, hãy cân bằng với việc học của mình. Bạn cũng có thể tham gia một xưởng thủ công mỹ nghệ để làm việc trong thời gian rảnh rỗi của mình. Nếu chăm chỉ và miệt mài, chắc chắn bạn sẽ nhận được thù lao xứng đáng.', 'tin-tuc.jpg', '2016-01-22 00:00:00', 'Super Admin', '2016-01-22 00:00:00', 'Super Admin', 1, 1, 1),
(3, 6, 'Khi chủ shop và shipper phát điên vì khách hàng quái chiêu', 'tin-tuc-2', 'Việc khách hàng "vui tính" vờn chủ shop và shipper như con quay đã không còn là chuyện mới lạ trong giới mua hàng online bây giờ. Rất nhiều khách hàng có khả năng khiến shipper "uất nghẹn" và chủ shop thì phát điên vì những chiêu trò vờn nhau khó hiểu.', 'Việc khách hàng "vui tính" vờn chủ shop và shipper như con quay đã không còn là chuyện mới lạ trong giới mua hàng online bây giờ. Rất nhiều khách hàng có khả năng khiến shipper "uất nghẹn" và chủ shop thì phát điên vì những chiêu trò vờn nhau khó hiểu.\nCơn ác mộng "Chị T.Nguyễn"\n\nĐoạn post của chủ shop có tên L.M tỏ ra bức xúc vì một vị khách có tên T.Nguyễn đang ồn ào trên mạng xã hội mấy hôm nay. Theo như chủ shop và một vài shop bán hàng online khác cũng cùng "chịu trận", thì cái tên T.Nguyễn - vị "thượng đế" ngụ ở khu T18 hoặc T11 trong một khu đô thị ở Hà Nội có lẽ là vị khách rảnh nhất thế giới này. Khi chị này liên tục gọi mua hàng nhưng khi shipper gọi điện thì nhất định không nghe, "bùng" bằng được. Và không chỉ một lần, chị khách này còn gọi nhiều lần khác tiếp tục mua chăn, mua quần áo sale nhưng shipper mang đến thì không nghe, hoặc thử xong lại bảo không lấy, và đương nhiên không trả tiền ship thử với thái độ "đóng sập cửa không nói chuyện".\n\nKhi chủ shop và shipper phát điên vì khách hàng quái chiêu - Ảnh 1.\nKhi chủ shop và shipper phát điên vì khách hàng quái chiêu - Ảnh 2.\nNgười phụ nữ có tên T.Nguyễn đã trở thành "Cơn ác mộng" đối với các chủ shop online\n\nRất nhiều shop khác có vẻ cũng là nạn nhân của chị T.Nguyễn, và họ đã cùng nhau gọi vị khách này là "cơn ác mộng". Chủ shop khác chia sẻ: "Hôm qua nhà chị cũng dính T.Nguyễn. 1 lần báo lấy gói hàng cẩn thận cho ship đi, ship gọi điện bảo không lấy: dập máy. Cũng không báo lại với shop. Hôm qua ship đến cầm đồ vào trong nhà, 1 lúc sau quay ra dí đồ vào tay ship bảo không vừa. Đóng sập cửa không buồn trả tiền ship luôn. Hôm qua bực quá cũng nhắn tin tuyên bố từ nay sẽ vào black list".\n\nMột shop khác: "Mình cũng bị quả T.Nguyễn số điện thoại này. Chuyên gia gọi ship đến không lấy không trả ship. Đến mấy bạn shipper cứ thấy T18 là phải hỏi có phải chị T.Nguyễn không, nếu đúng thì em không nhận đơn này".\n\nCác chủ shop dặn dò nhau cẩn thận rằng nếu đưa hàng cho khách ở hai khu T18 và T11 thì cần phải cẩn thận, kẻo lại gặp chị T "vui tính", chuyên gia gọi mua hàng nhưng lại nhất định không nghe máy hoặc thử xong trả lại đồ - thì coi như vừa đen vừa mất công.\n\nCâu chuyện có thật mà nghe như đùa này, khiến bất cứ ai theo dõi trên mạng xã hội cũng phải kêu trời. Đến hôm nay, chủ shop L.M đã phải đăng ảnh chị T.Nguyễn lên trang bán hàng của mình, để cảnh báo cho các shop khác tránh dính phốt với "vị khách vui tính". Đặc điểm nhận dạng của vị thượng đế là gọi hỏi rất nhiều về các món này món kia, bắt giữ hàng lấy bằng được, nhưng khi shipper giao đồ thì nhất định bật chế độ silent.\n\nCũng có nhiều người đặt câu hỏi về độ "bình thường" của chị khách mang cái tên T.Nguyễn. Vì nếu là người bình thường sẽ không ai rảnh đến mức ấy, chọc tức chủ shop là một chuyện, nhưng hành hạ shipper lại là chuyện thật sự khó đỡ. Chủ shop L.M cho biết, vào ngày mưa gió chị này đòi ship chăn, shipper vất vả đội mưa mang đến, cuối cùng thì nhận lại những hồi chuông dài vô tận. Không chỉ một lần, chị khách đã "vờn" shop tới 3-4 lần với các số điện thoại khác nhau.\n\nNỗi khổ của chủ shop online khi gặp khách quái chiêu\n\nĐây không phải lần đầu tiên trên thị trường mua bán online xuất hiện những vị khách khó hiểu như chị T.Nguyễn, mà giới bán hàng online gọi là "cơn ác mộng". Nhiều chủ shop đã phải thú nhận rằng, việc bán hàng online khiến họ như trải qua một lớp học "tu tại gia", bởi khi gặp khách khó đỡ, thích vờn shipper và chủ shop như chơi trò chơi - thì còn biết làm gì ngoài việc ngậm ngùi coi như mình đen, rồi động viên shipper với các đơn hàng khác.\n\nQuả thật, làm nghề này mới biết, có những vị khách rất rảnh, họ có thể ngồi cả ngày ở nhà, nghĩ ra đủ trò để hành hạ shipper và qua mặt chủ shop. Để làm gì ư? Chắc là để cho vui!\n\nMột quy luật bất thành văn trong giới mua hàng online, là không ship để thử. Chỉ ship khi chắc chắn lấy, hoặc trả tiền nếu ship thử không lấy hàng. Thế nhưng khá nhiều chị em có lẽ vì quá rảnh, nên liên tục order shop cho ship quần áo, giày dép tới, mặc dù trước đó đã hỏi đến nghìn lần về size và kiểu cách, tuy nhiên khi shipper mang hàng đến, họ tìm cách từ chối bằng được. Và đương nhiên không trả tiền ship thử đồ khiến người giao hàng được phen méo mặt.\n\nKhi chủ shop và shipper phát điên vì khách hàng quái chiêu - Ảnh 3.\nHay lại có những vị khách mua son rồi... bùng tiền, và lên facebook khoe được bồ tặng\n\nVì quá uất ức nhưng không thể "làm gì" khách, chủ shop chỉ có thể đăng trên trang bán hàng của mình để mong chia sẻ, và cảnh báo cho các shop khác tránh tình trạng gặp phốt. Chị Hoa Nguyễn, một chủ shop online từng "phát rồ" khi gặp vị khách có ảnh ava facebook long lanh không kém hot girl, nhưng lại "lầy" còn hơn cả cò quay. Số là cô khách này nằng nặc đòi mua 2 bộ đồ nỉ. Đã báo đúng size, còn cẩn thận đo cả số cân nặng và đồng ý mua hàng có tính 30 nghìn tiền ship, nhưng khi shipper mang đến, bạn nữ chỉ thử rồi trả đồ, nhất định không lấy cũng không trả tiền ship.\n\nShipper có năn nỉ thế nào, cô nàng này cũng nhất định không lấy mà bảo "Chất vải không như trên ảnh nên không mua. Đoạn đường có tí cũng đòi 30 nghìn". "Đoạn đường có tí" ở đây là từ phố Hàng Lược đến Xuân Thủy - Cầu Giấy trong thời tiết mưa phùn gió lạnh.\n\nShipper là sinh viên, hiền lành không cãi trả lại cô hot girl trên mạng đang gân cổ lên... chửi chủ shop bán hàng không đúng như hình, còn đóng sầm cửa trước mặt và dọa cho người đến "xử" chủ shop. Cậu shipper đành mang đồ về và được chị Hoa an ủi bằng cách bù lại tiền ship, coi như chuyện đen đủi tận mạng.\n\n2 tuần sau, cô hot girl lại vui tính, đặt đúng 2 bộ nỉ ấy bằng một số điện thoại khác nhưng địa chỉ Cầu Giấy thì y hệt. Tất nhiên, chủ shop đã cho số điện thoại này vào black list.\n\nHay mới đây, một cô gái bán son trên mạng phải lên cơn tăng xông vì khách mua 3 cây son Bourjois của Pháp nhưng... bùng tiền. Buồn cười hơn, vị khách này lại lên Facebook post ảnh 3 cây son với nội dung được bồ tặng son "Quan tâm em, hiểu cả suy nghĩ em thích" (!?).\n\nHậu quả mà những vụ khách hàng quái chiêu đem lại, có thể không nặng giá trị vật chất, gây tổn thất lớn cho cửa hàng. Nhưng đã đem đến tâm lý ức chế, mà nhiều chủ shop tâm sự rằng họ phải có tinh thần thép mới không phát điên ngay lúc ấy. Hơn nữa, việc đặt hàng bằng được để thành đơn hàng đi ship - như một cách hành hạ người khác giữa trời mưa gió, đường xa xôi, thậm chí đi chục cây số để rồi gọi không nghe máy, không trả tiền ship... rõ ràng không phải một trò đùa đem lại niềm vui, nhưng không hiểu sao lại được một vài khách hàng quái chiêu lấy ra dùng đi dùng lại khiến người khác phải bất bình đến thế!', 'tin-tuc.jpg', '2016-01-22 00:00:00', 'Super Admin', '2016-01-22 00:00:00', 'Super Admin', 1, 1, 1),
(4, 4, 'Liên hệ', 'lien-he', '', '', '', '2016-01-22 00:00:00', 'Super Admin', '2016-01-22 00:00:00', 'Super Admin', 1, 1, 1),
(5, 5, 'Làm website bán hàng 1', 'lam-website-ban-hang-1', 'Nếu bây giờ bạn đang ngồi trước máy tính hay lên mạng bằng các thiết bị khác, bạn có thể tìm kiếm để biết được con số doanh thu đang được tạo ra bởi các trang web', 'Nếu bây giờ bạn đang ngồi trước máy tính hay lên mạng bằng các thiết bị khác, bạn có thể tìm kiếm để biết được con số doanh thu đang được tạo ra bởi các trang web. Bạn có thể bắt đầu bằng cách thiết kế web bán hàng của riêng mình và bán một hay một số sản phẩm mà bạn tự tạo ra hay thậm chí là mua buôn bán lại sản phẩm của những công ty khác. Kinh doanh online hiện đang trở thành một xu hướng bán hàng hiện đại thu hút được rất nhiều người. Thống kế cho thấy có hơn 191 triệu người thực hiện mua hàng trên mạng tại Mỹ và hơn 87% dân số thế giới đã làm điều đó. Có thể nói, với việc xây dựng một website bán hàng sử dụng dịch vụ của các công ty thiết kế web hàng đầu Việt Nam, sản phẩm của bạn sẽ có thể tiếp cận được một thị trường khách hàng tiềm năng rộng lớn.     Top 9 ngành nghề kinh doanh “hot” nhất trong năm 2015 8  Hình 3: Top 9 ngành nghề kinh doanh “hot” nhất trong năm 2015     Ngoài ra, bạn cũng có thể kinh doanh dịch vụ thiết kế website cho các doanh nghiệp khác bởi chắc chắn một điều rằng, xu hướng này sẽ còn phát triển hơn nữa trong năm 2015 sắp tới đây. Nhưng cho dù là bán hàng hay thiết kế website, bạn cũng đều cần tham khảo một số doanh nghiệp kinh doanh trong lĩnh vực này để học hỏi kinh nghiệm và xem xem họ làm như thế nào. Điển hình ở Việt Nam là nhà cung cấp dịch vụ thiết kế website hàng đầu Bizweb. Với uy tín và sự chuyên nghiệp của mình, Bizweb đã giúp hàng nghìn các doanh nghiệp/cửa hàng khác nhau khởi nghiệp kinh doanh một cách thuận lợi và hiệu quả nhất.', 'thiet-ke-website.jpg', '2016-01-22 00:00:00', 'Super Admin', '2016-01-22 00:00:00', 'Super Admin', 1, 1, 1),
(38, 6, 'Du khách nườm nượp đổ về Sa Pa “săn” tuyết', 'tin-tuc-3', 'Chiều tối nay (23.1), rất đông du khách đã bắt đầu đổ về Sa Pa (Lào Cai) để “săn” đón tuyết.', ' Ông Lưu Minh Hải - Giám đốc Trung tâm dự báo khí tượng thủy văn Lào Cai cho biết, đến 17h chiều nay, nhiệt độ ở Sa Pa đã xuống đến 2 độ C, trời mưa nặng hạt. Dự báo, đêm nay có thể xuất hiện mưa tuyết tại Sa Pa và một số huyện vùng cao của Lào Cai.  “Nhiệt độ thay đổi rất đột ngột, so sánh cùng thời điểm ngày hôm qua, nhiệt độ chênh tới hơn 11 độ C. Đêm nay, nhiệt độ sẽ xuống -2  đến -3 độ C, Lào Cai sẽ xuất hiện băng giá trên diện rộng. Hiện tại, trời vẫn đang mưa và nhiều sương mù. Nếu tạnh mưa, rất có thể đêm nay sẽ có mưa tuyết”, ông Hải cho hay.  Theo ghi nhận của phóng viên, chiều nay (23.1), du khách từ nhiều nơi đã bắt đầu đổ về thị trấn Sa Pa để “săn” tuyết. Các con đường quanh thị trấn chật kín xe ô tô đỗ.  Bạn Nguyễn Thị Trang (sinh viên năm 3, Đại học Quốc gia Hà Nội) chia sẻ: “Được nhìn tuyết qua ti vi nhiều rồi nhưng em chưa bao giờ được chứng kiến tận mắt. Biết dịp này khả năng có tuyết rơi nên em rủ một số bạn bè lên đây chờ”.  Nhân dịp cuối tuần, gia đình anh Hoàng Văn Thanh (Hoài Đức, Hà Nội) cũng tranh thủ lên Sa Pa để tham quan và chờ tuyết. Anh chia sẻ: “Mục đích chính của tôi là đưa vợ con đi tham quan, thư giãn cuối tuần kết hợp xem tuyết. Tôi cũng đang háo hức nhìn xem tuyết nó như thế nào vì chưa được trông thấy bao giờ”.  Nhóm bạn 4 người từ TP. Hồ Chí Minh cũng mới đặt chân lên đến Sa Pa. Bạn Thu Hương chia sẻ: “Bọn em ở trong nam chưa biết đến lạnh là gì chứ chưa nói đến tuyết. Đợt này, nghe nói có tuyết nên nhóm chúng em quyết tâm bay ra Hà Nội và bắt xe khách lên Sa Pa để ngắm tuyết”.  Hiện tại, càng về đêm nhiệt độ ở Sa Pa càng xuống thấp. Nhiệt độ ngoài trời ước chừng khoảng 1-2 độ C, có mưa và sương mù dày đặc.', 'tin-tuc.jpg', '2016-01-22 00:00:00', 'Super Admin', '2016-01-22 00:00:00', 'Super Admin', 1, 1, 1),
(39, 6, 'Du khách nườm nượp đổ về Sa Pa “săn” tuyết', 'tin-tuc-4', 'Chiều tối nay (23.1), rất đông du khách đã bắt đầu đổ về Sa Pa (Lào Cai) để “săn” đón tuyết.', ' Ông Lưu Minh Hải - Giám đốc Trung tâm dự báo khí tượng thủy văn Lào Cai cho biết, đến 17h chiều nay, nhiệt độ ở Sa Pa đã xuống đến 2 độ C, trời mưa nặng hạt. Dự báo, đêm nay có thể xuất hiện mưa tuyết tại Sa Pa và một số huyện vùng cao của Lào Cai.  “Nhiệt độ thay đổi rất đột ngột, so sánh cùng thời điểm ngày hôm qua, nhiệt độ chênh tới hơn 11 độ C. Đêm nay, nhiệt độ sẽ xuống -2  đến -3 độ C, Lào Cai sẽ xuất hiện băng giá trên diện rộng. Hiện tại, trời vẫn đang mưa và nhiều sương mù. Nếu tạnh mưa, rất có thể đêm nay sẽ có mưa tuyết”, ông Hải cho hay.  Theo ghi nhận của phóng viên, chiều nay (23.1), du khách từ nhiều nơi đã bắt đầu đổ về thị trấn Sa Pa để “săn” tuyết. Các con đường quanh thị trấn chật kín xe ô tô đỗ.  Bạn Nguyễn Thị Trang (sinh viên năm 3, Đại học Quốc gia Hà Nội) chia sẻ: “Được nhìn tuyết qua ti vi nhiều rồi nhưng em chưa bao giờ được chứng kiến tận mắt. Biết dịp này khả năng có tuyết rơi nên em rủ một số bạn bè lên đây chờ”.  Nhân dịp cuối tuần, gia đình anh Hoàng Văn Thanh (Hoài Đức, Hà Nội) cũng tranh thủ lên Sa Pa để tham quan và chờ tuyết. Anh chia sẻ: “Mục đích chính của tôi là đưa vợ con đi tham quan, thư giãn cuối tuần kết hợp xem tuyết. Tôi cũng đang háo hức nhìn xem tuyết nó như thế nào vì chưa được trông thấy bao giờ”.  Nhóm bạn 4 người từ TP. Hồ Chí Minh cũng mới đặt chân lên đến Sa Pa. Bạn Thu Hương chia sẻ: “Bọn em ở trong nam chưa biết đến lạnh là gì chứ chưa nói đến tuyết. Đợt này, nghe nói có tuyết nên nhóm chúng em quyết tâm bay ra Hà Nội và bắt xe khách lên Sa Pa để ngắm tuyết”.  Hiện tại, càng về đêm nhiệt độ ở Sa Pa càng xuống thấp. Nhiệt độ ngoài trời ước chừng khoảng 1-2 độ C, có mưa và sương mù dày đặc.', 'tin-tuc.jpg', '2016-01-22 00:00:00', 'Super Admin', '2016-01-22 00:00:00', 'Super Admin', 1, 1, 1),
(40, 6, 'Cuối tuần vàng tăng, dầu thô leo dốc', 'tin-tuc-5', 'Mở phiên giao dịch cuối tuần, sáng nay (23/1), giá vàng có phiên tăng nhẹ, còn tỷ giá USD tiếp tục ổn định. Trong khi đó, giá dầu thô thế giới có phiên tăng giá hơn 9%, để kết thúc chuỗi ngày ảm đạm chỉ giảm và giảm.', 'Thời điểm 8h30, tại Hà Nội, Tập đoàn DOJI niêm yết giá vàng miếng SJC ở mức 32,77 - 32,85 triệu đồng/lượng (mua – bán), tăng 30.000 mỗi lượng so với giá cuối ngày hôm qua.  Cùng thời điểm, tại thị trường TP.HCM, Công ty SJC niêm yết giá vàng miếng cùng thương hiệu ở mức 32,63 – 32,9 triệu đồng/lượng (mua – bán), tăng 30.000 đồng mỗi lượng so với giá cuối ngày hôm qua.   Cuối tuần vàng tăng, dầu thô leo dốc - 1  Ảnh minh họa  Trên thế giới, giá vàng bán ra sáng nay biến động không đáng kể. Cụ thể, hiện vàng thế giới bán ra ở mức 1.097 USD/oz, giảm 1 USD mỗi ounce so với giá hôm qua.  Như vậy, hiện giá vàng trong nước vẫn cao hơn vàng thế giới 3,2 triệu đồng mỗi lượng (quy đổi theo tỷ giá liên ngân hàng).  Trên thị trường tỷ giá, tỷ giá trung tâm hôm nay được Ngân hàng Nhà nước công bố ở mức 21.908 VNĐ đổi 1 USD, bằng tỷ giá trung tâm hôm qua.  Tương tự, tỷ giá USD tại các ngân hàng thương mại cũng có phiên ổn định. Cụ thể, Ngân hàng Vietcombank hiện niêm yết tỷ giá USD ở mức 22.360 – 22.430 đồng/USD (mua – bán), bằng tỷ giá hôm qua.  Tại Ngân hàng ACB, hiện ngân hàng này niêm yết tỷ giá ở mức 22.350 - 22.430 đồng/USD (mua – bán), bằng tỷ giá hôm qua.  Trên thị trường dầu thô, giá dầu thô thế giới có phiên tăng mạnh, với mức tăng hơn 9% để vượt qua mốc 30 USD mỗi thùng. Cụ thể, giá dầu Brent ở mức 32,18 USD/thùng (tăng 2,93 USD), dầu WTI ở mức 32,19 USD/thùng (tăng 2,66 USD).', 'tin-tuc.jpg', '2016-01-22 00:00:00', 'Super Admin', '2016-01-22 00:00:00', 'Super Admin', 1, 1, 1),
(41, 6, 'Du khách nườm nượp đổ về Sa Pa “săn” tuyết', 'tin-tuc-6', 'Chiều tối nay (23.1), rất đông du khách đã bắt đầu đổ về Sa Pa (Lào Cai) để “săn” đón tuyết.', ' Ông Lưu Minh Hải - Giám đốc Trung tâm dự báo khí tượng thủy văn Lào Cai cho biết, đến 17h chiều nay, nhiệt độ ở Sa Pa đã xuống đến 2 độ C, trời mưa nặng hạt. Dự báo, đêm nay có thể xuất hiện mưa tuyết tại Sa Pa và một số huyện vùng cao của Lào Cai.  “Nhiệt độ thay đổi rất đột ngột, so sánh cùng thời điểm ngày hôm qua, nhiệt độ chênh tới hơn 11 độ C. Đêm nay, nhiệt độ sẽ xuống -2  đến -3 độ C, Lào Cai sẽ xuất hiện băng giá trên diện rộng. Hiện tại, trời vẫn đang mưa và nhiều sương mù. Nếu tạnh mưa, rất có thể đêm nay sẽ có mưa tuyết”, ông Hải cho hay.  Theo ghi nhận của phóng viên, chiều nay (23.1), du khách từ nhiều nơi đã bắt đầu đổ về thị trấn Sa Pa để “săn” tuyết. Các con đường quanh thị trấn chật kín xe ô tô đỗ.  Bạn Nguyễn Thị Trang (sinh viên năm 3, Đại học Quốc gia Hà Nội) chia sẻ: “Được nhìn tuyết qua ti vi nhiều rồi nhưng em chưa bao giờ được chứng kiến tận mắt. Biết dịp này khả năng có tuyết rơi nên em rủ một số bạn bè lên đây chờ”.  Nhân dịp cuối tuần, gia đình anh Hoàng Văn Thanh (Hoài Đức, Hà Nội) cũng tranh thủ lên Sa Pa để tham quan và chờ tuyết. Anh chia sẻ: “Mục đích chính của tôi là đưa vợ con đi tham quan, thư giãn cuối tuần kết hợp xem tuyết. Tôi cũng đang háo hức nhìn xem tuyết nó như thế nào vì chưa được trông thấy bao giờ”.  Nhóm bạn 4 người từ TP. Hồ Chí Minh cũng mới đặt chân lên đến Sa Pa. Bạn Thu Hương chia sẻ: “Bọn em ở trong nam chưa biết đến lạnh là gì chứ chưa nói đến tuyết. Đợt này, nghe nói có tuyết nên nhóm chúng em quyết tâm bay ra Hà Nội và bắt xe khách lên Sa Pa để ngắm tuyết”.  Hiện tại, càng về đêm nhiệt độ ở Sa Pa càng xuống thấp. Nhiệt độ ngoài trời ước chừng khoảng 1-2 độ C, có mưa và sương mù dày đặc.', 'tin-tuc.jpg', '2016-01-22 00:00:00', 'Super Admin', '2016-01-22 00:00:00', 'Super Admin', 1, 1, 1),
(42, 6, 'Cuối tuần vàng tăng, dầu thô leo dốc', 'tin-tuc-7', 'Mở phiên giao dịch cuối tuần, sáng nay (23/1), giá vàng có phiên tăng nhẹ, còn tỷ giá USD tiếp tục ổn định. Trong khi đó, giá dầu thô thế giới có phiên tăng giá hơn 9%, để kết thúc chuỗi ngày ảm đạm chỉ giảm và giảm.', 'Thời điểm 8h30, tại Hà Nội, Tập đoàn DOJI niêm yết giá vàng miếng SJC ở mức 32,77 - 32,85 triệu đồng/lượng (mua – bán), tăng 30.000 mỗi lượng so với giá cuối ngày hôm qua.  Cùng thời điểm, tại thị trường TP.HCM, Công ty SJC niêm yết giá vàng miếng cùng thương hiệu ở mức 32,63 – 32,9 triệu đồng/lượng (mua – bán), tăng 30.000 đồng mỗi lượng so với giá cuối ngày hôm qua.   Cuối tuần vàng tăng, dầu thô leo dốc - 1  Ảnh minh họa  Trên thế giới, giá vàng bán ra sáng nay biến động không đáng kể. Cụ thể, hiện vàng thế giới bán ra ở mức 1.097 USD/oz, giảm 1 USD mỗi ounce so với giá hôm qua.  Như vậy, hiện giá vàng trong nước vẫn cao hơn vàng thế giới 3,2 triệu đồng mỗi lượng (quy đổi theo tỷ giá liên ngân hàng).  Trên thị trường tỷ giá, tỷ giá trung tâm hôm nay được Ngân hàng Nhà nước công bố ở mức 21.908 VNĐ đổi 1 USD, bằng tỷ giá trung tâm hôm qua.  Tương tự, tỷ giá USD tại các ngân hàng thương mại cũng có phiên ổn định. Cụ thể, Ngân hàng Vietcombank hiện niêm yết tỷ giá USD ở mức 22.360 – 22.430 đồng/USD (mua – bán), bằng tỷ giá hôm qua.  Tại Ngân hàng ACB, hiện ngân hàng này niêm yết tỷ giá ở mức 22.350 - 22.430 đồng/USD (mua – bán), bằng tỷ giá hôm qua.  Trên thị trường dầu thô, giá dầu thô thế giới có phiên tăng mạnh, với mức tăng hơn 9% để vượt qua mốc 30 USD mỗi thùng. Cụ thể, giá dầu Brent ở mức 32,18 USD/thùng (tăng 2,93 USD), dầu WTI ở mức 32,19 USD/thùng (tăng 2,66 USD).', 'tin-tuc.jpg', '2016-01-22 00:00:00', 'Super Admin', '2016-01-22 00:00:00', 'Super Admin', 1, 1, 1),
(43, 6, 'Cuối tuần vàng tăng, dầu thô leo dốc', 'tin-tuc-8', 'Mở phiên giao dịch cuối tuần, sáng nay (23/1), giá vàng có phiên tăng nhẹ, còn tỷ giá USD tiếp tục ổn định. Trong khi đó, giá dầu thô thế giới có phiên tăng giá hơn 9%, để kết thúc chuỗi ngày ảm đạm chỉ giảm và giảm.', 'Thời điểm 8h30, tại Hà Nội, Tập đoàn DOJI niêm yết giá vàng miếng SJC ở mức 32,77 - 32,85 triệu đồng/lượng (mua – bán), tăng 30.000 mỗi lượng so với giá cuối ngày hôm qua.  Cùng thời điểm, tại thị trường TP.HCM, Công ty SJC niêm yết giá vàng miếng cùng thương hiệu ở mức 32,63 – 32,9 triệu đồng/lượng (mua – bán), tăng 30.000 đồng mỗi lượng so với giá cuối ngày hôm qua.   Cuối tuần vàng tăng, dầu thô leo dốc - 1  Ảnh minh họa  Trên thế giới, giá vàng bán ra sáng nay biến động không đáng kể. Cụ thể, hiện vàng thế giới bán ra ở mức 1.097 USD/oz, giảm 1 USD mỗi ounce so với giá hôm qua.  Như vậy, hiện giá vàng trong nước vẫn cao hơn vàng thế giới 3,2 triệu đồng mỗi lượng (quy đổi theo tỷ giá liên ngân hàng).  Trên thị trường tỷ giá, tỷ giá trung tâm hôm nay được Ngân hàng Nhà nước công bố ở mức 21.908 VNĐ đổi 1 USD, bằng tỷ giá trung tâm hôm qua.  Tương tự, tỷ giá USD tại các ngân hàng thương mại cũng có phiên ổn định. Cụ thể, Ngân hàng Vietcombank hiện niêm yết tỷ giá USD ở mức 22.360 – 22.430 đồng/USD (mua – bán), bằng tỷ giá hôm qua.  Tại Ngân hàng ACB, hiện ngân hàng này niêm yết tỷ giá ở mức 22.350 - 22.430 đồng/USD (mua – bán), bằng tỷ giá hôm qua.  Trên thị trường dầu thô, giá dầu thô thế giới có phiên tăng mạnh, với mức tăng hơn 9% để vượt qua mốc 30 USD mỗi thùng. Cụ thể, giá dầu Brent ở mức 32,18 USD/thùng (tăng 2,93 USD), dầu WTI ở mức 32,19 USD/thùng (tăng 2,66 USD).', 'tin-tuc.jpg', '2016-01-22 00:00:00', 'Super Admin', '2016-01-22 00:00:00', 'Super Admin', 1, 1, 1),
(44, 6, 'Cuối tuần vàng tăng, dầu thô leo dốc', 'tin-tuc-9', 'Mở phiên giao dịch cuối tuần, sáng nay (23/1), giá vàng có phiên tăng nhẹ, còn tỷ giá USD tiếp tục ổn định. Trong khi đó, giá dầu thô thế giới có phiên tăng giá hơn 9%, để kết thúc chuỗi ngày ảm đạm chỉ giảm và giảm.', 'Thời điểm 8h30, tại Hà Nội, Tập đoàn DOJI niêm yết giá vàng miếng SJC ở mức 32,77 - 32,85 triệu đồng/lượng (mua – bán), tăng 30.000 mỗi lượng so với giá cuối ngày hôm qua.  Cùng thời điểm, tại thị trường TP.HCM, Công ty SJC niêm yết giá vàng miếng cùng thương hiệu ở mức 32,63 – 32,9 triệu đồng/lượng (mua – bán), tăng 30.000 đồng mỗi lượng so với giá cuối ngày hôm qua.   Cuối tuần vàng tăng, dầu thô leo dốc - 1  Ảnh minh họa  Trên thế giới, giá vàng bán ra sáng nay biến động không đáng kể. Cụ thể, hiện vàng thế giới bán ra ở mức 1.097 USD/oz, giảm 1 USD mỗi ounce so với giá hôm qua.  Như vậy, hiện giá vàng trong nước vẫn cao hơn vàng thế giới 3,2 triệu đồng mỗi lượng (quy đổi theo tỷ giá liên ngân hàng).  Trên thị trường tỷ giá, tỷ giá trung tâm hôm nay được Ngân hàng Nhà nước công bố ở mức 21.908 VNĐ đổi 1 USD, bằng tỷ giá trung tâm hôm qua.  Tương tự, tỷ giá USD tại các ngân hàng thương mại cũng có phiên ổn định. Cụ thể, Ngân hàng Vietcombank hiện niêm yết tỷ giá USD ở mức 22.360 – 22.430 đồng/USD (mua – bán), bằng tỷ giá hôm qua.  Tại Ngân hàng ACB, hiện ngân hàng này niêm yết tỷ giá ở mức 22.350 - 22.430 đồng/USD (mua – bán), bằng tỷ giá hôm qua.  Trên thị trường dầu thô, giá dầu thô thế giới có phiên tăng mạnh, với mức tăng hơn 9% để vượt qua mốc 30 USD mỗi thùng. Cụ thể, giá dầu Brent ở mức 32,18 USD/thùng (tăng 2,93 USD), dầu WTI ở mức 32,19 USD/thùng (tăng 2,66 USD).', 'tin-tuc.jpg', '2016-01-22 00:00:00', 'Super Admin', '2016-01-22 00:00:00', 'Super Admin', 1, 1, 1),
(45, 5, 'Làm website bán hàng 2', 'lam-website-ban-hang-2', 'Nếu bây giờ bạn đang ngồi trước máy tính hay lên mạng bằng các thiết bị khác, bạn có thể tìm kiếm để biết được con số doanh thu đang được tạo ra bởi các trang web', 'Nếu bây giờ bạn đang ngồi trước máy tính hay lên mạng bằng các thiết bị khác, bạn có thể tìm kiếm để biết được con số doanh thu đang được tạo ra bởi các trang web. Bạn có thể bắt đầu bằng cách thiết kế web bán hàng của riêng mình và bán một hay một số sản phẩm mà bạn tự tạo ra hay thậm chí là mua buôn bán lại sản phẩm của những công ty khác. Kinh doanh online hiện đang trở thành một xu hướng bán hàng hiện đại thu hút được rất nhiều người. Thống kế cho thấy có hơn 191 triệu người thực hiện mua hàng trên mạng tại Mỹ và hơn 87% dân số thế giới đã làm điều đó. Có thể nói, với việc xây dựng một website bán hàng sử dụng dịch vụ của các công ty thiết kế web hàng đầu Việt Nam, sản phẩm của bạn sẽ có thể tiếp cận được một thị trường khách hàng tiềm năng rộng lớn.     Top 9 ngành nghề kinh doanh “hot” nhất trong năm 2015 8  Hình 3: Top 9 ngành nghề kinh doanh “hot” nhất trong năm 2015     Ngoài ra, bạn cũng có thể kinh doanh dịch vụ thiết kế website cho các doanh nghiệp khác bởi chắc chắn một điều rằng, xu hướng này sẽ còn phát triển hơn nữa trong năm 2015 sắp tới đây. Nhưng cho dù là bán hàng hay thiết kế website, bạn cũng đều cần tham khảo một số doanh nghiệp kinh doanh trong lĩnh vực này để học hỏi kinh nghiệm và xem xem họ làm như thế nào. Điển hình ở Việt Nam là nhà cung cấp dịch vụ thiết kế website hàng đầu Bizweb. Với uy tín và sự chuyên nghiệp của mình, Bizweb đã giúp hàng nghìn các doanh nghiệp/cửa hàng khác nhau khởi nghiệp kinh doanh một cách thuận lợi và hiệu quả nhất.', 'thiet-ke-website.jpg', '2016-01-22 00:00:00', 'Super Admin', '2016-01-22 00:00:00', 'Super Admin', 1, 1, 1),
(46, 5, 'Làm website bán hàng 3', 'lam-website-ban-hang-3', 'Nếu bây giờ bạn đang ngồi trước máy tính hay lên mạng bằng các thiết bị khác, bạn có thể tìm kiếm để biết được con số doanh thu đang được tạo ra bởi các trang web', 'Nếu bây giờ bạn đang ngồi trước máy tính hay lên mạng bằng các thiết bị khác, bạn có thể tìm kiếm để biết được con số doanh thu đang được tạo ra bởi các trang web. Bạn có thể bắt đầu bằng cách thiết kế web bán hàng của riêng mình và bán một hay một số sản phẩm mà bạn tự tạo ra hay thậm chí là mua buôn bán lại sản phẩm của những công ty khác. Kinh doanh online hiện đang trở thành một xu hướng bán hàng hiện đại thu hút được rất nhiều người. Thống kế cho thấy có hơn 191 triệu người thực hiện mua hàng trên mạng tại Mỹ và hơn 87% dân số thế giới đã làm điều đó. Có thể nói, với việc xây dựng một website bán hàng sử dụng dịch vụ của các công ty thiết kế web hàng đầu Việt Nam, sản phẩm của bạn sẽ có thể tiếp cận được một thị trường khách hàng tiềm năng rộng lớn.     Top 9 ngành nghề kinh doanh “hot” nhất trong năm 2015 8  Hình 3: Top 9 ngành nghề kinh doanh “hot” nhất trong năm 2015     Ngoài ra, bạn cũng có thể kinh doanh dịch vụ thiết kế website cho các doanh nghiệp khác bởi chắc chắn một điều rằng, xu hướng này sẽ còn phát triển hơn nữa trong năm 2015 sắp tới đây. Nhưng cho dù là bán hàng hay thiết kế website, bạn cũng đều cần tham khảo một số doanh nghiệp kinh doanh trong lĩnh vực này để học hỏi kinh nghiệm và xem xem họ làm như thế nào. Điển hình ở Việt Nam là nhà cung cấp dịch vụ thiết kế website hàng đầu Bizweb. Với uy tín và sự chuyên nghiệp của mình, Bizweb đã giúp hàng nghìn các doanh nghiệp/cửa hàng khác nhau khởi nghiệp kinh doanh một cách thuận lợi và hiệu quả nhất.', 'thiet-ke-website.jpg', '2016-01-22 00:00:00', 'Super Admin', '2016-01-22 00:00:00', 'Super Admin', 1, 1, 1),
(47, 5, 'Làm website bán hàng 4', 'lam-website-ban-hang-4', 'Nếu bây giờ bạn đang ngồi trước máy tính hay lên mạng bằng các thiết bị khác, bạn có thể tìm kiếm để biết được con số doanh thu đang được tạo ra bởi các trang web', 'Nếu bây giờ bạn đang ngồi trước máy tính hay lên mạng bằng các thiết bị khác, bạn có thể tìm kiếm để biết được con số doanh thu đang được tạo ra bởi các trang web. Bạn có thể bắt đầu bằng cách thiết kế web bán hàng của riêng mình và bán một hay một số sản phẩm mà bạn tự tạo ra hay thậm chí là mua buôn bán lại sản phẩm của những công ty khác. Kinh doanh online hiện đang trở thành một xu hướng bán hàng hiện đại thu hút được rất nhiều người. Thống kế cho thấy có hơn 191 triệu người thực hiện mua hàng trên mạng tại Mỹ và hơn 87% dân số thế giới đã làm điều đó. Có thể nói, với việc xây dựng một website bán hàng sử dụng dịch vụ của các công ty thiết kế web hàng đầu Việt Nam, sản phẩm của bạn sẽ có thể tiếp cận được một thị trường khách hàng tiềm năng rộng lớn.     Top 9 ngành nghề kinh doanh “hot” nhất trong năm 2015 8  Hình 3: Top 9 ngành nghề kinh doanh “hot” nhất trong năm 2015     Ngoài ra, bạn cũng có thể kinh doanh dịch vụ thiết kế website cho các doanh nghiệp khác bởi chắc chắn một điều rằng, xu hướng này sẽ còn phát triển hơn nữa trong năm 2015 sắp tới đây. Nhưng cho dù là bán hàng hay thiết kế website, bạn cũng đều cần tham khảo một số doanh nghiệp kinh doanh trong lĩnh vực này để học hỏi kinh nghiệm và xem xem họ làm như thế nào. Điển hình ở Việt Nam là nhà cung cấp dịch vụ thiết kế website hàng đầu Bizweb. Với uy tín và sự chuyên nghiệp của mình, Bizweb đã giúp hàng nghìn các doanh nghiệp/cửa hàng khác nhau khởi nghiệp kinh doanh một cách thuận lợi và hiệu quả nhất.', 'thiet-ke-website.jpg', '2016-01-22 00:00:00', 'Super Admin', '2016-01-22 00:00:00', 'Super Admin', 1, 1, 1),
(48, 5, 'Làm website bán hàng 5', 'lam-website-ban-hang-5', 'Nếu bây giờ bạn đang ngồi trước máy tính hay lên mạng bằng các thiết bị khác, bạn có thể tìm kiếm để biết được con số doanh thu đang được tạo ra bởi các trang web', 'Nếu bây giờ bạn đang ngồi trước máy tính hay lên mạng bằng các thiết bị khác, bạn có thể tìm kiếm để biết được con số doanh thu đang được tạo ra bởi các trang web. Bạn có thể bắt đầu bằng cách thiết kế web bán hàng của riêng mình và bán một hay một số sản phẩm mà bạn tự tạo ra hay thậm chí là mua buôn bán lại sản phẩm của những công ty khác. Kinh doanh online hiện đang trở thành một xu hướng bán hàng hiện đại thu hút được rất nhiều người. Thống kế cho thấy có hơn 191 triệu người thực hiện mua hàng trên mạng tại Mỹ và hơn 87% dân số thế giới đã làm điều đó. Có thể nói, với việc xây dựng một website bán hàng sử dụng dịch vụ của các công ty thiết kế web hàng đầu Việt Nam, sản phẩm của bạn sẽ có thể tiếp cận được một thị trường khách hàng tiềm năng rộng lớn.     Top 9 ngành nghề kinh doanh “hot” nhất trong năm 2015 8  Hình 3: Top 9 ngành nghề kinh doanh “hot” nhất trong năm 2015     Ngoài ra, bạn cũng có thể kinh doanh dịch vụ thiết kế website cho các doanh nghiệp khác bởi chắc chắn một điều rằng, xu hướng này sẽ còn phát triển hơn nữa trong năm 2015 sắp tới đây. Nhưng cho dù là bán hàng hay thiết kế website, bạn cũng đều cần tham khảo một số doanh nghiệp kinh doanh trong lĩnh vực này để học hỏi kinh nghiệm và xem xem họ làm như thế nào. Điển hình ở Việt Nam là nhà cung cấp dịch vụ thiết kế website hàng đầu Bizweb. Với uy tín và sự chuyên nghiệp của mình, Bizweb đã giúp hàng nghìn các doanh nghiệp/cửa hàng khác nhau khởi nghiệp kinh doanh một cách thuận lợi và hiệu quả nhất.', 'thiet-ke-website.jpg', '2016-01-22 00:00:00', 'Super Admin', '2016-01-22 00:00:00', 'Super Admin', 1, 1, 1),
(49, 5, 'Làm website bán hàng 6', 'lam-website-ban-hang-6', 'Nếu bây giờ bạn đang ngồi trước máy tính hay lên mạng bằng các thiết bị khác, bạn có thể tìm kiếm để biết được con số doanh thu đang được tạo ra bởi các trang web', 'Nếu bây giờ bạn đang ngồi trước máy tính hay lên mạng bằng các thiết bị khác, bạn có thể tìm kiếm để biết được con số doanh thu đang được tạo ra bởi các trang web. Bạn có thể bắt đầu bằng cách thiết kế web bán hàng của riêng mình và bán một hay một số sản phẩm mà bạn tự tạo ra hay thậm chí là mua buôn bán lại sản phẩm của những công ty khác. Kinh doanh online hiện đang trở thành một xu hướng bán hàng hiện đại thu hút được rất nhiều người. Thống kế cho thấy có hơn 191 triệu người thực hiện mua hàng trên mạng tại Mỹ và hơn 87% dân số thế giới đã làm điều đó. Có thể nói, với việc xây dựng một website bán hàng sử dụng dịch vụ của các công ty thiết kế web hàng đầu Việt Nam, sản phẩm của bạn sẽ có thể tiếp cận được một thị trường khách hàng tiềm năng rộng lớn.     Top 9 ngành nghề kinh doanh “hot” nhất trong năm 2015 8  Hình 3: Top 9 ngành nghề kinh doanh “hot” nhất trong năm 2015     Ngoài ra, bạn cũng có thể kinh doanh dịch vụ thiết kế website cho các doanh nghiệp khác bởi chắc chắn một điều rằng, xu hướng này sẽ còn phát triển hơn nữa trong năm 2015 sắp tới đây. Nhưng cho dù là bán hàng hay thiết kế website, bạn cũng đều cần tham khảo một số doanh nghiệp kinh doanh trong lĩnh vực này để học hỏi kinh nghiệm và xem xem họ làm như thế nào. Điển hình ở Việt Nam là nhà cung cấp dịch vụ thiết kế website hàng đầu Bizweb. Với uy tín và sự chuyên nghiệp của mình, Bizweb đã giúp hàng nghìn các doanh nghiệp/cửa hàng khác nhau khởi nghiệp kinh doanh một cách thuận lợi và hiệu quả nhất.', 'thiet-ke-website.jpg', '2016-01-22 00:00:00', 'Super Admin', '2016-01-22 00:00:00', 'Super Admin', 1, 1, 1),
(50, 5, 'Làm website bán hàng 7', 'lam-website-ban-hang-7', 'Nếu bây giờ bạn đang ngồi trước máy tính hay lên mạng bằng các thiết bị khác, bạn có thể tìm kiếm để biết được con số doanh thu đang được tạo ra bởi các trang web', 'Nếu bây giờ bạn đang ngồi trước máy tính hay lên mạng bằng các thiết bị khác, bạn có thể tìm kiếm để biết được con số doanh thu đang được tạo ra bởi các trang web. Bạn có thể bắt đầu bằng cách thiết kế web bán hàng của riêng mình và bán một hay một số sản phẩm mà bạn tự tạo ra hay thậm chí là mua buôn bán lại sản phẩm của những công ty khác. Kinh doanh online hiện đang trở thành một xu hướng bán hàng hiện đại thu hút được rất nhiều người. Thống kế cho thấy có hơn 191 triệu người thực hiện mua hàng trên mạng tại Mỹ và hơn 87% dân số thế giới đã làm điều đó. Có thể nói, với việc xây dựng một website bán hàng sử dụng dịch vụ của các công ty thiết kế web hàng đầu Việt Nam, sản phẩm của bạn sẽ có thể tiếp cận được một thị trường khách hàng tiềm năng rộng lớn.     Top 9 ngành nghề kinh doanh “hot” nhất trong năm 2015 8  Hình 3: Top 9 ngành nghề kinh doanh “hot” nhất trong năm 2015     Ngoài ra, bạn cũng có thể kinh doanh dịch vụ thiết kế website cho các doanh nghiệp khác bởi chắc chắn một điều rằng, xu hướng này sẽ còn phát triển hơn nữa trong năm 2015 sắp tới đây. Nhưng cho dù là bán hàng hay thiết kế website, bạn cũng đều cần tham khảo một số doanh nghiệp kinh doanh trong lĩnh vực này để học hỏi kinh nghiệm và xem xem họ làm như thế nào. Điển hình ở Việt Nam là nhà cung cấp dịch vụ thiết kế website hàng đầu Bizweb. Với uy tín và sự chuyên nghiệp của mình, Bizweb đã giúp hàng nghìn các doanh nghiệp/cửa hàng khác nhau khởi nghiệp kinh doanh một cách thuận lợi và hiệu quả nhất.', 'thiet-ke-website.jpg', '2016-01-22 00:00:00', 'Super Admin', '2016-01-22 00:00:00', 'Super Admin', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ci_customer`
--

CREATE TABLE IF NOT EXISTS `ci_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` text NOT NULL,
  `address` text NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ci_email`
--

CREATE TABLE IF NOT EXISTS `ci_email` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ci_email`
--

INSERT INTO `ci_email` (`id`, `email`) VALUES
(13, 'quangphat@gmail.com'),
(14, 'quangphat@gmail.com'),
(15, 'quangphat@adsg.com'),
(16, 'quangphatc3@gmail.com'),
(26, 'quangphatc3@gmail.com'),
(27, 'tienphat@123.com'),
(28, 'quangphatc3@gmail.com'),
(31, 'quangphat@gmail.com'),
(32, 'qya@gmail.cm');

-- --------------------------------------------------------

--
-- Table structure for table `ci_email_forgot_pw`
--

CREATE TABLE IF NOT EXISTS `ci_email_forgot_pw` (
  `id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_email_forgot_pw`
--

INSERT INTO `ci_email_forgot_pw` (`id`, `email`) VALUES
(8, 'quangphat95@gmail.com'),
(9, 'quangphat95@asdg'),
(10, 'sadwe@sda'),
(11, 'quangphat@ladjg'),
(12, 'quangphat.95@ag');

-- --------------------------------------------------------

--
-- Table structure for table `ci_members`
--

CREATE TABLE IF NOT EXISTS `ci_members` (
  `id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `access` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ci_members`
--

INSERT INTO `ci_members` (`id`, `name`, `username`, `email`, `password`, `address`, `phone`, `created`, `status`, `access`) VALUES
(18, 'Super Admin', 'admin', 'admin@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '181 Tôn Đức Thắng, Đống Đa, Hà Nội', '0967095873', '2016-03-29 00:00:00', 1, 1),
(19, 'Super Admin', 'admin2', 'admin@gmail.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', '181 Tôn Đức Thắng, Đống Đa, Hà Nội', '0967095873', '2016-03-29 00:00:00', 1, 1),
(20, 'Ngô Tiến Phát', 'tienphat', 'quangphattt95@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Tôn Đức Thắng, hà Nội', '09454673484', '2016-04-26 01:23:37', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ci_menu`
--

CREATE TABLE IF NOT EXISTS `ci_menu` (
  `id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parentid` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `access` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `trash` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ci_menu`
--

INSERT INTO `ci_menu` (`id`, `level`, `title`, `link`, `parentid`, `created`, `created_by`, `access`, `status`, `trash`) VALUES
(1, 1, 'Trang chủ', 'trang-chu', 0, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(2, 1, 'Giới thiệu', 'gioi-thieu', 0, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(3, 1, 'Sản phẩm', 'san-pham', 0, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(4, 1, 'Liên hệ', 'lien-he', 0, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(5, 1, 'Dịch vụ', 'dich-vu', 0, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(6, 1, 'Tin tức', 'tin-tuc', 0, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(7, 2, 'Thời trang nam', 'thoi-trang-nam', 3, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(8, 2, 'Thời trang nữ', 'thoi-trang-nu', 3, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(9, 2, 'Thời trang trẻ em', 'thoi-trang-tre-em', 3, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(10, 2, 'Phụ kiện', 'phu-kien', 3, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(11, 3, 'Giầy nam', 'giay-nam', 7, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(12, 3, 'Áo sơ mi nam', 'ao-so-mi-nam', 7, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(13, 3, 'Áo khoác nam', 'ao-khoac-nam', 7, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(14, 3, 'Đồ vest nam', 'do-vest-nam', 7, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(15, 3, 'Áo thun nam', 'ao-thun-nam', 7, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(16, 3, 'Áo len nam', 'ao-len-nam', 7, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(17, 3, 'Váy đầm', 'vay-dam', 8, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(18, 3, 'Áo sơmi nữ', 'ao-somi-nu', 8, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(19, 3, 'Áo len nữ', 'ao-len-nu', 8, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(20, 3, 'Áo thun nữ', 'ao-thun-nu', 8, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(21, 3, 'Áo kiểu nữ', 'ao-kieu-nu', 8, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(22, 3, 'Áo khoác nữ', 'ao-khoac-nu', 8, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(23, 3, 'Giày cao gót', 'giay-cao-got', 8, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(24, 3, 'Giày bệt nữ', 'giay-bet-nu', 8, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(25, 3, 'Giày sandal nữ', 'giay-sandal-nu', 8, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(26, 3, 'Giày búp bê nữ', 'giay-bup-be-nu', 8, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(27, 3, 'Quần áo bé trai', 'quan-ao-be-trai', 9, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(28, 3, 'Quần áo bé gái', 'quan-ao-be-gai', 9, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(29, 3, 'Giày bé trai', 'giay-be-trai', 9, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(30, 3, 'Giày bé gái', 'giay-be-gai', 9, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(31, 3, 'Đồng hồ', 'dong-ho', 10, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(32, 3, 'Mắt kính', 'mat-kinh', 10, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(33, 3, 'Thắt lưng', 'that-lung', 10, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(34, 3, 'Bóp', 'bop', 10, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 0),
(35, 3, 'Nón', 'non', 10, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ci_order`
--

CREATE TABLE IF NOT EXISTS `ci_order` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name_product` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `number` int(11) NOT NULL,
  `customer` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `price_ship` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `trash` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_order`
--

INSERT INTO `ci_order` (`id`, `product_id`, `name_product`, `number`, `customer`, `address`, `price`, `price_ship`, `total_price`, `created`, `note`, `status`, `trash`) VALUES
(1, 1, 'Đồng hồ 1', 1, 'Ngô Tiến Phát', 'Ngõ 181 Tôn Đức Thắng, Hà Nội', 210000, 10000, 220000, '0000-00-00 00:00:00', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ci_product`
--

CREATE TABLE IF NOT EXISTS `ci_product` (
  `id` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `detail` text COLLATE utf8_unicode_ci NOT NULL,
  `introtext` text COLLATE utf8_unicode_ci NOT NULL,
  `number` int(11) NOT NULL,
  `number_buy` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `price_sale` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `trash` int(11) NOT NULL,
  `access` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ci_product`
--

INSERT INTO `ci_product` (`id`, `catid`, `name`, `img`, `alias`, `detail`, `introtext`, `number`, `number_buy`, `price`, `price_sale`, `created`, `created_by`, `modified`, `modified_by`, `status`, `trash`, `access`) VALUES
(1, 31, 'Đồng hồ 1', 'dong-ho-1.jpg', 'dong-ho-1', '', '', 0, 0, 215000, 210000, '2016-01-21 00:00:00', 'Ngô Tiến Phát', '0000-00-00 00:00:00', '', 1, 1, 1),
(2, 11, 'Giày nam 1', 'giay-nam-1.jpg', 'giay-nam-1', '', '', 0, 0, 265000, 240000, '2016-01-21 00:00:00', 'Ngô Tiến Phát', '0000-00-00 00:00:00', '', 1, 1, 1),
(3, 31, 'Đồng hồ 3', 'dong-ho-3.jpg', 'dong-ho-3', '', '', 0, 0, 525000, 500000, '2016-01-21 00:00:00', 'Ngô Tiến Phát', '0000-00-00 00:00:00', '', 1, 1, 1),
(4, 31, 'Đồng hồ 4', 'dong-ho-4.jpg', 'dong-ho-4', '', '', 0, 0, 925000, 900000, '2016-01-21 00:00:00', 'Ngô Tiến Phát', '0000-00-00 00:00:00', '', 1, 1, 1),
(5, 31, 'Đồng hồ 5', 'dong-ho-5.jpg', 'dong-ho-5', '', '', 0, 0, 295000, 270000, '2016-01-21 00:00:00', 'Ngô Tiến Phát', '0000-00-00 00:00:00', '', 1, 1, 1),
(6, 11, 'Giày nam 2', 'giay-nam-2.jpg', 'giay-nam-2', '', '', 0, 0, 415000, 400000, '2016-01-21 00:00:00', 'Ngô Tiến Phát', '0000-00-00 00:00:00', '', 1, 1, 1),
(7, 31, 'Đồng hồ 2', 'dong-ho-2.jpg', 'dong-ho-2', '', '', 0, 0, 235000, 200000, '2016-01-21 00:00:00', 'Ngô Tiến Phát', '0000-00-00 00:00:00', '', 1, 1, 1),
(8, 31, 'Đồng hồ 1', 'dong-ho-1.jpg', 'dong-ho-1', '', '', 0, 0, 275000, 250000, '2016-01-21 00:00:00', 'Ngô Tiến Phát', '0000-00-00 00:00:00', '', 1, 1, 1),
(9, 11, 'Giày nam 3', 'giay-nam-3.jpg', 'giay-nam-3', '', '', 0, 0, 365000, 350000, '2016-01-21 00:00:00', 'Ngô Tiến Phát', '0000-00-00 00:00:00', '', 1, 1, 1),
(10, 31, 'Đồng hồ 6', 'dong-ho-6.jpg', 'dong-ho-6', '', '', 0, 0, 815000, 0, '2016-01-21 00:00:00', 'Ngô Tiến Phát', '0000-00-00 00:00:00', '', 1, 1, 1),
(11, 11, 'Giày nam 1', 'giay-nam-1.jpg', 'giay-nam-1', '', '', 0, 0, 235000, 0, '2016-01-21 00:00:00', 'Ngô Tiến Phát', '0000-00-00 00:00:00', '', 0, 1, 1),
(12, 31, 'Đồng hồ 5', 'dong-ho-5.jpg', 'dong-ho-5', '', '', 0, 0, 215000, 0, '2016-01-21 00:00:00', 'Ngô Tiến Phát', '0000-00-00 00:00:00', '', 1, 1, 1),
(13, 31, 'Đồng hồ 2', 'dong-ho-2.jpg', 'dong-ho-2', '', '', 0, 0, 215000, 0, '2016-01-21 00:00:00', 'Ngô Tiến Phát', '0000-00-00 00:00:00', '', 1, 1, 1),
(14, 31, 'Đồng hồ 3', 'dong-ho-3.jpg', 'dong-ho-3', '', '', 0, 0, 225000, 0, '2016-01-21 00:00:00', 'Ngô Tiến Phát', '0000-00-00 00:00:00', '', 1, 1, 1),
(15, 11, 'Giày nam 3', 'giay-nam-3.jpg', 'giay-nam-3', '', '', 0, 0, 215000, 0, '2016-01-21 00:00:00', 'Ngô Tiến Phát', '0000-00-00 00:00:00', '', 1, 1, 1),
(16, 31, 'Đồng hồ 5', 'dong-ho-5.jpg', 'dong-ho-5', '', '', 0, 0, 215000, 0, '2016-01-21 00:00:00', 'Ngô Tiến Phát', '0000-00-00 00:00:00', '', 1, 1, 1),
(28, 31, 'Đồng hồ 3', 'dong-ho-3.jpg', 'dong-ho-3', '', '', 0, 0, 225000, 0, '2016-01-21 00:00:00', 'Ngô Tiến Phát', '0000-00-00 00:00:00', '', 1, 1, 1),
(29, 31, 'Đồng hồ 5', 'dong-ho-5.jpg', 'dong-ho-5', '', '', 0, 0, 295000, 0, '2016-01-21 00:00:00', 'Ngô Tiến Phát', '0000-00-00 00:00:00', '', 1, 1, 1),
(30, 31, 'Đồng hồ 3', 'dong-ho-3.jpg', 'dong-ho-3', '', '', 0, 0, 525000, 0, '2016-01-21 00:00:00', 'Ngô Tiến Phát', '0000-00-00 00:00:00', '', 1, 1, 1),
(32, 11, 'Giày nam 3', 'giay-nam-3.jpg', 'giay-nam-3', '', '', 0, 0, 365000, 0, '2016-01-21 00:00:00', 'Ngô Tiến Phát', '0000-00-00 00:00:00', '', 1, 1, 1),
(34, 31, 'Đồng hồ 6', 'dong-ho-6.jpg', 'dong-ho-6', '', '', 0, 0, 815000, 0, '2016-01-21 00:00:00', 'Ngô Tiến Phát', '0000-00-00 00:00:00', '', 1, 1, 1),
(35, 0, 'HHHHHHHHHHHH', 'Screenshot.png', 'hhhhhhhh', '<p>sgasdg</p>\r\n', '<p>adsg</p>\r\n', 1, 0, 10000, 10000, '2016-02-17 22:45:59', 'Ngô Tiến Phát', '2016-02-17 22:45:59', 'Ngô Tiến Phát', 1, 0, 1),
(37, 11, 'Giày nam 2', 'giay-nam-2.jpg', 'giay-nam-2', '', '', 0, 0, 415000, 0, '2016-01-21 00:00:00', 'Ngô Tiến Phát', '0000-00-00 00:00:00', '', 1, 1, 1),
(38, 22, 'Áo khoác jean nữ', 'ao-khoac-jean-nu-a902-147.jpg', 'ao-khoac-jean-nu', '', '', 24, 0, 260000, 240000, '2016-04-25 17:29:50', 'Ngô Tiến Phát', '2016-04-25 17:29:50', 'Ngô Tiến Phát', 1, 1, 1),
(39, 22, 'Áo khoác jean nữ giá sỉ', 'ao-khoac-jean-nu-gia-si-a901.jpg', 'ao-khoac-jean-nu-gia-si', '', '', 46, 0, 300000, 250000, '2016-04-25 17:31:10', 'Ngô Tiến Phát', '2016-04-25 17:31:10', 'Ngô Tiến Phát', 1, 1, 1),
(40, 13, 'Áo khoác nam 01', 'ao-khoac-nam-01.jpg', 'ao-khoac-nam-01', '', '', 35, 0, 250000, 200000, '2016-04-25 17:31:55', 'Ngô Tiến Phát', '2016-04-25 17:31:55', 'Ngô Tiến Phát', 1, 1, 1),
(41, 13, 'Áo khoác nam 2', 'ao-khoac-nam-02.jpg', 'ao-khoac-nam-2', '', '', 20, 0, 450000, 400000, '2016-04-25 17:32:47', 'Ngô Tiến Phát', '2016-04-25 17:32:47', 'Ngô Tiến Phát', 1, 1, 1),
(42, 13, 'Áo khoác nam 03', 'ao-khoac-nam-03.jpg', 'ao-khoac-nam-03', '', '', 5, 0, 350000, 320000, '2016-04-25 17:34:19', 'Ngô Tiến Phát', '2016-04-25 17:34:19', 'Ngô Tiến Phát', 1, 1, 1),
(43, 13, 'Áo khoác nam 04', 'ao-khoac-nam-04.jpg', 'ao-khoac-nam-04', '', '', 16, 0, 540000, 510000, '2016-04-25 17:34:48', 'Ngô Tiến Phát', '2016-04-25 17:34:48', 'Ngô Tiến Phát', 1, 1, 1),
(44, 13, 'Áo khoác nam 05', 'ao-khoac-nam-05.jpg', 'ao-khoac-nam-05', '', '', 17, 0, 250000, 240000, '2016-04-25 17:35:22', 'Ngô Tiến Phát', '2016-04-25 17:35:22', 'Ngô Tiến Phát', 1, 1, 1),
(45, 13, 'Áo khoác nam 07', 'ao-khoac-nam-07.jpg', 'ao-khoac-nam-07', '', '', 23, 0, 340000, 320000, '2016-04-25 17:35:57', 'Ngô Tiến Phát', '2016-04-25 17:35:57', 'Ngô Tiến Phát', 1, 1, 1),
(46, 13, 'Áo khoác nam 06', 'ao-khoac-nam-06.jpg', 'ao-khoac-nam-06', '', '', 26, 0, 320000, 290000, '2016-04-25 17:36:28', 'Ngô Tiến Phát', '2016-04-25 17:36:28', 'Ngô Tiến Phát', 1, 1, 1),
(47, 13, 'Áo khoác nam 08', 'ao-khoac-nam-08.jpg', 'ao-khoac-nam-08', '', '', 25, 0, 340000, 320000, '2016-04-25 17:37:01', 'Ngô Tiến Phát', '2016-04-25 17:37:01', 'Ngô Tiến Phát', 1, 1, 1),
(48, 13, 'Áo khoác nam 09', 'ao-khoac-nam-09.jpg', 'ao-khoac-nam-09', '', '', 6, 0, 530000, 500000, '2016-04-25 17:37:46', 'Ngô Tiến Phát', '2016-04-25 17:37:46', 'Ngô Tiến Phát', 1, 1, 1),
(49, 13, 'Áo khoác nam 10', 'ao-khoac-nam-10.jpg', 'ao-khoac-nam-10', '', '', 8, 0, 420000, 400000, '2016-04-25 17:38:26', 'Ngô Tiến Phát', '2016-04-25 17:38:26', 'Ngô Tiến Phát', 1, 1, 1),
(50, 13, 'Áo khoác nam 11', 'ao-khoac-nam-011.jpg', 'ao-khoac-nam-11', '', '', 5, 0, 370000, 350000, '2016-04-25 17:39:01', 'Ngô Tiến Phát', '2016-04-25 17:39:01', 'Ngô Tiến Phát', 1, 1, 1),
(51, 16, 'Áo len nam 01', 'ao-len-nam_(1).jpg', 'ao-len-nam-01', '', '', 10, 0, 250000, 230000, '2016-04-25 17:40:11', 'Ngô Tiến Phát', '2016-04-25 17:40:11', 'Ngô Tiến Phát', 1, 1, 1),
(52, 16, 'Áo len nam 02', 'ao-len-nam_(1).png', 'ao-len-nam-02', '', '', 4, 0, 320000, 300000, '2016-04-25 17:40:53', 'Ngô Tiến Phát', '2016-04-25 17:40:53', 'Ngô Tiến Phát', 1, 1, 1),
(53, 16, 'Áo len nam 03', 'ao-len-nam_(3).jpg', 'ao-len-nam-03', '', '', 14, 0, 250000, 230000, '2016-04-25 17:41:28', 'Ngô Tiến Phát', '2016-04-25 17:41:28', 'Ngô Tiến Phát', 1, 1, 1),
(54, 16, 'Áo len nam 04', 'ao-len-nam_(4).jpg', 'ao-len-nam-04', '', '', 16, 0, 380000, 350000, '2016-04-25 17:42:03', 'Ngô Tiến Phát', '2016-04-25 17:42:03', 'Ngô Tiến Phát', 1, 1, 1),
(55, 16, 'Áo len nam 05', 'ao-len-nam_(5).jpg', 'ao-len-nam-05', '', '', 17, 0, 350000, 320000, '2016-04-25 17:42:33', 'Ngô Tiến Phát', '2016-04-25 17:42:33', 'Ngô Tiến Phát', 1, 1, 1),
(56, 16, 'Áo len nam 6', 'ao-len-nam_(6).jpg', 'ao-len-nam-6', '', '', 14, 0, 250000, 220000, '2016-04-25 17:43:08', 'Ngô Tiến Phát', '2016-04-25 17:43:08', 'Ngô Tiến Phát', 1, 1, 1),
(57, 16, 'Áo len nam 08', 'ao-len-nam_(8)1.jpg', 'ao-len-nam-08', '', '', 24, 0, 300000, 280000, '2016-04-25 17:43:45', 'Ngô Tiến Phát', '2016-04-25 17:43:45', 'Ngô Tiến Phát', 1, 1, 1),
(58, 16, 'Áo len nam 07', 'ao-len-nam_(1).png', 'ao-len-nam-07', '', '', 0, 0, 0, 0, '2016-04-25 17:48:12', 'Ngô Tiến Phát', '2016-04-25 17:48:12', 'Ngô Tiến Phát', 1, 1, 1),
(59, 15, 'Áo phông nam 01', 'ao-phong-_(1).jpg', 'ao-phong-nam-1', '', '', 25, 0, 150000, 130000, '2016-04-25 17:46:31', 'Ngô Tiến Phát', '2016-04-25 17:46:31', 'Ngô Tiến Phát', 1, 1, 1),
(60, 15, 'Áo phông nam 02', 'ao-phong-_(2).jpg', 'ao-phong-nam-02', '', '', 4, 0, 100000, 90000, '2016-04-25 17:47:00', 'Ngô Tiến Phát', '2016-04-25 17:47:00', 'Ngô Tiến Phát', 1, 1, 1),
(61, 15, 'Áo phông nam 03', 'ao-phong-_(3).jpg', 'ao-phong-nam-03', '', '', 6, 0, 150000, 130000, '2016-04-25 17:48:57', 'Ngô Tiến Phát', '2016-04-25 17:48:57', 'Ngô Tiến Phát', 1, 1, 1),
(62, 15, 'Áo phông nam 04', 'ao-phong-_(4).jpg', 'ao-phong-nam-04', '', '', 15, 0, 130000, 120000, '2016-04-25 17:49:37', 'Ngô Tiến Phát', '2016-04-25 17:49:37', 'Ngô Tiến Phát', 1, 1, 1),
(63, 15, 'Áo phông nam 05', 'ao-phong-_(5).jpg', 'ao-phong-nam-05', '', '', 24, 0, 120000, 110000, '2016-04-25 17:50:17', 'Ngô Tiến Phát', '2016-04-25 17:50:17', 'Ngô Tiến Phát', 1, 1, 1),
(64, 15, 'Áo phông nam 07', 'ba73f0_simg_b5529c_250x250_maxb.jpg', 'ao-phong-nam-07', '', '', 15, 0, 190000, 180000, '2016-04-25 17:50:52', 'Ngô Tiến Phát', '2016-04-25 17:50:52', 'Ngô Tiến Phát', 1, 1, 1),
(65, 14, 'Áo vest nam 01', 'ao-vest-nam_(1).jpg', 'ao-vest-nam-01', '', '', 12, 0, 540000, 520000, '2016-04-25 17:51:27', 'Ngô Tiến Phát', '2016-04-25 17:51:27', 'Ngô Tiến Phát', 1, 1, 1),
(66, 14, 'Áo vest nam 02', 'ao-vest-nam_(2).jpg', 'ao-vest-nam-02', '', '', 4, 0, 250000, 230000, '2016-04-25 17:52:00', 'Ngô Tiến Phát', '2016-04-25 17:52:00', 'Ngô Tiến Phát', 1, 1, 1),
(67, 14, 'Áo vest nam 03', 'ao-vest-nam_(3).jpg', 'ao-vest-nam-03', '', '', 15, 0, 560000, 530000, '2016-04-25 17:52:30', 'Ngô Tiến Phát', '2016-04-25 17:52:30', 'Ngô Tiến Phát', 1, 1, 1),
(68, 14, 'Áo vest nam 04', 'ao-vest-nam_(4).jpg', 'ao-vest-nam-04', '', '', 25, 0, 640000, 620000, '2016-04-25 17:52:57', 'Ngô Tiến Phát', '2016-04-25 17:52:57', 'Ngô Tiến Phát', 1, 1, 1),
(69, 14, 'Áo vest nam 05', 'ao-vest-nam_(5).jpg', 'ao-vest-nam-05', '', '', 16, 0, 420000, 410000, '2016-04-25 17:53:35', 'Ngô Tiến Phát', '2016-04-25 17:53:35', 'Ngô Tiến Phát', 1, 1, 1),
(70, 14, 'Áo vest nam 06', 'ao-vest-nam_(6).jpg', 'ao-vest-nam-06', '', '', 17, 0, 530000, 500000, '2016-04-25 17:54:08', 'Ngô Tiến Phát', '2016-04-25 17:54:08', 'Ngô Tiến Phát', 1, 1, 1),
(71, 14, 'Áo vest nam 07', 'ao-vest-nam_(7).jpg', 'ao-vest-nam-07', '', '', 15, 0, 540000, 520000, '2016-04-25 17:54:39', 'Ngô Tiến Phát', '2016-04-25 17:54:39', 'Ngô Tiến Phát', 1, 1, 1),
(72, 14, 'Áo vest nam 08', 'ao-vest-nam_(8).jpg', 'ao-vest-nam-08', '', '', 15, 0, 510000, 490000, '2016-04-25 17:55:14', 'Ngô Tiến Phát', '2016-04-25 17:55:14', 'Ngô Tiến Phát', 1, 1, 1),
(73, 14, 'Áo vest nam 09', 'ao-vest-nam_(9).jpg', 'ao-vest-nam-09', '', '', 12, 0, 620000, 590000, '2016-04-25 17:56:01', 'Ngô Tiến Phát', '2016-04-25 17:56:01', 'Ngô Tiến Phát', 1, 1, 1),
(74, 31, 'Đồng hồ armani 2434', 'Armani_2434.jpg', 'dong-ho-armani-2434', '', '', 4, 0, 460000, 430000, '2016-04-25 17:57:01', 'Ngô Tiến Phát', '2016-04-25 17:57:01', 'Ngô Tiến Phát', 1, 1, 1),
(75, 31, 'Đồng hồ armani 0373', 'armani-0373.jpg', 'dong-ho-armani-0373', '', '', 15, 0, 780000, 750000, '2016-04-25 17:57:41', 'Ngô Tiến Phát', '2016-04-25 17:57:41', 'Ngô Tiến Phát', 1, 1, 1),
(76, 16, 'Áo len nam 20', 'bb3eae_simg_b5529c_250x250_maxb.jpg', 'ao-len-nam-20', '', '', 15, 0, 250000, 130000, '2016-04-25 17:58:23', 'Ngô Tiến Phát', '2016-04-25 17:58:23', 'Ngô Tiến Phát', 1, 1, 1),
(77, 31, 'Đồng hồ cơ nam dây da', 'Dong-ho-co-nam-day-da.jpg', 'dong-ho-co-nam-day-da', '', '', 15, 0, 450000, 420000, '2016-04-25 17:59:25', 'Ngô Tiến Phát', '2016-04-25 17:59:25', 'Ngô Tiến Phát', 1, 1, 1),
(78, 31, 'Đồng hồ cơ nam lộ máy', 'dong-ho-co-nam-lo-may.jpg', 'dong-ho-co-nam-lo-may', '', '', 16, 0, 450000, 420000, '2016-04-25 18:00:13', 'Ngô Tiến Phát', '2016-04-25 18:00:13', 'Ngô Tiến Phát', 1, 1, 1),
(79, 31, 'Đồng hồ cơ logine cao cấp', 'Dong-ho-longines-1598c-cao-cap.jpg', 'dong-ho-co-longine-cao-cap', '', '', 24, 0, 240000, 220000, '2016-04-25 18:01:03', 'Ngô Tiến Phát', '2016-04-25 18:01:03', 'Ngô Tiến Phát', 1, 1, 1),
(80, 31, 'Đồng hồ nam CX104', 'Dong-ho-nam-CX104.jpg', 'dong-ho-nam-cx104', '', '', 17, 0, 600000, 580000, '2016-04-25 18:01:50', 'Ngô Tiến Phát', '2016-04-25 18:01:50', 'Ngô Tiến Phát', 1, 1, 1),
(81, 31, 'Đồng hồ nam gianba hợp kim thép', 'Dong-ho-nam-qianba-hop-kim-thep.jpg', 'dong-ho-nam-gianba-hop-kim-thep', '', '', 6, 0, 540000, 520000, '2016-04-25 18:02:36', 'Ngô Tiến Phát', '2016-04-25 18:02:36', 'Ngô Tiến Phát', 1, 1, 1),
(82, 31, 'Đồng hồ Omega dây inox', 'dong-ho-Omega-day-inox.png', 'dong-ho-omega-day-inox', '', '', 14, 0, 240000, 220000, '2016-04-25 18:03:27', 'Ngô Tiến Phát', '2016-04-25 18:03:27', 'Ngô Tiến Phát', 1, 1, 1),
(83, 31, 'Đồng hồ Rolex rb tự động', 'dong-ho-rolex-rb-tu-dong.jpg', 'dong-ho-rolex-rb-tu-dong', '', '', 15, 0, 290000, 270000, '2016-04-25 18:04:07', 'Ngô Tiến Phát', '2016-04-25 18:04:07', 'Ngô Tiến Phát', 1, 1, 1),
(84, 31, 'Đồng hồ Stuhrling Original st 01', 'dong-ho-Stuhrling-Original_ST-1.jpg', 'dong-ho-stuhrling-original-st-01', '', '', 18, 0, 620000, 600000, '2016-04-25 18:05:24', 'Ngô Tiến Phát', '2016-04-25 18:05:24', 'Ngô Tiến Phát', 1, 1, 1),
(85, 31, 'Đồng hồ Stuhrling Original ST 2', 'dong-ho-Stuhrling-Original-ST-2.jpg', 'dong-ho-Stuhrling-Original-ST-2', '', '', 16, 0, 340000, 320000, '2016-04-25 18:06:19', 'Ngô Tiến Phát', '2016-04-25 18:06:19', 'Ngô Tiến Phát', 1, 1, 1),
(86, 31, 'Đồng hồ Stuhrling Original st 03', 'dong-ho-STUHRLING-ORIGINAL-ST-3.png', 'dong-ho-stuhrling-orginal-st-03', '', '', 15, 0, 300000, 280000, '2016-04-25 18:07:12', 'Ngô Tiến Phát', '2016-04-25 18:07:12', 'Ngô Tiến Phát', 1, 1, 1),
(87, 34, 'Bộ ví da thật vân cá sầu màu đen', 'Bo-vi-da-that-van-ca-sau-mau-den.JPG', 'Bo-vi-da-that-van-ca-sau-mau-den', '', '', 16, 0, 250000, 220000, '2016-04-25 18:08:38', 'Ngô Tiến Phát', '2016-04-25 18:08:38', 'Ngô Tiến Phát', 1, 1, 1),
(88, 34, 'Ví nam da thật', 'Vi-nam-da-that-van-ca-sau-mau-den-LAKA-LKVY03-5.JPG', 'vi-nam-da-that', '', '', 16, 0, 160000, 140000, '2016-04-25 18:09:13', 'Ngô Tiến Phát', '2016-04-25 18:09:13', 'Ngô Tiến Phát', 1, 1, 1),
(89, 32, 'Kính mắt chính hãng Ao Star 01', 'Kinh-mat-chinh-hang-Ao-Star-AO-1101-3.jpg', 'kinh-mat-chinh-hang-ao-star', '', '', 16, 0, 120000, 100000, '2016-04-25 18:10:12', 'Ngô Tiến Phát', '2016-04-25 18:10:12', 'Ngô Tiến Phát', 1, 1, 1),
(90, 32, 'Kính mắt chính hãng Ao Star 02', 'Kinh-mat-chinh-hang-Ao-Star-AO-1568-BLK.jpg', 'kinh-mat-chinh-hang-ao-star-02', '', '', 17, 0, 150000, 120000, '2016-04-25 18:10:48', 'Ngô Tiến Phát', '2016-04-25 18:10:48', 'Ngô Tiến Phát', 1, 1, 1),
(91, 32, 'Kính mắt chính hãng Ao Star 03', 'Kinh-mat-chinh-hang-Ao-Star-AO-1574-3.jpg', 'kinh-mat-chinh-hang-ao-star-03', '', '', 17, 0, 120000, 100000, '2016-04-25 18:11:53', 'Ngô Tiến Phát', '2016-04-25 18:11:53', 'Ngô Tiến Phát', 1, 1, 1),
(92, 32, 'Kính mắt chính hãng Ao Star 04', 'Kinh-mat-chinh-hang-Ao-Star-AO-5803-BL-4.jpg', 'kinh-mat-chinh-hang-ao-star-04', '', '', 19, 0, 120000, 100000, '2016-04-25 18:12:27', 'Ngô Tiến Phát', '2016-04-25 18:12:27', 'Ngô Tiến Phát', 1, 1, 1),
(93, 11, 'Giày boot nam martern Olunpo 01', 'Giay-boot-nam-Martern-Olunpo-dht1440.jpg', 'giay-boot-nam-martern-olunpo-01', '', '', 14, 0, 520000, 450000, '2016-04-25 18:13:52', 'Ngô Tiến Phát', '2016-04-25 18:13:52', 'Ngô Tiến Phát', 1, 1, 1),
(94, 11, 'Giày boot nam martern Olunpo 02', 'Giay-da-nam-Olunpo-QHB1403.jpg', 'giay-boot-nam-martern-olunpo-02', '', '', 19, 0, 750000, 670000, '2016-04-25 18:14:33', 'Ngô Tiến Phát', '2016-04-25 18:14:33', 'Ngô Tiến Phát', 1, 1, 1),
(95, 11, 'Giày boot nam martern Olunpo 03', 'Giay-da-nam-olunpo-qht1432.jpg', 'giay-boot-nam-martern-olunpo-03', '', '', 12, 0, 410000, 380000, '2016-04-25 18:15:10', 'Ngô Tiến Phát', '2016-04-25 18:15:10', 'Ngô Tiến Phát', 1, 1, 1),
(96, 11, 'Giày da nam Olunpo 01', 'Giay-da-nam-olunpo-qzk1405.jpg', 'giay-da-nam-olunpo-01', '', '', 5, 0, 520000, 500000, '2016-04-25 18:16:02', 'Ngô Tiến Phát', '2016-04-25 18:16:02', 'Ngô Tiến Phát', 1, 1, 1),
(97, 11, 'Giày nam Olunpo 02', 'Giay-nam-Olunpo-dht1443.jpg', 'giay-nam-olunpo-02', '', '', 16, 0, 520000, 500000, '2016-04-25 18:16:48', 'Ngô Tiến Phát', '2016-04-25 18:16:48', 'Ngô Tiến Phát', 1, 1, 1),
(98, 11, 'Giày nam olunpo 03', 'Giay-nam-Olunpo-dht1444.jpg', 'giay-nam-oplunpo-03', '', '', 24, 0, 620000, 580000, '2016-04-25 18:17:37', 'Ngô Tiến Phát', '2016-04-25 18:17:37', 'Ngô Tiến Phát', 1, 1, 1),
(99, 11, 'Giày nam Olunpo 04', 'Giay-nam-Olunpo-QDT1404.jpg', 'giay-nam-olunpo-04', '', '', 12, 0, 560000, 540000, '2016-04-25 18:18:16', 'Ngô Tiến Phát', '2016-04-25 18:18:16', 'Ngô Tiến Phát', 1, 1, 1),
(100, 11, 'Giày nam Olunpo 05', 'Giay-nam-Olunpo-qxd1403.jpg', 'giay-nam-olunpo-05', '', '', 12, 0, 760000, 721000, '2016-04-25 18:19:04', 'Ngô Tiến Phát', '2016-04-25 18:19:04', 'Ngô Tiến Phát', 1, 1, 1),
(101, 11, 'Giày nam Olunpo 06', 'Giay-nam-Olunpo-qyc1401.jpg', 'giay-nam-olunpo-06', '', '', 18, 0, 640000, 600000, '2016-04-25 18:19:40', 'Ngô Tiến Phát', '2016-04-25 18:19:40', 'Ngô Tiến Phát', 1, 1, 1),
(102, 17, 'Đầm body jazzy', 'dam-body-tay-lo-jazzy-FD36-1.JPG', 'dam-body-jazzy', '', '', 5, 0, 320000, 290000, '2016-04-25 18:20:43', 'Ngô Tiến Phát', '2016-04-25 18:20:43', 'Ngô Tiến Phát', 1, 1, 1),
(103, 17, 'Đầm cổ tròn béo', 'dam-co-tron-beo-ktfashion-msd119-1.jpg', 'dam-co-tron-beo', '<p>Bộ sản phẩm bao gồm:</p>\n\n<ul>\n	<li>1 x sản phẩm</li>\n</ul>\n\n<p>Đặc điểm ch&iacute;nh:</p>\n\n<table>\n	<tbody>\n		<tr>\n			<td>SKU</td>\n			<td>LA287FAAA197B3VNAMZ-1894844</td>\n		</tr>\n		<tr>\n			<td>Mẫu m&atilde;</td>\n			<td>DN13</td>\n		</tr>\n		<tr>\n			<td>K&iacute;ch thước sản phẩm (D x R x C cm)</td>\n			<td>94x58x7</td>\n		</tr>\n		<tr>\n			<td>Bảo h&agrave;nh</td>\n			<td>Kh&ocirc;ng bảo h&agrave;nh</td>\n		</tr>\n		<tr>\n			<td>Trọng lượng (KG)</td>\n			<td>0.3</td>\n		</tr>\n		<tr>\n			<td>Sản xuất tại</td>\n			<td>Việt Nam</td>\n		</tr>\n	</tbody>\n</table>\n', '<p>Kiểu d&aacute;ng thời trang, tinh tế, kết hợp những đường may tinh xảo, tạo n&ecirc;n gu thời trang s&agrave;nh điệu của bạn g&aacute;i.<br />\n- Chất liệu cao cấp, linh hoạt mang đến cảm gi&aacute;c thoải m&aacute;i.<br />\n- M&agrave;u sắc trẻ trung, năng động cho bạn nữ th&ecirc;m phần nổi bật, c&aacute; t&iacute;nh.<br />\n- K&iacute;ch thước d&agrave;i: 80, eo: 64, ngực: 82</p>\n', 21, 0, 432000, 390000, '2016-04-29 02:49:57', 'Ngô Tiến Phát', '2016-04-29 02:49:57', 'Ngô Tiến Phát', 1, 1, 1),
(104, 17, 'Đầm hoa văn jazzy', 'dam-hoa-van-jazzy-FD26-02.JPG', 'dam-hoa-van-jazzy', '<p>Bộ sản phẩm bao gồm:</p>\n\n<ul>\n	<li>1 x sản phẩm</li>\n</ul>\n\n<p>Đặc điểm ch&iacute;nh:</p>\n\n<table>\n	<tbody>\n		<tr>\n			<td>SKU</td>\n			<td>LA287FAAA197B3VNAMZ-1894844</td>\n		</tr>\n		<tr>\n			<td>Mẫu m&atilde;</td>\n			<td>DN13</td>\n		</tr>\n		<tr>\n			<td>K&iacute;ch thước sản phẩm (D x R x C cm)</td>\n			<td>94x58x7</td>\n		</tr>\n		<tr>\n			<td>Bảo h&agrave;nh</td>\n			<td>Kh&ocirc;ng bảo h&agrave;nh</td>\n		</tr>\n		<tr>\n			<td>Trọng lượng (KG)</td>\n			<td>0.3</td>\n		</tr>\n		<tr>\n			<td>Sản xuất tại</td>\n			<td>Việt Nam</td>\n		</tr>\n	</tbody>\n</table>\n', '<p>Kiểu d&aacute;ng thời trang, tinh tế, kết hợp những đường may tinh xảo, tạo n&ecirc;n gu thời trang s&agrave;nh điệu của bạn g&aacute;i.<br />\n- Chất liệu cao cấp, linh hoạt mang đến cảm gi&aacute;c thoải m&aacute;i.<br />\n- M&agrave;u sắc trẻ trung, năng động cho bạn nữ th&ecirc;m phần nổi bật, c&aacute; t&iacute;nh.<br />\n- K&iacute;ch thước d&agrave;i: 80, eo: 64, ngực: 82</p>\n', 21, 0, 410000, 380000, '2016-04-29 02:45:56', 'Ngô Tiến Phát', '2016-04-29 02:45:56', 'Ngô Tiến Phát', 1, 1, 1),
(105, 17, 'Đầm chấm bi', 'dam-kieu-cham-bi-hong-son-fd05-7.JPG', 'dam-cham-bi', '<p>Bộ sản phẩm bao gồm:</p>\n\n<ul>\n	<li>1 x sản phẩm</li>\n</ul>\n\n<p>Đặc điểm ch&iacute;nh:</p>\n\n<table>\n	<tbody>\n		<tr>\n			<td>SKU</td>\n			<td>LA287FAAA197B3VNAMZ-1894844</td>\n		</tr>\n		<tr>\n			<td>Mẫu m&atilde;</td>\n			<td>DN13</td>\n		</tr>\n		<tr>\n			<td>K&iacute;ch thước sản phẩm (D x R x C cm)</td>\n			<td>94x58x7</td>\n		</tr>\n		<tr>\n			<td>Bảo h&agrave;nh</td>\n			<td>Kh&ocirc;ng bảo h&agrave;nh</td>\n		</tr>\n		<tr>\n			<td>Trọng lượng (KG)</td>\n			<td>0.3</td>\n		</tr>\n		<tr>\n			<td>Sản xuất tại</td>\n			<td>Việt Nam</td>\n		</tr>\n	</tbody>\n</table>\n', '<p>Kiểu d&aacute;ng thời trang, tinh tế, kết hợp những đường may tinh xảo, tạo n&ecirc;n gu thời trang s&agrave;nh điệu của bạn g&aacute;i.<br />\n- Chất liệu cao cấp, linh hoạt mang đến cảm gi&aacute;c thoải m&aacute;i.<br />\n- M&agrave;u sắc trẻ trung, năng động cho bạn nữ th&ecirc;m phần nổi bật, c&aacute; t&iacute;nh.<br />\n- K&iacute;ch thước d&agrave;i: 80, eo: 64, ngực: 82</p>\n', 23, 0, 250000, 230000, '2016-04-29 02:46:11', 'Ngô Tiến Phát', '2016-04-29 02:46:11', 'Ngô Tiến Phát', 1, 1, 1),
(106, 17, 'Đầm sọc ngang phối jean thun', 'dam-soc-ngang-phoi-jean-thun-hong-son-fd02-13.JPG', 'dam-soc-ngang-phoi-jean-thun', '<p>Bộ sản phẩm bao gồm:</p>\n\n<ul>\n	<li>1 x sản phẩm</li>\n</ul>\n\n<p>Đặc điểm ch&iacute;nh:</p>\n\n<table>\n	<tbody>\n		<tr>\n			<td>SKU</td>\n			<td>LA287FAAA197B3VNAMZ-1894844</td>\n		</tr>\n		<tr>\n			<td>Mẫu m&atilde;</td>\n			<td>DN13</td>\n		</tr>\n		<tr>\n			<td>K&iacute;ch thước sản phẩm (D x R x C cm)</td>\n			<td>94x58x7</td>\n		</tr>\n		<tr>\n			<td>Bảo h&agrave;nh</td>\n			<td>Kh&ocirc;ng bảo h&agrave;nh</td>\n		</tr>\n		<tr>\n			<td>Trọng lượng (KG)</td>\n			<td>0.3</td>\n		</tr>\n		<tr>\n			<td>Sản xuất tại</td>\n			<td>Việt Nam</td>\n		</tr>\n	</tbody>\n</table>\n', '<p>Kiểu d&aacute;ng thời trang, tinh tế, kết hợp những đường may tinh xảo, tạo n&ecirc;n gu thời trang s&agrave;nh điệu của bạn g&aacute;i.<br />\n- Chất liệu cao cấp, linh hoạt mang đến cảm gi&aacute;c thoải m&aacute;i.<br />\n- M&agrave;u sắc trẻ trung, năng động cho bạn nữ th&ecirc;m phần nổi bật, c&aacute; t&iacute;nh.<br />\n- K&iacute;ch thước d&agrave;i: 80, eo: 64, ngực: 82</p>\n', 12, 0, 280000, 250000, '2016-04-29 02:45:07', 'Ngô Tiến Phát', '2016-04-29 02:45:07', 'Ngô Tiến Phát', 1, 1, 1),
(107, 17, 'Đầm tuyết mùa xếp ly màu xanh', 'dam-tuyet-mua-xep-ly-mau-xanh-kt-fashion-msd122.jpg', 'dam-tuyet-mua-xep-ly-mau-xanh', '<p>Bộ sản phẩm bao gồm:</p>\n\n<ul>\n	<li>1 x sản phẩm</li>\n</ul>\n\n<p>Đặc điểm ch&iacute;nh:</p>\n\n<table>\n	<tbody>\n		<tr>\n			<td>SKU</td>\n			<td>LA287FAAA197B3VNAMZ-1894844</td>\n		</tr>\n		<tr>\n			<td>Mẫu m&atilde;</td>\n			<td>DN13</td>\n		</tr>\n		<tr>\n			<td>K&iacute;ch thước sản phẩm (D x R x C cm)</td>\n			<td>94x58x7</td>\n		</tr>\n		<tr>\n			<td>Bảo h&agrave;nh</td>\n			<td>Kh&ocirc;ng bảo h&agrave;nh</td>\n		</tr>\n		<tr>\n			<td>Trọng lượng (KG)</td>\n			<td>0.3</td>\n		</tr>\n		<tr>\n			<td>Sản xuất tại</td>\n			<td>Việt Nam</td>\n		</tr>\n	</tbody>\n</table>\n', '<p>Kiểu d&aacute;ng thời trang, tinh tế, kết hợp những đường may tinh xảo, tạo n&ecirc;n gu thời trang s&agrave;nh điệu của bạn g&aacute;i.<br />\n- Chất liệu cao cấp, linh hoạt mang đến cảm gi&aacute;c thoải m&aacute;i.<br />\n- M&agrave;u sắc trẻ trung, năng động cho bạn nữ th&ecirc;m phần nổi bật, c&aacute; t&iacute;nh.<br />\n- K&iacute;ch thước d&agrave;i: 80, eo: 64, ngực: 82</p>\n', 14, 0, 250000, 230000, '2016-04-29 02:44:47', 'Ngô Tiến Phát', '2016-04-29 02:44:47', 'Ngô Tiến Phát', 1, 1, 1),
(108, 17, 'Đầm màu hồng đẹp', 'dam-voan-dap-luoi-ktfashion-mSD117-01.jpg', 'dam-mau-hong-dep', '<p>Bộ sản phẩm bao gồm:</p>\n\n<ul>\n	<li>1 x sản phẩm</li>\n</ul>\n\n<p>Đặc điểm ch&iacute;nh:</p>\n\n<table>\n	<tbody>\n		<tr>\n			<td>SKU</td>\n			<td>LA287FAAA197B3VNAMZ-1894844</td>\n		</tr>\n		<tr>\n			<td>Mẫu m&atilde;</td>\n			<td>DN13</td>\n		</tr>\n		<tr>\n			<td>K&iacute;ch thước sản phẩm (D x R x C cm)</td>\n			<td>94x58x7</td>\n		</tr>\n		<tr>\n			<td>Bảo h&agrave;nh</td>\n			<td>Kh&ocirc;ng bảo h&agrave;nh</td>\n		</tr>\n		<tr>\n			<td>Trọng lượng (KG)</td>\n			<td>0.3</td>\n		</tr>\n		<tr>\n			<td>Sản xuất tại</td>\n			<td>Việt Nam</td>\n		</tr>\n	</tbody>\n</table>\n', '<p>Kiểu d&aacute;ng thời trang, tinh tế, kết hợp những đường may tinh xảo, tạo n&ecirc;n gu thời trang s&agrave;nh điệu của bạn g&aacute;i.<br />\n- Chất liệu cao cấp, linh hoạt mang đến cảm gi&aacute;c thoải m&aacute;i.<br />\n- M&agrave;u sắc trẻ trung, năng động cho bạn nữ th&ecirc;m phần nổi bật, c&aacute; t&iacute;nh.<br />\n- K&iacute;ch thước d&agrave;i: 80, eo: 64, ngực: 82</p>\n', 14, 0, 250000, 220000, '2016-04-29 02:36:23', 'Ngô Tiến Phát', '2016-04-29 02:36:23', 'Ngô Tiến Phát', 1, 1, 1),
(109, 17, 'Đầm xòa tay voăn màu vàng', 'dam-xoe-tay-voan-mau-vang-kt-fastiom-MSD98-(1).jpg', 'dam-xoe-tay-voan-mau-vang', '\n\n<p>Bộ sản phẩm bao gồm:</p>\n\n<ul>\n	<li>1 x sản phẩm</li>\n</ul>\n\n<p>Đặc điểm ch&iacute;nh:</p>\n\n<table>\n	<tbody>\n		<tr>\n			<td>SKU</td>\n			<td>LA287FAAA197B3VNAMZ-1894844</td>\n		</tr>\n		<tr>\n			<td>Mẫu m&atilde;</td>\n			<td>DN13</td>\n		</tr>\n		<tr>\n			<td>K&iacute;ch thước sản phẩm (D x R x C cm)</td>\n			<td>94x58x7</td>\n		</tr>\n		<tr>\n			<td>Bảo h&agrave;nh</td>\n			<td>Kh&ocirc;ng bảo h&agrave;nh</td>\n		</tr>\n		<tr>\n			<td>Trọng lượng (KG)</td>\n			<td>0.3</td>\n		</tr>\n		<tr>\n			<td>Sản xuất tại</td>\n			<td>Việt Nam</td>\n		</tr>\n	</tbody>\n</table>\n', '\n\n<p>Kiểu d&aacute;ng thời trang, tinh tế, kết hợp những đường may tinh xảo, tạo n&ecirc;n gu thời trang s&agrave;nh điệu của bạn g&aacute;i.<br />\n- Chất liệu cao cấp, linh hoạt mang đến cảm gi&aacute;c thoải m&aacute;i.<br />\n- M&agrave;u sắc trẻ trung, năng động cho bạn nữ th&ecirc;m phần nổi bật, c&aacute; t&iacute;nh.<br />\n. K&iacute;ch thước d&agrave;i: 80, eo: 64, ngực: 82</p>\n', 24, 0, 360000, 330000, '2016-04-29 02:13:38', 'Ngô Tiến Phát', '2016-04-29 02:13:38', 'Ngô Tiến Phát', 1, 1, 1),
(110, 33, 'Thắt lưng nam 01', 'day-nit-nam-1-lop-huy-hoang-4106-(2).jpg', 'that-lung-nam-01', '', '', 10, 0, 200000, 170000, '2016-04-25 18:26:17', 'Ngô Tiến Phát', '2016-04-25 18:26:17', 'Ngô Tiến Phát', 1, 1, 1),
(111, 33, 'Thắt lưng nam 02', 'day-nit-nam-huy-hoang-1lop-hh4105-01.JPG', 'that-lung-nam-02', '', '', 15, 0, 240000, 220000, '2016-04-25 18:26:48', 'Ngô Tiến Phát', '2016-04-25 18:26:48', 'Ngô Tiến Phát', 1, 1, 1),
(112, 33, 'Thắt lưng nữ da 01', 'That-lung-nu-da-dadieu-HuyHoang-5403-(3).jpg', 'that-lung-nu-da-01', '', '', 10, 0, 120000, 80000, '2016-04-25 18:27:27', 'Ngô Tiến Phát', '2016-04-25 18:27:27', 'Ngô Tiến Phát', 1, 1, 1),
(114, 33, 'Thắt lưng nữ 03', 'day-nit-nu-Huy-Hoang-HH5118-xanh-duong-1.JPG', 'that-lung-nu-03', '<p>&ndash; &nbsp;Chất liệu da b&ograve; nhập khẩu 100%</p>\n\n<p>&ndash; Thiết kế mặt xỏ kim cao cấp, chống hoen, ố, gỉ</p>\n\n<p>&ndash; Bảo h&agrave;nh da 12 th&aacute;ng</p>\n\n<p>&ndash; Sản xuất tại đồ da T&acirc;m Anh</p>\n\n<p>&ndash; K&iacute;ch thước (Rộng x D&agrave;i): 3.3cm x 120cm</p>\n\n<p>&ndash; Gi&aacute; tốt nhất thị trường</p>\n', '<p>Thắt lưng&nbsp;da thật 100% với chất liệu da b&ograve;, da c&aacute; sấu, da trăn, l&agrave; phụ kiện kh&ocirc;ng thể thiếu&nbsp;khi kết hợp trang phục. Ch&iacute;nh v&igrave; thế, sở hữu một chiếc thắt h&agrave;ng hiệu sang trọng v&agrave; đẳng cấp v&ocirc; c&ugrave;ng quan trọng. V&agrave; chắc hẳn, những mẫu thắt lưng của T&acirc;m Anh sẽ khiến bạn cảm thấy h&agrave;i l&ograve;ng.<br />\nNhững mẫu d&acirc;y nịt&nbsp;cao cấp được l&agrave;m bằng chất liệu da b&ograve;, c&aacute; sấu thật 100% mang đến sự y&ecirc;n t&acirc;m cho người sử dụng. Mặt kh&oacute;a được l&agrave;m bằng chất liệu hợp kim cao cấp, lu&ocirc;n s&aacute;ng đẹp v&agrave; c&oacute; khả năng chống hoen, ố, gỉ v&ocirc; c&ugrave;ng tốt. Tất cả đều được thể hiện v&ocirc; c&ugrave;ng ho&agrave;n hảo qua b&agrave;n tay của những người thợ c&oacute; tay nghề l&acirc;u năm.</p>\n', 7, 0, 130000, 100000, '2016-04-29 02:56:58', 'Ngô Tiến Phát', '2016-04-29 02:56:58', 'Ngô Tiến Phát', 1, 1, 1),
(115, 33, 'Thắt lưng nữ 04', 'day-nit-nu-huy-hoang-HH5119-xanh-dam-01.jpg', 'that-lung-nu-04', '<p>&ndash; &nbsp;Chất liệu da b&ograve; nhập khẩu 100%</p>\n\n<p>&ndash; Thiết kế mặt xỏ kim cao cấp, chống hoen, ố, gỉ</p>\n\n<p>&ndash; Bảo h&agrave;nh da 12 th&aacute;ng</p>\n\n<p>&ndash; Sản xuất tại đồ da T&acirc;m Anh</p>\n\n<p>&ndash; K&iacute;ch thước (Rộng x D&agrave;i): 3.3cm x 120cm</p>\n\n<p>&ndash; Gi&aacute; tốt nhất thị trường</p>\n', '<p>Thắt lưng&nbsp;da thật 100% với chất liệu da b&ograve;, da c&aacute; sấu, da trăn, l&agrave; phụ kiện kh&ocirc;ng thể thiếu&nbsp;khi kết hợp trang phục. Ch&iacute;nh v&igrave; thế, sở hữu một chiếc thắt h&agrave;ng hiệu sang trọng v&agrave; đẳng cấp v&ocirc; c&ugrave;ng quan trọng. V&agrave; chắc hẳn, những mẫu thắt lưng của T&acirc;m Anh sẽ khiến bạn cảm thấy h&agrave;i l&ograve;ng.<br />\nNhững mẫu d&acirc;y nịt&nbsp;cao cấp được l&agrave;m bằng chất liệu da b&ograve;, c&aacute; sấu thật 100% mang đến sự y&ecirc;n t&acirc;m cho người sử dụng. Mặt kh&oacute;a được l&agrave;m bằng chất liệu hợp kim cao cấp, lu&ocirc;n s&aacute;ng đẹp v&agrave; c&oacute; khả năng chống hoen, ố, gỉ v&ocirc; c&ugrave;ng tốt. Tất cả đều được thể hiện v&ocirc; c&ugrave;ng ho&agrave;n hảo qua b&agrave;n tay của những người thợ c&oacute; tay nghề l&acirc;u năm.</p>\n', 7, 0, 110000, 90000, '2016-04-29 02:56:25', 'Ngô Tiến Phát', '2016-04-29 02:56:25', 'Ngô Tiến Phát', 1, 1, 1),
(117, 33, 'Thắt lưng nữ da cá sấu', 'That-lung-nu-da-ca-sau-mau-den-Huy-Hoang-HH5201--(1).jpg', 'that-lung-nu-da-ca-sau', '<p>&ndash; &nbsp;Chất liệu da b&ograve; nhập khẩu 100%</p>\n\n<p>&ndash; Thiết kế mặt xỏ kim cao cấp, chống hoen, ố, gỉ</p>\n\n<p>&ndash; Bảo h&agrave;nh da 12 th&aacute;ng</p>\n\n<p>&ndash; Sản xuất tại đồ da T&acirc;m Anh</p>\n\n<p>&ndash; K&iacute;ch thước (Rộng x D&agrave;i): 3.3cm x 120cm</p>\n\n<p>&ndash; Gi&aacute; tốt nhất thị trường</p>\n', '<p>Thắt lưng&nbsp;da thật 100% với chất liệu da b&ograve;, da c&aacute; sấu, da trăn, l&agrave; phụ kiện kh&ocirc;ng thể thiếu&nbsp;khi kết hợp trang phục. Ch&iacute;nh v&igrave; thế, sở hữu một chiếc thắt h&agrave;ng hiệu sang trọng v&agrave; đẳng cấp v&ocirc; c&ugrave;ng quan trọng. V&agrave; chắc hẳn, những mẫu thắt lưng của T&acirc;m Anh sẽ khiến bạn cảm thấy h&agrave;i l&ograve;ng.<br />\nNhững mẫu d&acirc;y nịt&nbsp;cao cấp được l&agrave;m bằng chất liệu da b&ograve;, c&aacute; sấu thật 100% mang đến sự y&ecirc;n t&acirc;m cho người sử dụng. Mặt kh&oacute;a được l&agrave;m bằng chất liệu hợp kim cao cấp, lu&ocirc;n s&aacute;ng đẹp v&agrave; c&oacute; khả năng chống hoen, ố, gỉ v&ocirc; c&ugrave;ng tốt. Tất cả đều được thể hiện v&ocirc; c&ugrave;ng ho&agrave;n hảo qua b&agrave;n tay của những người thợ c&oacute; tay nghề l&acirc;u năm.</p>\n', 6, 0, 80000, 70000, '2016-04-29 02:56:43', 'Ngô Tiến Phát', '2016-04-29 02:56:43', 'Ngô Tiến Phát', 1, 1, 1),
(118, 12, 'Sơ mi nam 1', 'so-mi-nam-11.jpg', 'so-mi-nam-1', '<p>Bộ sản phẩm bao gồm:</p>\n\n<ul>\n	<li>1 x &Aacute;o</li>\n</ul>\n\n<p>Đặc điểm ch&iacute;nh:</p>\n\n<table>\n	<tbody>\n		<tr>\n			<td>SKU</td>\n			<td>HU630FAAUHBVVNAMZ-475729</td>\n		</tr>\n		<tr>\n			<td>M&agrave;u</td>\n			<td>Trắng</td>\n		</tr>\n		<tr>\n			<td>Chất liệu</td>\n			<td>Cotton</td>\n		</tr>\n		<tr>\n			<td>Mẫu m&atilde;</td>\n			<td>Caro07-D</td>\n		</tr>\n		<tr>\n			<td>K&iacute;ch thước sản phẩm (D x R x C cm)</td>\n			<td>25 x 10 x 1</td>\n		</tr>\n		<tr>\n			<td>Bảo h&agrave;nh</td>\n			<td>Kh&ocirc;ng</td>\n		</tr>\n		<tr>\n			<td>Trọng lượng (KG)</td>\n			<td>0.3</td>\n		</tr>\n	</tbody>\n</table>\n', '<p><strong>TH&Ocirc;NG TIN SẢN PHẨM</strong></p>\n\n<p>&Aacute;o sơ mi nam<br />\nM&agrave;u: Trắng<br />\nChất liệu: Cotton<br />\nSản xuất tại Việt Nam<br />\nThiết kế trẻ trung; thời trang<br />\nKh&ocirc;ng bảo h&agrave;nh</p>\n', 10, 0, 240000, 220000, '2016-05-15 09:24:41', 'Ngô Tiến Phát', '2016-05-15 09:24:41', 'Ngô Tiến Phát', 1, 1, 1),
(119, 12, 'Sơ mi nam 2', 'so-mi-nam-21.jpg', 'so-mi-nam-2', '<p>Bộ sản phẩm bao gồm:</p>\n\n<ul>\n	<li>1 x &Aacute;o</li>\n</ul>\n\n<p>Đặc điểm ch&iacute;nh:</p>\n\n<table>\n	<tbody>\n		<tr>\n			<td>SKU</td>\n			<td>HU630FAAUHBVVNAMZ-475729</td>\n		</tr>\n		<tr>\n			<td>M&agrave;u</td>\n			<td>Kẻ xanh - trắng</td>\n		</tr>\n		<tr>\n			<td>Chất liệu</td>\n			<td>Cotton</td>\n		</tr>\n		<tr>\n			<td>Mẫu m&atilde;</td>\n			<td>Caro07-D</td>\n		</tr>\n		<tr>\n			<td>K&iacute;ch thước sản phẩm (D x R x C cm)</td>\n			<td>25 x 10 x 1</td>\n		</tr>\n		<tr>\n			<td>Bảo h&agrave;nh</td>\n			<td>Kh&ocirc;ng</td>\n		</tr>\n		<tr>\n			<td>Trọng lượng (KG)</td>\n			<td>0.3</td>\n		</tr>\n	</tbody>\n</table>\n', '<p><strong>TH&Ocirc;NG TIN SẢN PHẨM</strong></p>\n\n<p>&Aacute;o sơ mi nam<br />\nM&agrave;u: Kẻ xanh - trắng<br />\nChất liệu: Cotton<br />\nSản xuất tại Việt Nam<br />\nThiết kế trẻ trung; thời trang<br />\nKh&ocirc;ng bảo h&agrave;nh</p>\n', 7, 0, 230000, 200000, '2016-05-15 09:24:18', 'Ngô Tiến Phát', '2016-05-15 09:24:18', 'Ngô Tiến Phát', 1, 1, 1),
(120, 12, 'Sơ mi nam 3', 'so-mi-nam-31.jpg', 'so-mi-nam-3', '', '', 13, 0, 189000, 170000, '2016-05-15 09:15:38', 'Ngô Tiến Phát', '2016-05-15 09:15:38', 'Ngô Tiến Phát', 1, 1, 1),
(121, 12, 'Sơ mi nam 4', 'so-mi-nam-41.jpg', 'so-mi-nam-4', '<p>Bộ sản phẩm bao gồm:</p>\n\n<ul>\n	<li>1 x &Aacute;o</li>\n</ul>\n\n<p>Đặc điểm ch&iacute;nh:</p>\n\n<table>\n	<tbody>\n		<tr>\n			<td>SKU</td>\n			<td>HU630FAAUHBVVNAMZ-475729</td>\n		</tr>\n		<tr>\n			<td>M&agrave;u</td>\n			<td>T&iacute;m</td>\n		</tr>\n		<tr>\n			<td>Chất liệu</td>\n			<td>Cotton</td>\n		</tr>\n		<tr>\n			<td>Mẫu m&atilde;</td>\n			<td>Caro07-D</td>\n		</tr>\n		<tr>\n			<td>K&iacute;ch thước sản phẩm (D x R x C cm)</td>\n			<td>25 x 10 x 1</td>\n		</tr>\n		<tr>\n			<td>Bảo h&agrave;nh</td>\n			<td>Kh&ocirc;ng</td>\n		</tr>\n		<tr>\n			<td>Trọng lượng (KG)</td>\n			<td>0.3</td>\n		</tr>\n	</tbody>\n</table>\n', '<p><strong>TH&Ocirc;NG TIN SẢN PHẨM</strong></p>\n\n<p>&Aacute;o sơ mi nam<br />\nM&agrave;u: T&iacute;m<br />\nChất liệu: Cotton<br />\nSản xuất tại Việt Nam<br />\nThiết kế trẻ trung; thời trang<br />\nKh&ocirc;ng bảo h&agrave;nh</p>\n', 5, 0, 240000, 220000, '2016-05-15 09:23:36', 'Ngô Tiến Phát', '2016-05-15 09:23:36', 'Ngô Tiến Phát', 1, 1, 1),
(122, 12, 'Sơ mi nam dài tay', 'so-mi-dai-tay-11.jpg', 'so-mi-nam-dai-tay', '<p>Bộ sản phẩm bao gồm:</p>\n\n<ul>\n	<li>1 x &Aacute;o</li>\n</ul>\n\n<p>Đặc điểm ch&iacute;nh:</p>\n\n<table>\n	<tbody>\n		<tr>\n			<td>SKU</td>\n			<td>HU630FAAUHBVVNAMZ-475729</td>\n		</tr>\n		<tr>\n			<td>M&agrave;u</td>\n			<td>Trắng</td>\n		</tr>\n		<tr>\n			<td>Chất liệu</td>\n			<td>Cotton</td>\n		</tr>\n		<tr>\n			<td>Mẫu m&atilde;</td>\n			<td>Caro07-D</td>\n		</tr>\n		<tr>\n			<td>K&iacute;ch thước sản phẩm (D x R x C cm)</td>\n			<td>25 x 10 x 1</td>\n		</tr>\n		<tr>\n			<td>Bảo h&agrave;nh</td>\n			<td>Kh&ocirc;ng</td>\n		</tr>\n		<tr>\n			<td>Trọng lượng (KG)</td>\n			<td>0.3</td>\n		</tr>\n	</tbody>\n</table>\n', '<p><strong>TH&Ocirc;NG TIN SẢN PHẨM</strong></p>\n\n<p>&Aacute;o sơ mi nam<br />\nM&agrave;u: Trắng<br />\nChất liệu: Cotton<br />\nSản xuất tại Việt Nam<br />\nThiết kế trẻ trung; thời trang<br />\nKh&ocirc;ng bảo h&agrave;nh</p>\n', 25, 0, 240000, 220000, '2016-05-15 09:23:08', 'Ngô Tiến Phát', '2016-05-15 09:23:08', 'Ngô Tiến Phát', 1, 1, 1),
(123, 12, 'Sơ mi nam đỏ', 'sms-tim-021.jpg', 'so-mi-nam-do', '<p>Bộ sản phẩm bao gồm:</p>\n\n<ul>\n	<li>1 x &Aacute;o</li>\n</ul>\n\n<p>Đặc điểm ch&iacute;nh:</p>\n\n<table>\n	<tbody>\n		<tr>\n			<td>SKU</td>\n			<td>HU630FAAUHBVVNAMZ-475729</td>\n		</tr>\n		<tr>\n			<td>M&agrave;u</td>\n			<td>đỏ</td>\n		</tr>\n		<tr>\n			<td>Chất liệu</td>\n			<td>Cotton</td>\n		</tr>\n		<tr>\n			<td>Mẫu m&atilde;</td>\n			<td>Caro07-D</td>\n		</tr>\n		<tr>\n			<td>K&iacute;ch thước sản phẩm (D x R x C cm)</td>\n			<td>25 x 10 x 1</td>\n		</tr>\n		<tr>\n			<td>Bảo h&agrave;nh</td>\n			<td>Kh&ocirc;ng</td>\n		</tr>\n		<tr>\n			<td>Trọng lượng (KG)</td>\n			<td>0.3</td>\n		</tr>\n	</tbody>\n</table>\n', '<p><strong>TH&Ocirc;NG TIN SẢN PHẨM</strong></p>\n\n<p>&Aacute;o sơ mi nam<br />\nM&agrave;u:&nbsp;đỏ<br />\nChất liệu: Cotton<br />\nSản xuất tại Việt Nam<br />\nThiết kế trẻ trung; thời trang<br />\nKh&ocirc;ng bảo h&agrave;nh</p>\n', 16, 0, 300000, 280000, '2016-05-15 09:22:24', 'Ngô Tiến Phát', '2016-05-15 09:22:24', 'Ngô Tiến Phát', 1, 1, 1),
(124, 12, 'Sơ mi nam tím', 'sms15-tim-011.jpg', 'so-mi-nam-tim', '<p>Bộ sản phẩm bao gồm:</p>\n\n<ul>\n	<li>1 x &Aacute;o</li>\n</ul>\n\n<p>Đặc điểm ch&iacute;nh:</p>\n\n<table>\n	<tbody>\n		<tr>\n			<td>SKU</td>\n			<td>HU630FAAUHBVVNAMZ-475729</td>\n		</tr>\n		<tr>\n			<td>M&agrave;u</td>\n			<td>N&acirc;u</td>\n		</tr>\n		<tr>\n			<td>Chất liệu</td>\n			<td>Cotton</td>\n		</tr>\n		<tr>\n			<td>Mẫu m&atilde;</td>\n			<td>Caro07-D</td>\n		</tr>\n		<tr>\n			<td>K&iacute;ch thước sản phẩm (D x R x C cm)</td>\n			<td>25 x 10 x 1</td>\n		</tr>\n		<tr>\n			<td>Bảo h&agrave;nh</td>\n			<td>Kh&ocirc;ng</td>\n		</tr>\n		<tr>\n			<td>Trọng lượng (KG)</td>\n			<td>0.3</td>\n		</tr>\n	</tbody>\n</table>\n', '<p><strong>TH&Ocirc;NG TIN SẢN PHẨM</strong></p>\n\n<p>&Aacute;o sơ mi nam<br />\nM&agrave;u: t&iacute;m<br />\nChất liệu: Cotton<br />\nSản xuất tại Việt Nam<br />\nThiết kế trẻ trung; thời trang<br />\nKh&ocirc;ng bảo h&agrave;nh</p>\n', 17, 0, 270000, 250000, '2016-05-15 09:21:47', 'Ngô Tiến Phát', '2016-05-15 09:21:47', 'Ngô Tiến Phát', 1, 1, 1),
(125, 12, 'Sơ mi nam đen', 'so-mi-dai-tay-21.jpg', 'so-mi-nam-den', '<p>Bộ sản phẩm bao gồm:</p>\n\n<ul>\n	<li>1 x &Aacute;o</li>\n</ul>\n\n<p>Đặc điểm ch&iacute;nh:</p>\n\n<table>\n	<tbody>\n		<tr>\n			<td>SKU</td>\n			<td>HU630FAAUHBVVNAMZ-475729</td>\n		</tr>\n		<tr>\n			<td>M&agrave;u</td>\n			<td>N&acirc;u</td>\n		</tr>\n		<tr>\n			<td>Chất liệu</td>\n			<td>Cotton</td>\n		</tr>\n		<tr>\n			<td>Mẫu m&atilde;</td>\n			<td>Caro07-D</td>\n		</tr>\n		<tr>\n			<td>K&iacute;ch thước sản phẩm (D x R x C cm)</td>\n			<td>25 x 10 x 1</td>\n		</tr>\n		<tr>\n			<td>Bảo h&agrave;nh</td>\n			<td>Kh&ocirc;ng</td>\n		</tr>\n		<tr>\n			<td>Trọng lượng (KG)</td>\n			<td>0.3</td>\n		</tr>\n	</tbody>\n</table>\n', '<p><strong>TH&Ocirc;NG TIN SẢN PHẨM</strong></p>\n\n<p>&Aacute;o sơ mi nam<br />\nM&agrave;u:&nbsp;đen<br />\nChất liệu: Cotton<br />\nSản xuất tại Việt Nam<br />\nThiết kế trẻ trung; thời trang<br />\nKh&ocirc;ng bảo h&agrave;nh</p>\n', 18, 0, 270000, 240000, '2016-05-15 09:21:58', 'Ngô Tiến Phát', '2016-05-15 09:21:58', 'Ngô Tiến Phát', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ci_user`
--

CREATE TABLE IF NOT EXISTS `ci_user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` int(11) NOT NULL,
  `email` varchar(255) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` text COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `logined` datetime NOT NULL,
  `level` int(11) NOT NULL,
  `access` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ci_user`
--

INSERT INTO `ci_user` (`id`, `username`, `password`, `gender`, `email`, `fullname`, `address`, `phone`, `created`, `updated`, `logined`, `level`, `access`, `status`) VALUES
(1, 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 'quangphatc3@gmail.com', 'Ngô Tiến Phát', 'Đống Đa, Hà Nội', '0967085852', '2016-02-17 11:21:37', '2016-02-17 11:21:37', '2016-02-17 11:21:37', 3, 1, 1),
(6, 'admin2', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 'quangphatc3@gmail.com', 'Ngô Tiến Phát', 'Đống Đa, Hà Nội', '0967085852', '2016-02-17 11:21:37', '2016-02-17 11:21:37', '2016-02-17 11:21:37', 2, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_category`
--
ALTER TABLE `ci_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_contact`
--
ALTER TABLE `ci_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_content`
--
ALTER TABLE `ci_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_customer`
--
ALTER TABLE `ci_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_email`
--
ALTER TABLE `ci_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_email_forgot_pw`
--
ALTER TABLE `ci_email_forgot_pw`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_members`
--
ALTER TABLE `ci_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_menu`
--
ALTER TABLE `ci_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_order`
--
ALTER TABLE `ci_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_product`
--
ALTER TABLE `ci_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_user`
--
ALTER TABLE `ci_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ci_category`
--
ALTER TABLE `ci_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `ci_contact`
--
ALTER TABLE `ci_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `ci_content`
--
ALTER TABLE `ci_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `ci_customer`
--
ALTER TABLE `ci_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ci_email`
--
ALTER TABLE `ci_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `ci_email_forgot_pw`
--
ALTER TABLE `ci_email_forgot_pw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `ci_members`
--
ALTER TABLE `ci_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `ci_menu`
--
ALTER TABLE `ci_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `ci_order`
--
ALTER TABLE `ci_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ci_product`
--
ALTER TABLE `ci_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=126;
--
-- AUTO_INCREMENT for table `ci_user`
--
ALTER TABLE `ci_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
