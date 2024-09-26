-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2024 at 06:56 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cinema_choodu`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner_phim`
--

CREATE TABLE `banner_phim` (
  `maBanner` bigint(20) UNSIGNED NOT NULL,
  `duongDan` varchar(255) NOT NULL,
  `fileName` varchar(255) DEFAULT NULL,
  `hinhAnh` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_phim`
--

INSERT INTO `banner_phim` (`maBanner`, `duongDan`, `fileName`, `hinhAnh`, `created_at`, `updated_at`) VALUES
(1, 'https://www.bing.com/search?pglt=43&q=nextfix&cvid=552c8bb07ba34a5685249e0566f03483&gs_lcrp=EgZjaHJvbWUqBggAEEUYOzIGCAAQRRg7MgYIARAAGEAyBggCEAAYQDIGCAMQRRg7MgYIBBBFGDsyBggFEAAYQDIGCAYQLhhAMgYIBxBFGDsyBggIEAAYQNIBBzg3NWowajGoAgCwAgA&FORM=ANNTA1&PC=U531', 'TC2zciq1OKgp.png', 'http://127.0.0.1:8000/images/banner/TC2zciq1OKgp.png', '2024-05-05 21:54:20', '2024-05-06 08:41:00'),
(2, 'https://www.bing.com/search?pglt=43&q=nextfix&cvid=552c8bb07ba34a5685249e0566f03483&gs_lcrp=EgZjaHJvbWUqBggAEEUYOzIGCAAQRRg7MgYIARAAGEAyBggCEAAYQDIGCAMQRRg7MgYIBBBFGDsyBggFEAAYQDIGCAYQLhhAMgYIBxBFGDsyBggIEAAYQNIBBzg3NWowajGoAgCwAgA&FORM=ANNTA1&PC=U531', 'KcdEEI7htCBx.jpg', 'http://127.0.0.1:8000/images/banner/KcdEEI7htCBx.jpg', '2024-05-06 02:54:29', '2024-05-06 08:50:20'),
(3, 'https://www.bing.com/search?pglt=43&q=nextfix&cvid=552c8bb07ba34a5685249e0566f03483&gs_lcrp=EgZjaHJvbWUqBggAEEUYOzIGCAAQRRg7MgYIARAAGEAyBggCEAAYQDIGCAMQRRg7MgYIBBBFGDsyBggFEAAYQDIGCAYQLhhAMgYIBxBFGDsyBggIEAAYQNIBBzg3NWowajGoAgCwAgA&FORM=ANNTA1&PC=U531', 'DFpMIm8ORB6R.jpg', 'http://127.0.0.1:8000/images/banner/DFpMIm8ORB6R.jpg', '2024-05-06 08:40:44', '2024-05-06 08:52:56');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `maComment` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `useremail` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `maBaiViet` bigint(20) UNSIGNED DEFAULT NULL,
  `maPhim` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`maComment`, `username`, `useremail`, `comment`, `maBaiViet`, `maPhim`, `created_at`, `updated_at`) VALUES
(3, 'Cao Triều', 'caotrieu0708@gmail.com', 'phim hay quá', NULL, 13, '2024-05-06 09:53:28', '2024-05-06 09:53:28');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `maFeedback` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `tieuDe` text NOT NULL,
  `noiDung` text NOT NULL,
  `ngayXuLy` date DEFAULT NULL,
  `noiDungXuLy` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`maFeedback`, `email`, `tieuDe`, `noiDung`, `ngayXuLy`, `noiDungXuLy`, `created_at`, `updated_at`) VALUES
(1, 'caotrieu0708@gmail.com', 'Cần Hỗ Trợ', 'Tôi Chưa Biết Cách Đặt Vé', NULL, NULL, '2024-05-06 09:51:55', '2024-05-06 09:51:55');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2023_06_22_025155_create_news_table', 1),
(11, '2023_06_28_171800_banner_table', 1),
(12, '2023_06_30_170151_showtime', 1),
(13, '2023_07_01_142911_create_movies_table', 1),
(14, '2023_07_03_141715_create_rapchieu', 1),
(15, '2023_07_03_151149_create_seats', 1),
(16, '2023_07_15_150346_create_province_table', 1),
(17, '2023_07_17_115318_create_comment_article', 1),
(18, '2023_07_22_025520_create_orderdetail_table', 1),
(19, '2023_07_29_091521_create_feedback_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `maPhim` bigint(20) UNSIGNED NOT NULL,
  `tenPhim` varchar(255) NOT NULL,
  `trailer` varchar(255) NOT NULL,
  `hinhAnh` varchar(255) NOT NULL,
  `fileName` varchar(255) DEFAULT NULL,
  `moTa` text NOT NULL,
  `ngayKhoiChieu` date NOT NULL,
  `danhGia` int(11) NOT NULL,
  `hot` tinyint(1) NOT NULL,
  `dangChieu` tinyint(1) NOT NULL,
  `sapChieu` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`maPhim`, `tenPhim`, `trailer`, `hinhAnh`, `fileName`, `moTa`, `ngayKhoiChieu`, `danhGia`, `hot`, `dangChieu`, `sapChieu`, `created_at`, `updated_at`) VALUES
(13, 'Lật Mặt 7', 'https://youtu.be/QdtPQ0wV53M?si=Jq73ThCVgfuO1lZw', 'http://127.0.0.1:8000/images/movie/eGZ8rhuPFDVS.jpg', 'eGZ8rhuPFDVS.jpg', 'Một câu chuyện lần đầu được kể bằng tất cả tình yêu, và từ tất cả những hồi ức xao xuyến nhất của đấng sinh thành', '2024-05-08', 9, 1, 1, 0, '2024-05-06 08:58:09', '2024-05-06 08:58:09'),
(14, 'TAROT', 'TAROT', 'http://127.0.0.1:8000/images/movie/LthfJd9sPFDY.jpg', 'LthfJd9sPFDY.jpg', 'Bạn sẽ nhìn thấy ai khi trút hơi thở cuối cùng?', '2024-05-09', 7, 0, 1, 0, '2024-05-06 08:58:57', '2024-05-06 08:58:57'),
(15, 'VÂY HÃM: KẺ TRỪNG PHẠT', 'VÂY HÃM: KẺ TRỪNG PHẠT', 'http://127.0.0.1:8000/images/movie/SyuOAxRC2hOn.jpg', 'SyuOAxRC2hOn.jpg', 'Siêu cớm Ma Seok-do tái xuất để đối đầu với những tội phạm tinh vi trong giới công nghệ. Nắm đấm trứ danh liệu có phát huy được sức mạnh trước liên minh tội phạm của thiên tài công nghệ và ông trùm nhà cái lớn nhất châu Á?', '2024-05-10', 10, 0, 1, 0, '2024-05-06 08:59:52', '2024-05-06 08:59:52'),
(16, 'CÁI GIÁ CỦA HẠNH PHÚC', 'https://youtu.be/79BznZKQwIQ', 'http://127.0.0.1:8000/images/movie/4W3PNHVDOFf7.jpg', '4W3PNHVDOFf7.jpg', 'Bà Dương và ông Thoại luôn cố gắng để xây dựng một hình ảnh gia đình tài giỏi và danh giá trong mắt mọi người. Tuy nhiên dưới lớp vỏ bọc hào nhoáng ấy là những biến cố và lục đục gia đình đầy sóng gió. Nhìn kĩ hơn một chút bức tranh gia đình hạnh phúc ấy, rất nhiều “khuyết điểm” sẽ lộ ra gây bất ngờ.', '2024-05-11', 8, 1, 1, 0, '2024-05-06 09:01:32', '2024-05-06 09:01:32'),
(17, 'PANDA ĐẠI NÁO LÃNH ĐỊA VUA SƯ TỬ', 'https://youtu.be/rRH92bl22PY', 'http://127.0.0.1:8000/images/movie/GCbhyrO3NVtM.jpg', 'GCbhyrO3NVtM.jpg', 'Để giải cứu rồng con Tiểu Long đang bị bắt cóc sang châu Phi, Gấu trúc Bư quyết định ra đi tìm đường cứu bạn. Trên hành trình của mình, Bư đã khám phá ra một thế giới hoàn toàn xa lạ và phải đối mặt với những con hà mã đáng sợ, những con linh cẩu khôn ngoan và những con khỉ đột chiêu trò. Dựa vào trí thông minh của mình, Bư đã tìm đường băng xuyên châu Phi trước khi giải cứu Tiểu Long và cứu ngôi nhà trong rừng rậm của những người bạn mới trước âm mưu tàn ác của sư tử Malume.', '2024-05-17', 9, 1, 1, 1, '2024-05-06 09:02:30', '2024-05-06 09:02:30'),
(18, 'GẤU BÉO TUNG CHƯỞNG', 'https://www.youtube.com/watch?v=gq2xKJXYZ80', 'http://127.0.0.1:8000/images/movie/dL3qa4gGtp3L.jpg', 'dL3qa4gGtp3L.jpg', 'Sau khi dẹp loạn cái ác khỏi Thành Phố Thánh Địa, Chiến Binh Gấu Túi Maggie lẫy lừng một thời giờ đây chỉ còn bận rộn trong cuộc sống... thông cống và nộp thuế thay vì bảo vệ hòa bình thế giới. Khi một gã thiên tài công nghệ hiểm ác muốn giam cầm thành phố của Maggie trong một không gian ảo, cô một lần nữa trở lại với sứ mệnh anh hùng cùng trợ lý sóc bay Sweetie để ngăn chặn âm mưu động trời.', '2024-05-09', 7, 1, 1, 1, '2024-05-06 09:06:37', '2024-05-06 09:06:37'),
(19, 'NẮM ĐẤM TRỜI BAN', 'https://youtu.be/jh03QE4RCHU', 'http://127.0.0.1:8000/images/movie/NYERZ5nfQhIn.jpg', 'NYERZ5nfQhIn.jpg', 'Để tránh bị lộ danh tính và đi bóc lịch, hai vị linh mục và sư thầy, vốn từng là hai gã giang hồ khét tiếng, đành chấp nhận hợp tác với tay cảnh sát chìm đội lốt pháp sư nhằm lật tẩy tên trùm mafia xảo quyệt.', '2024-05-03', 6, 0, 1, 0, '2024-05-06 09:08:34', '2024-05-06 09:08:34'),
(20, 'ARTHUR: CHÚ CHÓ KIÊN CƯỜNG', 'https://youtu.be/y6taTQk1IY4', 'http://127.0.0.1:8000/images/movie/T6hmE7Ekforv.jpg', 'T6hmE7Ekforv.jpg', '“Arthur The King” dựa trên một câu chuyện có thật của Mikael Lindnord, tay đua từng tham gia chinh phục giải thi đấu thể thao mạo hiểm nhất trên thế giới mang tên Adventure Races Worldwide (ARW) - giải đua kết hợp chạy bộ đường dài, thể thao địa hình, chèo thuyền kayak, đua xe đạp Một cuộc gặp gỡ bất ngờ giữa tay đua mạo hiểm chuyên nghiệp Michael Light (Mark Wahlberg) và một người bạn đồng hành là chú chó đường phố tốt bụng tên là Arthur đã tạo nên sự kết nối kì diệu. Khoảnh khắc cả đội bị đẩy đến giới hạn sức chịu đựng trong cuộc đua, Arthur đã xuất hiện và giúp đội hiểu được ý nghĩa thực sự của chiến thắng, lòng trung thành và tình bạn. Đây là một hành trình khó quên!', '2024-05-03', 7, 1, 1, 0, '2024-05-06 09:09:51', '2024-05-06 09:09:51'),
(21, 'Ổ NHỆN', 'https://youtu.be/YyaJQj5TCts', 'http://127.0.0.1:8000/images/movie/x8cHNage8Vc2.jpg', 'x8cHNage8Vc2.jpg', 'Các cư dân của một tòa nhà chung cư tồi tàn ở Pháp chiến đấu chống lại đội quân nhện sinh sản nhanh chóng và đầy nguy hiểm.', '2024-05-10', 9, 1, 0, 1, '2024-05-06 09:12:19', '2024-05-06 09:12:19'),
(22, 'HÀNH TINH KHỈ: VƯƠNG QUỐC MỚI', 'https://youtu.be/Z0EL1PDgPS0', 'http://127.0.0.1:8000/images/movie/Le4bv08FxsFh.jpg', 'Le4bv08FxsFh.jpg', 'Đạo diễn Wes Ball mang một hơi thở mới đến loạt phim điện ảnh danh tiếng này. Lấy bối cảnh nhiều đời sau sự ra đi của Vua Khỉ Caesar, hành tinh này là nơi loài khỉ thống trị, còn loài người dần lui về trong bóng tối. Khi một thủ lĩnh khỉ có tên Proximus Caesar xây dựng đế chế của mình, chú khỉ trẻ tuổi Noa bắt đầu một hành trình gian khổ, đặt câu hỏi về tất cả những gì anh ta đã biết về quá khứ và đưa ra những lựa chọn định hình lại tương lai cho cả loài khỉ và loài người.', '2024-05-10', 8, 0, 0, 1, '2024-05-06 09:13:23', '2024-05-06 09:13:23'),
(23, 'PHIM ĐIỆN ẢNH DORAEMON: NOBITA VÀ BẢN GIAO HƯỞNG ĐỊA CẦU', 'https://youtu.be/Yug8gbDd5EQ', 'http://127.0.0.1:8000/images/movie/hToC8KfA5dw5.jpg', 'hToC8KfA5dw5.jpg', 'TÁC PHẨM KỶ NIỆM 90 NĂM FUJIKO F FUJIO Chuẩn bị cho buổi hòa nhạc ở trường, Nobita đang tập thổi sáo - nhạc cụ mà cậu dở tệ. Thích thú trước nốt \"No\" lạc quẻ của Nobita, Micca - cô bé bí ẩn đã mời Doraemon, Nobita cùng nhóm bạn đến \"Farre\" - Cung điện âm nhạc tọa lạc trên một hành tinh nơi âm nhạc sẽ hóa thành năng lượng. Nhằm cứu cung điện này, Micca đang tìm kiếm \"virtuoso\" - bậc thầy âm nhạc sẽ cùng mình biểu diễn! Với bảo bối thần kì \"chứng chỉ chuyên viên âm nhạc\", Doraemon và các bạn đã chọn nhạc cụ, cùng Micca hòa tấu, từng bước khôi phục cung điện. Tuy nhiên, một vật thể sống đáng sợ sẽ xóa số âm nhạc khỏi thế giới đang đến gần, Trái Đất đang rơi vào nguy hiểm... ! Liệu những người bạn nhỏ có thể cứu được \"tương lai âm nhạc\" và cả địa cầu này?', '2024-05-24', 6, 0, 0, 1, '2024-05-06 09:14:46', '2024-05-06 09:14:46'),
(24, 'ÁN MẠNG LẦU 4', 'https://youtu.be/agzckaoLRaY', 'http://127.0.0.1:8000/images/movie/dJa9L8Da1PSP.jpg', 'dJa9L8Da1PSP.jpg', 'Chỉ còn vài giờ đồng hồ trước khi ra sân bay, một cặp vợ chồng tốt bụng đã nhận trông giúp một đứa trẻ sơ sinh từ người hàng xóm. Không ngờ rằng không lâu sau đó, họ phát hiện đứa bé đã chết từ lúc nào… Một câu chuyện hồi hộp nghẹt thở xảy ra chỉ trong buổi chiều định mệnh tại căn hộ chung cư cũ. Cặp vợ chồng phải căng não thoát khỏi tình huống nghiệt ngã, đồng thời tìm ra thủ phạm đã đẩy họ vào tình thế này.', '2024-05-17', 8, 0, 0, 1, '2024-05-06 09:16:04', '2024-05-06 09:16:04');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('056e5e4ad9b9d3cbc1760d41dcb75d23c7f9b5ddd9ac5aa2bd54dbbe2d85b86590f26129546468d8', 10, 1, 'Personal Access Token', '[]', 0, '2024-05-06 02:47:59', '2024-05-06 02:47:59', '2025-05-06 09:47:59'),
('06a5571f7dbddada42114ac961cf410ad27e270c608cba03e9df6e8d9bf96689afb56c7bd98e5d46', 7, 1, 'Personal Access Token', '[]', 0, '2024-05-05 23:40:36', '2024-05-05 23:40:36', '2025-05-06 06:40:36'),
('1331ee45ca90de7870804e6ea5aaf4e901b081caea68995d3c186f12d64afff87f9c28b7eff9344a', 5, 1, 'Personal Access Token', '[]', 0, '2024-05-05 22:16:56', '2024-05-05 22:16:56', '2025-05-06 05:16:56'),
('15cc82104d9b45c82cec73257ab5be0c8306371243131ee3df98f81c879e6bc8a5bb98f575637b2a', 8, 1, 'Personal Access Token', '[]', 0, '2024-05-07 01:37:10', '2024-05-07 01:37:10', '2025-05-07 08:37:10'),
('16de09b7ce6f5d9626e1576fb80a7411bf3a7aee6199f6ae1e1e42dfcdc20353263829179c8412ea', 6, 1, 'Personal Access Token', '[]', 0, '2024-05-05 22:26:25', '2024-05-05 22:26:25', '2025-05-06 05:26:25'),
('1971d2d7071d926d2193075512887d5e9d00045e7c9b34391dc4c08b7d8dce77e25832fd700343d5', 6, 1, 'Personal Access Token', '[]', 0, '2024-05-05 22:26:41', '2024-05-05 22:26:41', '2025-05-06 05:26:41'),
('23bbe4757e5a14e7478847a0831beb7f5b5574d0cd5c2a78293d6b6b7aecaf9b0493ad2205c539f0', 11, 1, 'Personal Access Token', '[]', 0, '2024-05-06 09:50:31', '2024-05-06 09:50:31', '2025-05-06 16:50:31'),
('29ce17a6da3c5d4754c9a03b41b078f420af50abe395b4e839eb20daa3eee07c3e4b855c4227f218', 8, 1, 'Personal Access Token', '[]', 0, '2024-05-07 01:45:18', '2024-05-07 01:45:18', '2025-05-07 08:45:18'),
('2b5c0d7a777294c8ebfe9d7ef0decee60e00ebdb0a07ac0b32d863eb95f1821f262ee20eafdbf3db', 5, 1, 'Personal Access Token', '[]', 0, '2024-05-06 02:30:23', '2024-05-06 02:30:23', '2025-05-06 09:30:23'),
('3fdedcd4db81af0d366d9317808421cdb35d600deeb96045e8226bd1bf1d9a830173170105e47579', 7, 1, 'Personal Access Token', '[]', 0, '2024-05-05 23:35:51', '2024-05-05 23:35:51', '2025-05-06 06:35:51'),
('4b233160cb33bdd4c44a1f2882c7919746942669470ec88d8a9ee1cd8f57de0fdb9f68283e5e66f8', 8, 1, 'Personal Access Token', '[]', 0, '2024-05-06 09:53:18', '2024-05-06 09:53:18', '2025-05-06 16:53:18'),
('529a8bf8bd0bd4f0c95fd73687c75f881ba5acf917692cad0c5febaae104881d845f1ea515a3be47', 5, 1, 'Personal Access Token', '[]', 0, '2024-05-05 23:49:48', '2024-05-05 23:49:48', '2025-05-06 06:49:48'),
('575bad28f2eb501532f08327d99b7ff354ab596bb095ee82e51b9eadd690f6648a5b5960915810ee', 5, 1, 'Personal Access Token', '[]', 0, '2024-05-05 21:48:53', '2024-05-05 21:48:53', '2025-05-06 04:48:53'),
('5b7ca19f7d3ec7ca5c6f8fc20d55624e17c2ef1371d0cb182ef0f8e0a87bc1e728f367641f5deffa', 5, 1, 'Personal Access Token', '[]', 0, '2024-05-05 23:41:36', '2024-05-05 23:41:36', '2025-05-06 06:41:36'),
('6b69f6ad6523a1a8fb702cff5559ab94909e92f69454d5d388445ccc0da58f5f67a539bc1a04858a', 8, 1, 'Personal Access Token', '[]', 0, '2024-05-07 01:42:57', '2024-05-07 01:42:57', '2025-05-07 08:42:57'),
('6bcde09f2b7fd001297e3a1c6dd9a4a9cf0f47d2aab56bec7ea02121fafac1a52864a0bbf10108da', 5, 1, 'Personal Access Token', '[]', 0, '2024-05-05 21:49:17', '2024-05-05 21:49:17', '2025-05-06 04:49:17'),
('79ca0c56110d69ad72e90001c2fc75c4134d0f7f86121c4fd3fa35d3c8d4ab3e293cf68f8e7a4bdf', 10, 1, 'Personal Access Token', '[]', 0, '2024-05-06 09:46:05', '2024-05-06 09:46:05', '2025-05-06 16:46:05'),
('840f8945ede6886ccde8847e434201b50479a826cbfa67b0d65c9fdc6e514447022d9ecef6aa143c', 10, 1, 'Personal Access Token', '[]', 0, '2024-05-06 22:01:24', '2024-05-06 22:01:24', '2025-05-07 05:01:24'),
('85b5ba8bd1c9ae2e0cc3ad5f143dba4507ae5cb31a5c3e18c06b4787a0e9c59538da300c558b0175', 8, 1, 'Personal Access Token', '[]', 0, '2024-05-06 09:47:27', '2024-05-06 09:47:27', '2025-05-06 16:47:27'),
('8ac8f4127ad2f8dd9a9560ff40bde4c8359f570122d13c85116b49dc47111821b78e46cc1ccec32b', 5, 1, 'Personal Access Token', '[]', 0, '2024-05-06 02:39:05', '2024-05-06 02:39:05', '2025-05-06 09:39:05'),
('8be41abc18f3659618caf6f0c92b0ca69bb9f546d55df4aa57d96b0d24471a84ef9664f327b743de', 9, 1, 'Personal Access Token', '[]', 0, '2024-05-06 02:46:55', '2024-05-06 02:46:55', '2025-05-06 09:46:55'),
('8c4bfc0d52d9c031c3980f68b9bb0371e2d3229d04b0077e2b790eb6b05326388f368a834be93cf3', 11, 1, 'Personal Access Token', '[]', 0, '2024-05-06 09:54:19', '2024-05-06 09:54:19', '2025-05-06 16:54:19'),
('93d709c6aa2faf034472cf94d973a48cea3db30c7365129763b1175b192a73dc297bf42f0013ad00', 5, 1, 'Personal Access Token', '[]', 0, '2024-05-05 21:47:49', '2024-05-05 21:47:49', '2025-05-06 04:47:49'),
('94680cbb0aca8d5cc6e2897c0d42aad26d28d5a23779d0656c7a430de5d89a3952682cd0f9103a85', 5, 1, 'Personal Access Token', '[]', 0, '2024-05-05 22:04:33', '2024-05-05 22:04:33', '2025-05-06 05:04:33'),
('9bb10b84d2b19aac30f5828e09ebe01727b43186fe31120d645762a82b3a19c71133c1630fad04f2', 8, 1, 'Personal Access Token', '[]', 0, '2024-05-06 02:44:50', '2024-05-06 02:44:50', '2025-05-06 09:44:50'),
('9f5c48a41f10167b4772a60503aee2f895e05466cd061168e1273acd6c10f320f1558ef67a84a8d5', 5, 1, 'Personal Access Token', '[]', 0, '2024-05-05 21:53:39', '2024-05-05 21:53:39', '2025-05-06 04:53:39'),
('a070c3a69f6674ed6759937202448c86f1675a9ded869ae880d6e9541d41c400c293b0d7e4f07198', 8, 1, 'Personal Access Token', '[]', 0, '2024-05-06 09:46:45', '2024-05-06 09:46:45', '2025-05-06 16:46:45'),
('a074ce716c4528e4a8c40450f4055ccae9a5029d429574a9792ea58321a4fb426f2b4dba3f28bf33', 10, 1, 'Personal Access Token', '[]', 0, '2024-05-06 09:55:30', '2024-05-06 09:55:30', '2025-05-06 16:55:30'),
('a62879054c7937f8e738721bacd3e8b4f248964beceb6c6c0181721f0dc53bca6c9956cdf7e0c8de', 6, 1, 'Personal Access Token', '[]', 0, '2024-05-05 22:27:46', '2024-05-05 22:27:46', '2025-05-06 05:27:46'),
('a99f3503e59476678c88113cc088be0e2022eddd275883544c0b318032163b7fdc43cd38e3d0d450', 5, 1, 'Personal Access Token', '[]', 0, '2024-05-05 22:10:58', '2024-05-05 22:10:58', '2025-05-06 05:10:58'),
('ace2e01d1b9be3ddde8e745329bb1b3dd420a1a854146129652f362b5aa3845f9a44199af4b128b4', 11, 1, 'Personal Access Token', '[]', 0, '2024-05-06 09:50:06', '2024-05-06 09:50:06', '2025-05-06 16:50:06'),
('b44140beeb68ac78534bf8d55cda54bbfcda5a1f4cee4c50849fca2b2a7c490dc83907806fcbd6a7', 5, 1, 'Personal Access Token', '[]', 0, '2024-05-05 21:49:09', '2024-05-05 21:49:09', '2025-05-06 04:49:09'),
('b4584637d4d52e539064f7889de049e4da70ecc05a975cb8c455bb39e9608f8d135f48ce1a869592', 4, 1, 'Personal Access Token', '[]', 0, '2024-05-05 21:44:10', '2024-05-05 21:44:10', '2025-05-06 04:44:10'),
('b5e0e02cf8220773220832d66e172480989e0da95f9f4de548dd21c65febe9473f2ca2fce57af8de', 11, 1, 'Personal Access Token', '[]', 0, '2024-05-07 01:39:12', '2024-05-07 01:39:12', '2025-05-07 08:39:12'),
('bfa6ccae4faf8e26c04d0f90438e4a4e0f8ce3a9e325f810f571c8f12f741e733e0fe6da3aaf76b9', 10, 1, 'Personal Access Token', '[]', 0, '2024-05-06 09:48:02', '2024-05-06 09:48:02', '2025-05-06 16:48:02'),
('c0f26cea7d0f8ea506ccb3f443d40ba50e018e6ae5099d7254568a5cf131f7fc7705b2912d8ed481', 5, 1, 'Personal Access Token', '[]', 0, '2024-05-06 02:33:40', '2024-05-06 02:33:40', '2025-05-06 09:33:40'),
('c25ce19c4f71076cd6e88a70dccd4531857da286e824a7663dfeee03dd9f033e1feefb698632254a', 5, 1, 'Personal Access Token', '[]', 0, '2024-05-05 22:28:25', '2024-05-05 22:28:25', '2025-05-06 05:28:25'),
('c48d80f4bd1251babe10b00117e1b1d75e4b3a524422eef514a114b0c8666b62409931f4d6f39dc0', 11, 1, 'Personal Access Token', '[]', 0, '2024-05-07 01:45:28', '2024-05-07 01:45:28', '2025-05-07 08:45:28'),
('c5aa096b88232fd6682fef9eb668e8df50c9a7a3dc89786c990af302ed24ffba06979d5109d73cd2', 11, 1, 'Personal Access Token', '[]', 0, '2024-05-06 20:36:12', '2024-05-06 20:36:12', '2025-05-07 03:36:12'),
('cb8e42f15e52f09c1bf2cb0764d45e6ad64439101c57b86273c67818092baf9c341f4f151d7ed024', 10, 1, 'Personal Access Token', '[]', 0, '2024-05-06 20:34:47', '2024-05-06 20:34:47', '2025-05-07 03:34:47'),
('cea326ad972e6f8c908068393f884729ad72aded8af2fa80fcbcc40a2270b2efadfbf309989e21e7', 5, 1, 'Personal Access Token', '[]', 0, '2024-05-05 23:36:05', '2024-05-05 23:36:05', '2025-05-06 06:36:05'),
('d09886389eb351e89455cb5871daa51338a8d8304ec60d038e4874874765e3f6314d696752562282', 9, 1, 'Personal Access Token', '[]', 0, '2024-05-06 02:59:40', '2024-05-06 02:59:40', '2025-05-06 09:59:40'),
('e05b78b59664427f3513546f9554a7f9db8f395410aedd2db11f02be76a11e2881cad95b7e8c3c43', 6, 1, 'Personal Access Token', '[]', 0, '2024-05-05 22:23:23', '2024-05-05 22:23:23', '2025-05-06 05:23:23'),
('ec3b086dad6a7bdb71db4ea905f3ca7eeb39a1f681ffb73eda4921553954e4171a9720290177da95', 5, 1, 'Personal Access Token', '[]', 0, '2024-05-05 22:25:36', '2024-05-05 22:25:36', '2025-05-06 05:25:36'),
('ef957e1954c20053b148a05e797ea967dad6f77448e27b5e4b00f737e2e424fb14321c7254340011', 10, 1, 'Personal Access Token', '[]', 0, '2024-05-06 02:51:32', '2024-05-06 02:51:32', '2025-05-06 09:51:32'),
('f1c40655e9ba32db233c9e03ec2dd1ef76d3372a5e13899467facc2f35651491dd30eb7adc4fc4a7', 10, 1, 'Personal Access Token', '[]', 0, '2024-05-06 02:55:44', '2024-05-06 02:55:44', '2025-05-06 09:55:44'),
('f3536af34aa5f1e2f8c7f44252137637214000bb213b88639ecc6834da0c771e5960af102be87f9e', 5, 1, 'Personal Access Token', '[]', 0, '2024-05-05 21:51:55', '2024-05-05 21:51:55', '2025-05-06 04:51:55');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'nxRHtpel73FZRjEfTihiPoQJenpSzyKIsTdM49b8', NULL, 'http://localhost', 1, 0, 0, '2024-05-05 21:43:27', '2024-05-05 21:43:27'),
(2, NULL, 'Laravel Password Grant Client', '9RRaNhI9scFRnWx0vBShiPaPOstB480LJENRQq6R', 'users', 'http://localhost', 0, 1, 0, '2024-05-05 21:43:27', '2024-05-05 21:43:27');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-05-05 21:43:27', '2024-05-05 21:43:27');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE `orderdetail` (
  `maOrder` bigint(20) UNSIGNED NOT NULL,
  `maLichChieu` bigint(20) UNSIGNED NOT NULL,
  `rapChieu` varchar(255) NOT NULL,
  `maPhim` int(11) NOT NULL,
  `phim` varchar(255) NOT NULL,
  `gioChieu` varchar(255) NOT NULL,
  `ngayChieu` varchar(255) NOT NULL,
  `danhSachGhe` varchar(255) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tongTien` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orderdetail`
--

INSERT INTO `orderdetail` (`maOrder`, `maLichChieu`, `rapChieu`, `maPhim`, `phim`, `gioChieu`, `ngayChieu`, `danhSachGhe`, `userId`, `name`, `email`, `tongTien`, `created_at`, `updated_at`) VALUES
(5, 7, 'HiuCinema', 13, 'Lật Mặt 7', '02:00:00', '2024-05-10', '24, 25, 26, 40, 41', '8', 'Cao Triều', 'caotrieu0708@gmail.com', 350000, '2024-05-07 01:37:47', '2024-05-07 01:37:47'),
(6, 9, 'CGV', 22, 'HÀNH TINH KHỈ: VƯƠNG QUỐC MỚI', '02:00:00', '2024-05-10', '26, 27', '8', 'Cao Triều', 'caotrieu0708@gmail.com', 100000, '2024-05-07 01:43:36', '2024-05-07 01:43:36');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `maTinh` bigint(20) UNSIGNED NOT NULL,
  `tenTinh` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`maTinh`, `tenTinh`, `created_at`, `updated_at`) VALUES
(1, 'TP. Hồ Chí Minh', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(2, 'TP. Hà Nội', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(3, 'Đà Nẵng', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(4, 'An Giang', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(5, 'Bà Rịa-Vũng Tàu', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(6, 'Bạc Liêu', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(7, 'Bắc Giang', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(8, 'Bắc Kạn', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(9, 'Bắc Ninh', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(10, 'Bến Tre', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(11, 'Bình Dương', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(12, 'Bình Định', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(13, 'Bình Phước', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(14, 'Bình Thuận', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(15, 'Cà Mau', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(16, 'Cao Bằng', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(17, 'Cần Thơ', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(18, 'Đà Nẵng', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(19, 'Đắk Nông', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(20, 'Điện Biên', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(21, 'Đồng Nai', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(22, 'Đồng Tháp', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(23, 'Gia Lai', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(24, 'Hà Giang', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(25, 'Hà Nam', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(26, 'Hà Tĩnh', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(27, 'Hải Dương', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(28, 'Hải Phòng', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(29, 'Hậu Giang', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(30, 'Hòa Bình', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(31, 'Hưng Yên', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(32, 'Khánh Hòa', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(33, 'Kiên Giang', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(34, 'Kon Tum', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(35, 'Lai Châu', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(36, 'Lạng Sơn', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(37, 'Lào Cai', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(38, 'Lâm Đồng', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(39, 'Long An', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(40, 'Nam Định', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(41, 'Nghệ An', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(42, 'Ninh Bình', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(43, 'Ninh Thuận', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(44, 'Phú Thọ', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(45, 'Phú Yên', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(46, 'Quảng Bình', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(47, 'Quảng Bình', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(48, 'Quảng Ngãi', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(49, 'Quảng Ninh', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(50, 'Quảng Trị', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(51, 'Sóc Trăng', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(52, 'Sơn La', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(53, 'Tây Ninh', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(54, 'Thái Bình', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(55, 'Thái Nguyên', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(56, 'Thanh Hóa', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(57, 'Thừa Thiên Huế', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(58, 'Tiền Giang', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(59, 'Trà Vinh', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(60, 'Tuyên Quang', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(61, 'Vĩnh Long', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(62, 'Vĩnh Phúc', '2024-05-05 21:38:27', '2024-05-05 21:38:27'),
(63, 'Yên Bái', '2024-05-05 21:38:27', '2024-05-05 21:38:27');

-- --------------------------------------------------------

--
-- Table structure for table `rapchieu`
--

CREATE TABLE `rapchieu` (
  `maRap` bigint(20) UNSIGNED NOT NULL,
  `tenRap` varchar(255) NOT NULL,
  `maTinh_id` bigint(20) UNSIGNED DEFAULT NULL,
  `diaChi` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rapchieu`
--

INSERT INTO `rapchieu` (`maRap`, `tenRap`, `maTinh_id`, `diaChi`, `created_at`, `updated_at`) VALUES
(1, 'CGV', 1, 'Quận 1', '2024-05-05 21:52:14', '2024-05-06 02:52:20'),
(2, 'Galaxy', 1, 'Bình Thạnh', '2024-05-05 23:38:45', '2024-05-06 02:52:04'),
(3, 'Nguyễn Du', 1, 'Quận 2', '2024-05-06 02:53:09', '2024-05-06 02:53:09'),
(4, 'HiuCinema', 1, '215 Điên Biên Phủ', '2024-05-06 09:18:48', '2024-05-06 09:18:48');

-- --------------------------------------------------------

--
-- Table structure for table `seats`
--

CREATE TABLE `seats` (
  `maGhe` bigint(20) UNSIGNED NOT NULL,
  `tenGhe` varchar(255) NOT NULL,
  `loaiGhe` varchar(255) NOT NULL,
  `nguoiDat` varchar(255) DEFAULT NULL,
  `nguoiChon` varchar(255) DEFAULT NULL,
  `maLichChieu` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seats`
--

INSERT INTO `seats` (`maGhe`, `tenGhe`, `loaiGhe`, `nguoiDat`, `nguoiChon`, `maLichChieu`, `created_at`, `updated_at`) VALUES
(1, '1', 'thuong', NULL, NULL, 1, NULL, NULL),
(2, '2', 'thuong', NULL, NULL, 1, NULL, NULL),
(3, '3', 'thuong', NULL, NULL, 1, NULL, NULL),
(4, '4', 'thuong', NULL, NULL, 1, NULL, NULL),
(5, '5', 'thuong', NULL, NULL, 1, NULL, NULL),
(6, '6', 'thuong', NULL, NULL, 1, NULL, NULL),
(7, '7', 'thuong', NULL, NULL, 1, NULL, NULL),
(8, '8', 'thuong', NULL, NULL, 1, NULL, NULL),
(9, '9', 'thuong', NULL, NULL, 1, NULL, NULL),
(10, '10', 'thuong', NULL, NULL, 1, NULL, NULL),
(11, '11', 'thuong', NULL, NULL, 1, NULL, NULL),
(12, '12', 'thuong', NULL, NULL, 1, NULL, NULL),
(13, '13', 'thuong', NULL, NULL, 1, NULL, NULL),
(14, '14', 'thuong', 'NULL', NULL, 1, NULL, '2024-05-05 22:19:24'),
(15, '15', 'thuong', NULL, NULL, 1, NULL, NULL),
(16, '16', 'thuong', NULL, NULL, 1, NULL, NULL),
(17, '17', 'thuong', NULL, NULL, 1, NULL, NULL),
(18, '18', 'thuong', NULL, NULL, 1, NULL, NULL),
(19, '19', 'thuong', NULL, NULL, 1, NULL, NULL),
(20, '20', 'thuong', NULL, NULL, 1, NULL, NULL),
(21, '21', 'thuong', NULL, NULL, 1, NULL, NULL),
(22, '22', 'thuong', NULL, NULL, 1, NULL, NULL),
(23, '23', 'thuong', NULL, NULL, 1, NULL, NULL),
(24, '24', 'thuong', NULL, NULL, 1, NULL, NULL),
(25, '25', 'thuong', NULL, NULL, 1, NULL, NULL),
(26, '26', 'thuong', NULL, NULL, 1, NULL, NULL),
(27, '27', 'thuong', NULL, NULL, 1, NULL, NULL),
(28, '28', 'thuong', NULL, NULL, 1, NULL, NULL),
(29, '29', 'thuong', NULL, NULL, 1, NULL, NULL),
(30, '30', 'thuong', '5', NULL, 1, NULL, '2024-05-05 22:19:24'),
(31, '31', 'thuong', NULL, NULL, 1, NULL, NULL),
(32, '32', 'thuong', NULL, NULL, 1, NULL, NULL),
(33, '33', 'thuong', NULL, NULL, 1, NULL, NULL),
(34, '34', 'thuong', NULL, NULL, 1, NULL, NULL),
(35, '35', 'vip', NULL, NULL, 1, NULL, NULL),
(36, '36', 'vip', NULL, NULL, 1, NULL, NULL),
(37, '37', 'vip', NULL, NULL, 1, NULL, NULL),
(38, '38', 'vip', NULL, NULL, 1, NULL, NULL),
(39, '39', 'vip', NULL, NULL, 1, NULL, NULL),
(40, '40', 'vip', NULL, NULL, 1, NULL, NULL),
(41, '41', 'vip', NULL, NULL, 1, NULL, NULL),
(42, '42', 'vip', NULL, NULL, 1, NULL, NULL),
(43, '43', 'vip', NULL, NULL, 1, NULL, NULL),
(44, '44', 'vip', NULL, NULL, 1, NULL, NULL),
(45, '45', 'vip', NULL, NULL, 1, NULL, NULL),
(46, '46', 'vip', '6', NULL, 1, NULL, '2024-05-05 22:23:47'),
(47, '47', 'thuong', NULL, NULL, 1, NULL, NULL),
(48, '48', 'thuong', NULL, NULL, 1, NULL, NULL),
(49, '49', 'thuong', NULL, NULL, 1, NULL, NULL),
(50, '50', 'thuong', NULL, NULL, 1, NULL, NULL),
(51, '51', 'vip', NULL, NULL, 1, NULL, NULL),
(52, '52', 'vip', NULL, NULL, 1, NULL, NULL),
(53, '53', 'vip', NULL, NULL, 1, NULL, NULL),
(54, '54', 'vip', NULL, NULL, 1, NULL, NULL),
(55, '55', 'vip', NULL, NULL, 1, NULL, NULL),
(56, '56', 'vip', NULL, NULL, 1, NULL, NULL),
(57, '57', 'vip', NULL, NULL, 1, NULL, NULL),
(58, '58', 'vip', NULL, NULL, 1, NULL, NULL),
(59, '59', 'vip', NULL, NULL, 1, NULL, NULL),
(60, '60', 'vip', NULL, NULL, 1, NULL, NULL),
(61, '61', 'vip', NULL, NULL, 1, NULL, NULL),
(62, '62', 'vip', NULL, NULL, 1, NULL, NULL),
(63, '63', 'thuong', NULL, NULL, 1, NULL, NULL),
(64, '64', 'thuong', NULL, NULL, 1, NULL, NULL),
(65, '65', 'thuong', NULL, NULL, 1, NULL, NULL),
(66, '66', 'thuong', NULL, NULL, 1, NULL, NULL),
(67, '67', 'vip', NULL, NULL, 1, NULL, NULL),
(68, '68', 'vip', NULL, NULL, 1, NULL, NULL),
(69, '69', 'vip', NULL, NULL, 1, NULL, NULL),
(70, '70', 'vip', NULL, NULL, 1, NULL, NULL),
(71, '71', 'vip', NULL, NULL, 1, NULL, NULL),
(72, '72', 'vip', NULL, NULL, 1, NULL, NULL),
(73, '73', 'vip', NULL, NULL, 1, NULL, NULL),
(74, '74', 'vip', NULL, NULL, 1, NULL, NULL),
(75, '75', 'vip', NULL, NULL, 1, NULL, NULL),
(76, '76', 'vip', NULL, NULL, 1, NULL, NULL),
(77, '77', 'vip', NULL, NULL, 1, NULL, NULL),
(78, '78', 'vip', NULL, NULL, 1, NULL, NULL),
(79, '79', 'thuong', NULL, NULL, 1, NULL, NULL),
(80, '80', 'thuong', NULL, NULL, 1, NULL, NULL),
(81, '81', 'thuong', NULL, NULL, 1, NULL, NULL),
(82, '82', 'thuong', NULL, NULL, 1, NULL, NULL),
(83, '83', 'vip', NULL, NULL, 1, NULL, NULL),
(84, '84', 'vip', NULL, NULL, 1, NULL, NULL),
(85, '85', 'vip', NULL, NULL, 1, NULL, NULL),
(86, '86', 'vip', NULL, NULL, 1, NULL, NULL),
(87, '87', 'vip', NULL, NULL, 1, NULL, NULL),
(88, '88', 'vip', NULL, NULL, 1, NULL, NULL),
(89, '89', 'vip', NULL, NULL, 1, NULL, NULL),
(90, '90', 'vip', NULL, NULL, 1, NULL, NULL),
(91, '91', 'vip', NULL, NULL, 1, NULL, NULL),
(92, '92', 'vip', NULL, NULL, 1, NULL, NULL),
(93, '93', 'vip', NULL, NULL, 1, NULL, NULL),
(94, '94', 'vip', NULL, NULL, 1, NULL, NULL),
(95, '95', 'thuong', NULL, NULL, 1, NULL, NULL),
(96, '96', 'thuong', NULL, NULL, 1, NULL, NULL),
(97, '97', 'thuong', NULL, NULL, 1, NULL, NULL),
(98, '98', 'thuong', NULL, NULL, 1, NULL, NULL),
(99, '99', 'vip', NULL, NULL, 1, NULL, NULL),
(100, '100', 'vip', NULL, NULL, 1, NULL, NULL),
(101, '101', 'vip', NULL, NULL, 1, NULL, NULL),
(102, '102', 'vip', NULL, NULL, 1, NULL, NULL),
(103, '103', 'vip', NULL, NULL, 1, NULL, NULL),
(104, '104', 'vip', NULL, NULL, 1, NULL, NULL),
(105, '105', 'vip', NULL, NULL, 1, NULL, NULL),
(106, '106', 'vip', NULL, NULL, 1, NULL, NULL),
(107, '107', 'vip', NULL, NULL, 1, NULL, NULL),
(108, '108', 'vip', NULL, NULL, 1, NULL, NULL),
(109, '109', 'vip', NULL, NULL, 1, NULL, NULL),
(110, '110', 'vip', NULL, NULL, 1, NULL, NULL),
(111, '111', 'thuong', NULL, NULL, 1, NULL, NULL),
(112, '112', 'thuong', NULL, NULL, 1, NULL, NULL),
(113, '113', 'thuong', NULL, NULL, 1, NULL, NULL),
(114, '114', 'thuong', NULL, NULL, 1, NULL, NULL),
(115, '115', 'vip', NULL, NULL, 1, NULL, NULL),
(116, '116', 'vip', NULL, NULL, 1, NULL, NULL),
(117, '117', 'vip', NULL, NULL, 1, NULL, NULL),
(118, '118', 'vip', NULL, NULL, 1, NULL, NULL),
(119, '119', 'vip', NULL, NULL, 1, NULL, NULL),
(120, '120', 'vip', NULL, NULL, 1, NULL, NULL),
(121, '121', 'vip', NULL, NULL, 1, NULL, NULL),
(122, '122', 'vip', NULL, NULL, 1, NULL, NULL),
(123, '123', 'vip', NULL, NULL, 1, NULL, NULL),
(124, '124', 'vip', NULL, NULL, 1, NULL, NULL),
(125, '125', 'vip', NULL, NULL, 1, NULL, NULL),
(126, '126', 'vip', NULL, NULL, 1, NULL, NULL),
(127, '127', 'thuong', NULL, NULL, 1, NULL, NULL),
(128, '128', 'thuong', NULL, NULL, 1, NULL, NULL),
(129, '129', 'thuong', NULL, NULL, 1, NULL, NULL),
(130, '130', 'thuong', NULL, NULL, 1, NULL, NULL),
(131, '131', 'thuong', NULL, NULL, 1, NULL, NULL),
(132, '132', 'thuong', NULL, NULL, 1, NULL, NULL),
(133, '133', 'thuong', NULL, NULL, 1, NULL, NULL),
(134, '134', 'thuong', NULL, NULL, 1, NULL, NULL),
(135, '135', 'thuong', NULL, NULL, 1, NULL, NULL),
(136, '136', 'thuong', NULL, NULL, 1, NULL, NULL),
(137, '137', 'thuong', NULL, NULL, 1, NULL, NULL),
(138, '138', 'thuong', NULL, NULL, 1, NULL, NULL),
(139, '139', 'thuong', NULL, NULL, 1, NULL, NULL),
(140, '140', 'thuong', NULL, NULL, 1, NULL, NULL),
(141, '141', 'thuong', NULL, NULL, 1, NULL, NULL),
(142, '142', 'thuong', NULL, NULL, 1, NULL, NULL),
(143, '143', 'thuong', NULL, NULL, 1, NULL, NULL),
(144, '144', 'thuong', NULL, NULL, 1, NULL, NULL),
(145, '145', 'thuong', NULL, NULL, 1, NULL, NULL),
(146, '146', 'thuong', NULL, NULL, 1, NULL, NULL),
(147, '147', 'thuong', NULL, NULL, 1, NULL, NULL),
(148, '148', 'thuong', NULL, NULL, 1, NULL, NULL),
(149, '149', 'thuong', NULL, NULL, 1, NULL, NULL),
(150, '150', 'thuong', NULL, NULL, 1, NULL, NULL),
(151, '151', 'thuong', NULL, NULL, 1, NULL, NULL),
(152, '152', 'thuong', NULL, NULL, 1, NULL, NULL),
(153, '153', 'thuong', NULL, NULL, 1, NULL, NULL),
(154, '154', 'thuong', NULL, NULL, 1, NULL, NULL),
(155, '155', 'thuong', NULL, NULL, 1, NULL, NULL),
(156, '156', 'thuong', NULL, NULL, 1, NULL, NULL),
(157, '157', 'thuong', NULL, NULL, 1, NULL, NULL),
(158, '158', 'thuong', NULL, NULL, 1, NULL, NULL),
(159, '159', 'thuong', NULL, NULL, 1, NULL, NULL),
(160, '160', 'thuong', NULL, NULL, 1, NULL, NULL),
(161, '1', 'thuong', NULL, NULL, 2, NULL, NULL),
(162, '2', 'thuong', NULL, NULL, 2, NULL, NULL),
(163, '3', 'thuong', NULL, NULL, 2, NULL, NULL),
(164, '4', 'thuong', '5', NULL, 2, NULL, '2024-05-05 23:40:19'),
(165, '5', 'thuong', '5', NULL, 2, NULL, '2024-05-05 23:40:19'),
(166, '6', 'thuong', '5', NULL, 2, NULL, '2024-05-05 23:40:19'),
(167, '7', 'thuong', '5', NULL, 2, NULL, '2024-05-05 23:40:19'),
(168, '8', 'thuong', '7', NULL, 2, NULL, '2024-05-05 23:41:02'),
(169, '9', 'thuong', NULL, NULL, 2, NULL, NULL),
(170, '10', 'thuong', NULL, NULL, 2, NULL, NULL),
(171, '11', 'thuong', NULL, NULL, 2, NULL, NULL),
(172, '12', 'thuong', NULL, NULL, 2, NULL, NULL),
(173, '13', 'thuong', NULL, NULL, 2, NULL, NULL),
(174, '14', 'thuong', NULL, NULL, 2, NULL, NULL),
(175, '15', 'thuong', NULL, NULL, 2, NULL, NULL),
(176, '16', 'thuong', NULL, NULL, 2, NULL, NULL),
(177, '17', 'thuong', NULL, NULL, 2, NULL, NULL),
(178, '18', 'thuong', NULL, NULL, 2, NULL, NULL),
(179, '19', 'thuong', NULL, NULL, 2, NULL, NULL),
(180, '20', 'thuong', NULL, NULL, 2, NULL, NULL),
(181, '21', 'thuong', NULL, NULL, 2, NULL, NULL),
(182, '22', 'thuong', NULL, NULL, 2, NULL, NULL),
(183, '23', 'thuong', NULL, NULL, 2, NULL, NULL),
(184, '24', 'thuong', NULL, NULL, 2, NULL, NULL),
(185, '25', 'thuong', NULL, NULL, 2, NULL, NULL),
(186, '26', 'thuong', NULL, NULL, 2, NULL, NULL),
(187, '27', 'thuong', NULL, NULL, 2, NULL, NULL),
(188, '28', 'thuong', NULL, NULL, 2, NULL, NULL),
(189, '29', 'thuong', NULL, NULL, 2, NULL, NULL),
(190, '30', 'thuong', NULL, NULL, 2, NULL, NULL),
(191, '31', 'thuong', NULL, NULL, 2, NULL, NULL),
(192, '32', 'thuong', NULL, NULL, 2, NULL, NULL),
(193, '33', 'thuong', NULL, NULL, 2, NULL, NULL),
(194, '34', 'thuong', NULL, NULL, 2, NULL, NULL),
(195, '35', 'vip', NULL, NULL, 2, NULL, NULL),
(196, '36', 'vip', NULL, NULL, 2, NULL, NULL),
(197, '37', 'vip', NULL, NULL, 2, NULL, NULL),
(198, '38', 'vip', NULL, NULL, 2, NULL, NULL),
(199, '39', 'vip', '5', NULL, 2, NULL, '2024-05-05 23:40:19'),
(200, '40', 'vip', '5', NULL, 2, NULL, '2024-05-05 23:40:19'),
(201, '41', 'vip', '5', NULL, 2, NULL, '2024-05-05 23:40:19'),
(202, '42', 'vip', NULL, NULL, 2, NULL, NULL),
(203, '43', 'vip', NULL, NULL, 2, NULL, NULL),
(204, '44', 'vip', NULL, NULL, 2, NULL, NULL),
(205, '45', 'vip', NULL, NULL, 2, NULL, NULL),
(206, '46', 'vip', NULL, NULL, 2, NULL, NULL),
(207, '47', 'thuong', NULL, NULL, 2, NULL, NULL),
(208, '48', 'thuong', NULL, NULL, 2, NULL, NULL),
(209, '49', 'thuong', NULL, NULL, 2, NULL, NULL),
(210, '50', 'thuong', NULL, NULL, 2, NULL, NULL),
(211, '51', 'vip', NULL, NULL, 2, NULL, NULL),
(212, '52', 'vip', NULL, NULL, 2, NULL, NULL),
(213, '53', 'vip', NULL, NULL, 2, NULL, NULL),
(214, '54', 'vip', NULL, NULL, 2, NULL, NULL),
(215, '55', 'vip', NULL, NULL, 2, NULL, NULL),
(216, '56', 'vip', NULL, NULL, 2, NULL, NULL),
(217, '57', 'vip', NULL, NULL, 2, NULL, NULL),
(218, '58', 'vip', NULL, NULL, 2, NULL, NULL),
(219, '59', 'vip', NULL, NULL, 2, NULL, NULL),
(220, '60', 'vip', NULL, NULL, 2, NULL, NULL),
(221, '61', 'vip', NULL, NULL, 2, NULL, NULL),
(222, '62', 'vip', NULL, NULL, 2, NULL, NULL),
(223, '63', 'thuong', NULL, NULL, 2, NULL, NULL),
(224, '64', 'thuong', NULL, NULL, 2, NULL, NULL),
(225, '65', 'thuong', NULL, NULL, 2, NULL, NULL),
(226, '66', 'thuong', NULL, NULL, 2, NULL, NULL),
(227, '67', 'vip', NULL, NULL, 2, NULL, NULL),
(228, '68', 'vip', NULL, NULL, 2, NULL, NULL),
(229, '69', 'vip', NULL, NULL, 2, NULL, NULL),
(230, '70', 'vip', NULL, NULL, 2, NULL, NULL),
(231, '71', 'vip', NULL, NULL, 2, NULL, NULL),
(232, '72', 'vip', NULL, NULL, 2, NULL, NULL),
(233, '73', 'vip', NULL, NULL, 2, NULL, NULL),
(234, '74', 'vip', NULL, NULL, 2, NULL, NULL),
(235, '75', 'vip', NULL, NULL, 2, NULL, NULL),
(236, '76', 'vip', NULL, NULL, 2, NULL, NULL),
(237, '77', 'vip', NULL, NULL, 2, NULL, NULL),
(238, '78', 'vip', NULL, NULL, 2, NULL, NULL),
(239, '79', 'thuong', NULL, NULL, 2, NULL, NULL),
(240, '80', 'thuong', NULL, NULL, 2, NULL, NULL),
(241, '81', 'thuong', NULL, NULL, 2, NULL, NULL),
(242, '82', 'thuong', NULL, NULL, 2, NULL, NULL),
(243, '83', 'vip', NULL, NULL, 2, NULL, NULL),
(244, '84', 'vip', NULL, NULL, 2, NULL, NULL),
(245, '85', 'vip', NULL, NULL, 2, NULL, NULL),
(246, '86', 'vip', NULL, NULL, 2, NULL, NULL),
(247, '87', 'vip', NULL, NULL, 2, NULL, NULL),
(248, '88', 'vip', NULL, NULL, 2, NULL, NULL),
(249, '89', 'vip', NULL, NULL, 2, NULL, NULL),
(250, '90', 'vip', NULL, NULL, 2, NULL, NULL),
(251, '91', 'vip', NULL, NULL, 2, NULL, NULL),
(252, '92', 'vip', NULL, NULL, 2, NULL, NULL),
(253, '93', 'vip', NULL, NULL, 2, NULL, NULL),
(254, '94', 'vip', NULL, NULL, 2, NULL, NULL),
(255, '95', 'thuong', NULL, NULL, 2, NULL, NULL),
(256, '96', 'thuong', NULL, NULL, 2, NULL, NULL),
(257, '97', 'thuong', NULL, NULL, 2, NULL, NULL),
(258, '98', 'thuong', NULL, NULL, 2, NULL, NULL),
(259, '99', 'vip', NULL, NULL, 2, NULL, NULL),
(260, '100', 'vip', NULL, NULL, 2, NULL, NULL),
(261, '101', 'vip', NULL, NULL, 2, NULL, NULL),
(262, '102', 'vip', NULL, NULL, 2, NULL, NULL),
(263, '103', 'vip', NULL, NULL, 2, NULL, NULL),
(264, '104', 'vip', NULL, NULL, 2, NULL, NULL),
(265, '105', 'vip', NULL, NULL, 2, NULL, NULL),
(266, '106', 'vip', NULL, NULL, 2, NULL, NULL),
(267, '107', 'vip', NULL, NULL, 2, NULL, NULL),
(268, '108', 'vip', NULL, NULL, 2, NULL, NULL),
(269, '109', 'vip', NULL, NULL, 2, NULL, NULL),
(270, '110', 'vip', NULL, NULL, 2, NULL, NULL),
(271, '111', 'thuong', NULL, NULL, 2, NULL, NULL),
(272, '112', 'thuong', NULL, NULL, 2, NULL, NULL),
(273, '113', 'thuong', NULL, NULL, 2, NULL, NULL),
(274, '114', 'thuong', NULL, NULL, 2, NULL, NULL),
(275, '115', 'vip', NULL, NULL, 2, NULL, NULL),
(276, '116', 'vip', NULL, NULL, 2, NULL, NULL),
(277, '117', 'vip', NULL, NULL, 2, NULL, NULL),
(278, '118', 'vip', NULL, NULL, 2, NULL, NULL),
(279, '119', 'vip', NULL, NULL, 2, NULL, NULL),
(280, '120', 'vip', NULL, NULL, 2, NULL, NULL),
(281, '121', 'vip', NULL, NULL, 2, NULL, NULL),
(282, '122', 'vip', NULL, NULL, 2, NULL, NULL),
(283, '123', 'vip', NULL, NULL, 2, NULL, NULL),
(284, '124', 'vip', NULL, NULL, 2, NULL, NULL),
(285, '125', 'vip', NULL, NULL, 2, NULL, NULL),
(286, '126', 'vip', NULL, NULL, 2, NULL, NULL),
(287, '127', 'thuong', NULL, NULL, 2, NULL, NULL),
(288, '128', 'thuong', NULL, NULL, 2, NULL, NULL),
(289, '129', 'thuong', NULL, NULL, 2, NULL, NULL),
(290, '130', 'thuong', NULL, NULL, 2, NULL, NULL),
(291, '131', 'thuong', NULL, NULL, 2, NULL, NULL),
(292, '132', 'thuong', NULL, NULL, 2, NULL, NULL),
(293, '133', 'thuong', NULL, NULL, 2, NULL, NULL),
(294, '134', 'thuong', NULL, NULL, 2, NULL, NULL),
(295, '135', 'thuong', NULL, NULL, 2, NULL, NULL),
(296, '136', 'thuong', NULL, NULL, 2, NULL, NULL),
(297, '137', 'thuong', NULL, NULL, 2, NULL, NULL),
(298, '138', 'thuong', NULL, NULL, 2, NULL, NULL),
(299, '139', 'thuong', NULL, NULL, 2, NULL, NULL),
(300, '140', 'thuong', NULL, NULL, 2, NULL, NULL),
(301, '141', 'thuong', NULL, NULL, 2, NULL, NULL),
(302, '142', 'thuong', NULL, NULL, 2, NULL, NULL),
(303, '143', 'thuong', NULL, NULL, 2, NULL, NULL),
(304, '144', 'thuong', NULL, NULL, 2, NULL, NULL),
(305, '145', 'thuong', NULL, NULL, 2, NULL, NULL),
(306, '146', 'thuong', NULL, NULL, 2, NULL, NULL),
(307, '147', 'thuong', NULL, NULL, 2, NULL, NULL),
(308, '148', 'thuong', NULL, NULL, 2, NULL, NULL),
(309, '149', 'thuong', NULL, NULL, 2, NULL, NULL),
(310, '150', 'thuong', NULL, NULL, 2, NULL, NULL),
(311, '151', 'thuong', NULL, NULL, 2, NULL, NULL),
(312, '152', 'thuong', NULL, NULL, 2, NULL, NULL),
(313, '153', 'thuong', NULL, NULL, 2, NULL, NULL),
(314, '154', 'thuong', NULL, NULL, 2, NULL, NULL),
(315, '155', 'thuong', NULL, NULL, 2, NULL, NULL),
(316, '156', 'thuong', NULL, NULL, 2, NULL, NULL),
(317, '157', 'thuong', NULL, NULL, 2, NULL, NULL),
(318, '158', 'thuong', NULL, NULL, 2, NULL, NULL),
(319, '159', 'thuong', NULL, NULL, 2, NULL, NULL),
(320, '160', 'thuong', NULL, NULL, 2, NULL, NULL),
(321, '1', 'thuong', NULL, NULL, 3, NULL, NULL),
(322, '2', 'thuong', NULL, NULL, 3, NULL, NULL),
(323, '3', 'thuong', NULL, NULL, 3, NULL, NULL),
(324, '4', 'thuong', NULL, NULL, 3, NULL, NULL),
(325, '5', 'thuong', NULL, NULL, 3, NULL, NULL),
(326, '6', 'thuong', NULL, NULL, 3, NULL, NULL),
(327, '7', 'thuong', NULL, NULL, 3, NULL, NULL),
(328, '8', 'thuong', NULL, NULL, 3, NULL, NULL),
(329, '9', 'thuong', NULL, NULL, 3, NULL, NULL),
(330, '10', 'thuong', NULL, NULL, 3, NULL, NULL),
(331, '11', 'thuong', NULL, NULL, 3, NULL, NULL),
(332, '12', 'thuong', NULL, NULL, 3, NULL, NULL),
(333, '13', 'thuong', NULL, NULL, 3, NULL, NULL),
(334, '14', 'thuong', NULL, NULL, 3, NULL, NULL),
(335, '15', 'thuong', NULL, NULL, 3, NULL, NULL),
(336, '16', 'thuong', NULL, NULL, 3, NULL, NULL),
(337, '17', 'thuong', NULL, NULL, 3, NULL, NULL),
(338, '18', 'thuong', NULL, NULL, 3, NULL, NULL),
(339, '19', 'thuong', NULL, NULL, 3, NULL, NULL),
(340, '20', 'thuong', NULL, NULL, 3, NULL, NULL),
(341, '21', 'thuong', NULL, NULL, 3, NULL, NULL),
(342, '22', 'thuong', NULL, NULL, 3, NULL, NULL),
(343, '23', 'thuong', NULL, NULL, 3, NULL, NULL),
(344, '24', 'thuong', NULL, NULL, 3, NULL, NULL),
(345, '25', 'thuong', NULL, NULL, 3, NULL, NULL),
(346, '26', 'thuong', NULL, NULL, 3, NULL, NULL),
(347, '27', 'thuong', NULL, NULL, 3, NULL, NULL),
(348, '28', 'thuong', NULL, NULL, 3, NULL, NULL),
(349, '29', 'thuong', NULL, NULL, 3, NULL, NULL),
(350, '30', 'thuong', NULL, NULL, 3, NULL, NULL),
(351, '31', 'thuong', NULL, NULL, 3, NULL, NULL),
(352, '32', 'thuong', NULL, NULL, 3, NULL, NULL),
(353, '33', 'thuong', NULL, NULL, 3, NULL, NULL),
(354, '34', 'thuong', NULL, NULL, 3, NULL, NULL),
(355, '35', 'vip', NULL, NULL, 3, NULL, NULL),
(356, '36', 'vip', NULL, NULL, 3, NULL, NULL),
(357, '37', 'vip', NULL, NULL, 3, NULL, NULL),
(358, '38', 'vip', NULL, NULL, 3, NULL, NULL),
(359, '39', 'vip', NULL, NULL, 3, NULL, NULL),
(360, '40', 'vip', NULL, NULL, 3, NULL, NULL),
(361, '41', 'vip', NULL, NULL, 3, NULL, NULL),
(362, '42', 'vip', NULL, NULL, 3, NULL, NULL),
(363, '43', 'vip', NULL, NULL, 3, NULL, NULL),
(364, '44', 'vip', NULL, NULL, 3, NULL, NULL),
(365, '45', 'vip', NULL, NULL, 3, NULL, NULL),
(366, '46', 'vip', NULL, NULL, 3, NULL, NULL),
(367, '47', 'thuong', NULL, NULL, 3, NULL, NULL),
(368, '48', 'thuong', NULL, NULL, 3, NULL, NULL),
(369, '49', 'thuong', NULL, NULL, 3, NULL, NULL),
(370, '50', 'thuong', NULL, NULL, 3, NULL, NULL),
(371, '51', 'vip', NULL, NULL, 3, NULL, NULL),
(372, '52', 'vip', NULL, NULL, 3, NULL, NULL),
(373, '53', 'vip', NULL, NULL, 3, NULL, NULL),
(374, '54', 'vip', NULL, NULL, 3, NULL, NULL),
(375, '55', 'vip', NULL, NULL, 3, NULL, NULL),
(376, '56', 'vip', NULL, NULL, 3, NULL, NULL),
(377, '57', 'vip', NULL, NULL, 3, NULL, NULL),
(378, '58', 'vip', NULL, NULL, 3, NULL, NULL),
(379, '59', 'vip', NULL, NULL, 3, NULL, NULL),
(380, '60', 'vip', NULL, NULL, 3, NULL, NULL),
(381, '61', 'vip', NULL, NULL, 3, NULL, NULL),
(382, '62', 'vip', NULL, NULL, 3, NULL, NULL),
(383, '63', 'thuong', NULL, NULL, 3, NULL, NULL),
(384, '64', 'thuong', NULL, NULL, 3, NULL, NULL),
(385, '65', 'thuong', NULL, NULL, 3, NULL, NULL),
(386, '66', 'thuong', NULL, NULL, 3, NULL, NULL),
(387, '67', 'vip', NULL, NULL, 3, NULL, NULL),
(388, '68', 'vip', NULL, NULL, 3, NULL, NULL),
(389, '69', 'vip', NULL, NULL, 3, NULL, NULL),
(390, '70', 'vip', NULL, NULL, 3, NULL, NULL),
(391, '71', 'vip', NULL, NULL, 3, NULL, NULL),
(392, '72', 'vip', NULL, NULL, 3, NULL, NULL),
(393, '73', 'vip', NULL, NULL, 3, NULL, NULL),
(394, '74', 'vip', NULL, NULL, 3, NULL, NULL),
(395, '75', 'vip', NULL, NULL, 3, NULL, NULL),
(396, '76', 'vip', NULL, NULL, 3, NULL, NULL),
(397, '77', 'vip', NULL, NULL, 3, NULL, NULL),
(398, '78', 'vip', NULL, NULL, 3, NULL, NULL),
(399, '79', 'thuong', NULL, NULL, 3, NULL, NULL),
(400, '80', 'thuong', NULL, NULL, 3, NULL, NULL),
(401, '81', 'thuong', NULL, NULL, 3, NULL, NULL),
(402, '82', 'thuong', NULL, NULL, 3, NULL, NULL),
(403, '83', 'vip', NULL, NULL, 3, NULL, NULL),
(404, '84', 'vip', NULL, NULL, 3, NULL, NULL),
(405, '85', 'vip', NULL, NULL, 3, NULL, NULL),
(406, '86', 'vip', NULL, NULL, 3, NULL, NULL),
(407, '87', 'vip', NULL, NULL, 3, NULL, NULL),
(408, '88', 'vip', NULL, NULL, 3, NULL, NULL),
(409, '89', 'vip', NULL, NULL, 3, NULL, NULL),
(410, '90', 'vip', NULL, NULL, 3, NULL, NULL),
(411, '91', 'vip', NULL, NULL, 3, NULL, NULL),
(412, '92', 'vip', NULL, NULL, 3, NULL, NULL),
(413, '93', 'vip', NULL, NULL, 3, NULL, NULL),
(414, '94', 'vip', NULL, NULL, 3, NULL, NULL),
(415, '95', 'thuong', NULL, NULL, 3, NULL, NULL),
(416, '96', 'thuong', NULL, NULL, 3, NULL, NULL),
(417, '97', 'thuong', NULL, NULL, 3, NULL, NULL),
(418, '98', 'thuong', NULL, NULL, 3, NULL, NULL),
(419, '99', 'vip', NULL, NULL, 3, NULL, NULL),
(420, '100', 'vip', NULL, NULL, 3, NULL, NULL),
(421, '101', 'vip', NULL, NULL, 3, NULL, NULL),
(422, '102', 'vip', NULL, NULL, 3, NULL, NULL),
(423, '103', 'vip', NULL, NULL, 3, NULL, NULL),
(424, '104', 'vip', NULL, NULL, 3, NULL, NULL),
(425, '105', 'vip', NULL, NULL, 3, NULL, NULL),
(426, '106', 'vip', NULL, NULL, 3, NULL, NULL),
(427, '107', 'vip', NULL, NULL, 3, NULL, NULL),
(428, '108', 'vip', NULL, NULL, 3, NULL, NULL),
(429, '109', 'vip', NULL, NULL, 3, NULL, NULL),
(430, '110', 'vip', NULL, NULL, 3, NULL, NULL),
(431, '111', 'thuong', NULL, NULL, 3, NULL, NULL),
(432, '112', 'thuong', NULL, NULL, 3, NULL, NULL),
(433, '113', 'thuong', NULL, NULL, 3, NULL, NULL),
(434, '114', 'thuong', NULL, NULL, 3, NULL, NULL),
(435, '115', 'vip', NULL, NULL, 3, NULL, NULL),
(436, '116', 'vip', NULL, NULL, 3, NULL, NULL),
(437, '117', 'vip', NULL, NULL, 3, NULL, NULL),
(438, '118', 'vip', NULL, NULL, 3, NULL, NULL),
(439, '119', 'vip', NULL, NULL, 3, NULL, NULL),
(440, '120', 'vip', NULL, NULL, 3, NULL, NULL),
(441, '121', 'vip', NULL, NULL, 3, NULL, NULL),
(442, '122', 'vip', NULL, NULL, 3, NULL, NULL),
(443, '123', 'vip', NULL, NULL, 3, NULL, NULL),
(444, '124', 'vip', NULL, NULL, 3, NULL, NULL),
(445, '125', 'vip', NULL, NULL, 3, NULL, NULL),
(446, '126', 'vip', NULL, NULL, 3, NULL, NULL),
(447, '127', 'thuong', NULL, NULL, 3, NULL, NULL),
(448, '128', 'thuong', NULL, NULL, 3, NULL, NULL),
(449, '129', 'thuong', NULL, NULL, 3, NULL, NULL),
(450, '130', 'thuong', NULL, NULL, 3, NULL, NULL),
(451, '131', 'thuong', NULL, NULL, 3, NULL, NULL),
(452, '132', 'thuong', NULL, NULL, 3, NULL, NULL),
(453, '133', 'thuong', NULL, NULL, 3, NULL, NULL),
(454, '134', 'thuong', NULL, NULL, 3, NULL, NULL),
(455, '135', 'thuong', NULL, NULL, 3, NULL, NULL),
(456, '136', 'thuong', NULL, NULL, 3, NULL, NULL),
(457, '137', 'thuong', NULL, NULL, 3, NULL, NULL),
(458, '138', 'thuong', NULL, NULL, 3, NULL, NULL),
(459, '139', 'thuong', NULL, NULL, 3, NULL, NULL),
(460, '140', 'thuong', NULL, NULL, 3, NULL, NULL),
(461, '141', 'thuong', NULL, NULL, 3, NULL, NULL),
(462, '142', 'thuong', NULL, NULL, 3, NULL, NULL),
(463, '143', 'thuong', NULL, NULL, 3, NULL, NULL),
(464, '144', 'thuong', NULL, NULL, 3, NULL, NULL),
(465, '145', 'thuong', NULL, NULL, 3, NULL, NULL),
(466, '146', 'thuong', NULL, NULL, 3, NULL, NULL),
(467, '147', 'thuong', NULL, NULL, 3, NULL, NULL),
(468, '148', 'thuong', NULL, NULL, 3, NULL, NULL),
(469, '149', 'thuong', NULL, NULL, 3, NULL, NULL),
(470, '150', 'thuong', NULL, NULL, 3, NULL, NULL),
(471, '151', 'thuong', NULL, NULL, 3, NULL, NULL),
(472, '152', 'thuong', NULL, NULL, 3, NULL, NULL),
(473, '153', 'thuong', NULL, NULL, 3, NULL, NULL),
(474, '154', 'thuong', NULL, NULL, 3, NULL, NULL),
(475, '155', 'thuong', NULL, NULL, 3, NULL, NULL),
(476, '156', 'thuong', NULL, NULL, 3, NULL, NULL),
(477, '157', 'thuong', NULL, NULL, 3, NULL, NULL),
(478, '158', 'thuong', NULL, NULL, 3, NULL, NULL),
(479, '159', 'thuong', NULL, NULL, 3, NULL, NULL),
(480, '160', 'thuong', NULL, NULL, 3, NULL, NULL),
(481, '1', 'thuong', NULL, NULL, 4, NULL, NULL),
(482, '2', 'thuong', NULL, NULL, 4, NULL, NULL),
(483, '3', 'thuong', NULL, NULL, 4, NULL, NULL),
(484, '4', 'thuong', NULL, NULL, 4, NULL, NULL),
(485, '5', 'thuong', NULL, NULL, 4, NULL, NULL),
(486, '6', 'thuong', NULL, NULL, 4, NULL, NULL),
(487, '7', 'thuong', NULL, NULL, 4, NULL, NULL),
(488, '8', 'thuong', NULL, NULL, 4, NULL, NULL),
(489, '9', 'thuong', NULL, NULL, 4, NULL, NULL),
(490, '10', 'thuong', NULL, NULL, 4, NULL, NULL),
(491, '11', 'thuong', NULL, NULL, 4, NULL, NULL),
(492, '12', 'thuong', NULL, NULL, 4, NULL, NULL),
(493, '13', 'thuong', NULL, NULL, 4, NULL, NULL),
(494, '14', 'thuong', NULL, NULL, 4, NULL, NULL),
(495, '15', 'thuong', NULL, NULL, 4, NULL, NULL),
(496, '16', 'thuong', NULL, NULL, 4, NULL, NULL),
(497, '17', 'thuong', NULL, NULL, 4, NULL, NULL),
(498, '18', 'thuong', NULL, NULL, 4, NULL, NULL),
(499, '19', 'thuong', NULL, NULL, 4, NULL, NULL),
(500, '20', 'thuong', NULL, NULL, 4, NULL, NULL),
(501, '21', 'thuong', NULL, NULL, 4, NULL, NULL),
(502, '22', 'thuong', NULL, NULL, 4, NULL, NULL),
(503, '23', 'thuong', NULL, NULL, 4, NULL, NULL),
(504, '24', 'thuong', NULL, NULL, 4, NULL, NULL),
(505, '25', 'thuong', NULL, NULL, 4, NULL, NULL),
(506, '26', 'thuong', NULL, NULL, 4, NULL, NULL),
(507, '27', 'thuong', NULL, NULL, 4, NULL, NULL),
(508, '28', 'thuong', NULL, NULL, 4, NULL, NULL),
(509, '29', 'thuong', NULL, NULL, 4, NULL, NULL),
(510, '30', 'thuong', NULL, NULL, 4, NULL, NULL),
(511, '31', 'thuong', NULL, NULL, 4, NULL, NULL),
(512, '32', 'thuong', NULL, NULL, 4, NULL, NULL),
(513, '33', 'thuong', NULL, NULL, 4, NULL, NULL),
(514, '34', 'thuong', NULL, NULL, 4, NULL, NULL),
(515, '35', 'vip', NULL, NULL, 4, NULL, NULL),
(516, '36', 'vip', NULL, NULL, 4, NULL, NULL),
(517, '37', 'vip', NULL, NULL, 4, NULL, NULL),
(518, '38', 'vip', NULL, NULL, 4, NULL, NULL),
(519, '39', 'vip', NULL, NULL, 4, NULL, NULL),
(520, '40', 'vip', NULL, NULL, 4, NULL, NULL),
(521, '41', 'vip', NULL, NULL, 4, NULL, NULL),
(522, '42', 'vip', NULL, NULL, 4, NULL, NULL),
(523, '43', 'vip', NULL, NULL, 4, NULL, NULL),
(524, '44', 'vip', NULL, NULL, 4, NULL, NULL),
(525, '45', 'vip', NULL, NULL, 4, NULL, NULL),
(526, '46', 'vip', NULL, NULL, 4, NULL, NULL),
(527, '47', 'thuong', NULL, NULL, 4, NULL, NULL),
(528, '48', 'thuong', NULL, NULL, 4, NULL, NULL),
(529, '49', 'thuong', NULL, NULL, 4, NULL, NULL),
(530, '50', 'thuong', NULL, NULL, 4, NULL, NULL),
(531, '51', 'vip', NULL, NULL, 4, NULL, NULL),
(532, '52', 'vip', NULL, NULL, 4, NULL, NULL),
(533, '53', 'vip', NULL, NULL, 4, NULL, NULL),
(534, '54', 'vip', NULL, NULL, 4, NULL, NULL),
(535, '55', 'vip', NULL, NULL, 4, NULL, NULL),
(536, '56', 'vip', NULL, NULL, 4, NULL, NULL),
(537, '57', 'vip', NULL, NULL, 4, NULL, NULL),
(538, '58', 'vip', NULL, NULL, 4, NULL, NULL),
(539, '59', 'vip', NULL, NULL, 4, NULL, NULL),
(540, '60', 'vip', NULL, NULL, 4, NULL, NULL),
(541, '61', 'vip', NULL, NULL, 4, NULL, NULL),
(542, '62', 'vip', NULL, NULL, 4, NULL, NULL),
(543, '63', 'thuong', NULL, NULL, 4, NULL, NULL),
(544, '64', 'thuong', NULL, NULL, 4, NULL, NULL),
(545, '65', 'thuong', NULL, NULL, 4, NULL, NULL),
(546, '66', 'thuong', NULL, NULL, 4, NULL, NULL),
(547, '67', 'vip', NULL, NULL, 4, NULL, NULL),
(548, '68', 'vip', NULL, NULL, 4, NULL, NULL),
(549, '69', 'vip', NULL, NULL, 4, NULL, NULL),
(550, '70', 'vip', NULL, NULL, 4, NULL, NULL),
(551, '71', 'vip', NULL, NULL, 4, NULL, NULL),
(552, '72', 'vip', NULL, NULL, 4, NULL, NULL),
(553, '73', 'vip', NULL, NULL, 4, NULL, NULL),
(554, '74', 'vip', NULL, NULL, 4, NULL, NULL),
(555, '75', 'vip', NULL, NULL, 4, NULL, NULL),
(556, '76', 'vip', NULL, NULL, 4, NULL, NULL),
(557, '77', 'vip', NULL, NULL, 4, NULL, NULL),
(558, '78', 'vip', NULL, NULL, 4, NULL, NULL),
(559, '79', 'thuong', NULL, NULL, 4, NULL, NULL),
(560, '80', 'thuong', NULL, NULL, 4, NULL, NULL),
(561, '81', 'thuong', NULL, NULL, 4, NULL, NULL),
(562, '82', 'thuong', NULL, NULL, 4, NULL, NULL),
(563, '83', 'vip', NULL, NULL, 4, NULL, NULL),
(564, '84', 'vip', NULL, NULL, 4, NULL, NULL),
(565, '85', 'vip', NULL, NULL, 4, NULL, NULL),
(566, '86', 'vip', NULL, NULL, 4, NULL, NULL),
(567, '87', 'vip', NULL, NULL, 4, NULL, NULL),
(568, '88', 'vip', NULL, NULL, 4, NULL, NULL),
(569, '89', 'vip', NULL, NULL, 4, NULL, NULL),
(570, '90', 'vip', NULL, NULL, 4, NULL, NULL),
(571, '91', 'vip', NULL, NULL, 4, NULL, NULL),
(572, '92', 'vip', NULL, NULL, 4, NULL, NULL),
(573, '93', 'vip', NULL, NULL, 4, NULL, NULL),
(574, '94', 'vip', NULL, NULL, 4, NULL, NULL),
(575, '95', 'thuong', NULL, NULL, 4, NULL, NULL),
(576, '96', 'thuong', NULL, NULL, 4, NULL, NULL),
(577, '97', 'thuong', NULL, NULL, 4, NULL, NULL),
(578, '98', 'thuong', NULL, NULL, 4, NULL, NULL),
(579, '99', 'vip', NULL, NULL, 4, NULL, NULL),
(580, '100', 'vip', NULL, NULL, 4, NULL, NULL),
(581, '101', 'vip', NULL, NULL, 4, NULL, NULL),
(582, '102', 'vip', NULL, NULL, 4, NULL, NULL),
(583, '103', 'vip', NULL, NULL, 4, NULL, NULL),
(584, '104', 'vip', NULL, NULL, 4, NULL, NULL),
(585, '105', 'vip', NULL, NULL, 4, NULL, NULL),
(586, '106', 'vip', NULL, NULL, 4, NULL, NULL),
(587, '107', 'vip', NULL, NULL, 4, NULL, NULL),
(588, '108', 'vip', NULL, NULL, 4, NULL, NULL),
(589, '109', 'vip', NULL, NULL, 4, NULL, NULL),
(590, '110', 'vip', NULL, NULL, 4, NULL, NULL),
(591, '111', 'thuong', NULL, NULL, 4, NULL, NULL),
(592, '112', 'thuong', NULL, NULL, 4, NULL, NULL),
(593, '113', 'thuong', NULL, NULL, 4, NULL, NULL),
(594, '114', 'thuong', NULL, NULL, 4, NULL, NULL),
(595, '115', 'vip', NULL, NULL, 4, NULL, NULL),
(596, '116', 'vip', NULL, NULL, 4, NULL, NULL),
(597, '117', 'vip', NULL, NULL, 4, NULL, NULL),
(598, '118', 'vip', NULL, NULL, 4, NULL, NULL),
(599, '119', 'vip', NULL, NULL, 4, NULL, NULL),
(600, '120', 'vip', NULL, NULL, 4, NULL, NULL),
(601, '121', 'vip', NULL, NULL, 4, NULL, NULL),
(602, '122', 'vip', NULL, NULL, 4, NULL, NULL),
(603, '123', 'vip', NULL, NULL, 4, NULL, NULL),
(604, '124', 'vip', NULL, NULL, 4, NULL, NULL),
(605, '125', 'vip', NULL, NULL, 4, NULL, NULL),
(606, '126', 'vip', NULL, NULL, 4, NULL, NULL),
(607, '127', 'thuong', NULL, NULL, 4, NULL, NULL),
(608, '128', 'thuong', NULL, NULL, 4, NULL, NULL),
(609, '129', 'thuong', NULL, NULL, 4, NULL, NULL),
(610, '130', 'thuong', NULL, NULL, 4, NULL, NULL),
(611, '131', 'thuong', NULL, NULL, 4, NULL, NULL),
(612, '132', 'thuong', NULL, NULL, 4, NULL, NULL),
(613, '133', 'thuong', NULL, NULL, 4, NULL, NULL),
(614, '134', 'thuong', NULL, NULL, 4, NULL, NULL),
(615, '135', 'thuong', NULL, NULL, 4, NULL, NULL),
(616, '136', 'thuong', NULL, NULL, 4, NULL, NULL),
(617, '137', 'thuong', NULL, NULL, 4, NULL, NULL),
(618, '138', 'thuong', NULL, NULL, 4, NULL, NULL),
(619, '139', 'thuong', NULL, NULL, 4, NULL, NULL),
(620, '140', 'thuong', NULL, NULL, 4, NULL, NULL),
(621, '141', 'thuong', NULL, NULL, 4, NULL, NULL),
(622, '142', 'thuong', NULL, NULL, 4, NULL, NULL),
(623, '143', 'thuong', NULL, NULL, 4, NULL, NULL),
(624, '144', 'thuong', NULL, NULL, 4, NULL, NULL),
(625, '145', 'thuong', NULL, NULL, 4, NULL, NULL),
(626, '146', 'thuong', NULL, NULL, 4, NULL, NULL),
(627, '147', 'thuong', NULL, NULL, 4, NULL, NULL),
(628, '148', 'thuong', NULL, NULL, 4, NULL, NULL),
(629, '149', 'thuong', NULL, NULL, 4, NULL, NULL),
(630, '150', 'thuong', NULL, NULL, 4, NULL, NULL),
(631, '151', 'thuong', NULL, NULL, 4, NULL, NULL),
(632, '152', 'thuong', NULL, NULL, 4, NULL, NULL),
(633, '153', 'thuong', NULL, NULL, 4, NULL, NULL),
(634, '154', 'thuong', NULL, NULL, 4, NULL, NULL),
(635, '155', 'thuong', NULL, NULL, 4, NULL, NULL),
(636, '156', 'thuong', NULL, NULL, 4, NULL, NULL),
(637, '157', 'thuong', NULL, NULL, 4, NULL, NULL),
(638, '158', 'thuong', NULL, NULL, 4, NULL, NULL),
(639, '159', 'thuong', NULL, NULL, 4, NULL, NULL),
(640, '160', 'thuong', NULL, NULL, 4, NULL, NULL),
(641, '1', 'thuong', NULL, NULL, 5, NULL, NULL),
(642, '2', 'thuong', NULL, NULL, 5, NULL, NULL),
(643, '3', 'thuong', NULL, NULL, 5, NULL, NULL),
(644, '4', 'thuong', NULL, NULL, 5, NULL, NULL),
(645, '5', 'thuong', NULL, NULL, 5, NULL, NULL),
(646, '6', 'thuong', NULL, NULL, 5, NULL, NULL),
(647, '7', 'thuong', NULL, NULL, 5, NULL, NULL),
(648, '8', 'thuong', NULL, NULL, 5, NULL, NULL),
(649, '9', 'thuong', NULL, NULL, 5, NULL, NULL),
(650, '10', 'thuong', NULL, NULL, 5, NULL, NULL),
(651, '11', 'thuong', NULL, NULL, 5, NULL, NULL),
(652, '12', 'thuong', NULL, NULL, 5, NULL, NULL),
(653, '13', 'thuong', NULL, NULL, 5, NULL, NULL),
(654, '14', 'thuong', NULL, NULL, 5, NULL, NULL),
(655, '15', 'thuong', NULL, NULL, 5, NULL, NULL),
(656, '16', 'thuong', NULL, NULL, 5, NULL, NULL),
(657, '17', 'thuong', NULL, NULL, 5, NULL, NULL),
(658, '18', 'thuong', NULL, NULL, 5, NULL, NULL),
(659, '19', 'thuong', NULL, NULL, 5, NULL, NULL),
(660, '20', 'thuong', NULL, NULL, 5, NULL, NULL),
(661, '21', 'thuong', NULL, NULL, 5, NULL, NULL),
(662, '22', 'thuong', NULL, NULL, 5, NULL, NULL),
(663, '23', 'thuong', NULL, NULL, 5, NULL, NULL),
(664, '24', 'thuong', NULL, NULL, 5, NULL, NULL),
(665, '25', 'thuong', NULL, NULL, 5, NULL, NULL),
(666, '26', 'thuong', NULL, NULL, 5, NULL, NULL),
(667, '27', 'thuong', NULL, NULL, 5, NULL, NULL),
(668, '28', 'thuong', NULL, NULL, 5, NULL, NULL),
(669, '29', 'thuong', NULL, NULL, 5, NULL, NULL),
(670, '30', 'thuong', NULL, NULL, 5, NULL, NULL),
(671, '31', 'thuong', NULL, NULL, 5, NULL, NULL),
(672, '32', 'thuong', NULL, NULL, 5, NULL, NULL),
(673, '33', 'thuong', NULL, NULL, 5, NULL, NULL),
(674, '34', 'thuong', NULL, NULL, 5, NULL, NULL),
(675, '35', 'vip', NULL, NULL, 5, NULL, NULL),
(676, '36', 'vip', NULL, NULL, 5, NULL, NULL),
(677, '37', 'vip', NULL, NULL, 5, NULL, NULL),
(678, '38', 'vip', NULL, NULL, 5, NULL, NULL),
(679, '39', 'vip', NULL, NULL, 5, NULL, NULL),
(680, '40', 'vip', NULL, NULL, 5, NULL, NULL),
(681, '41', 'vip', NULL, NULL, 5, NULL, NULL),
(682, '42', 'vip', NULL, NULL, 5, NULL, NULL),
(683, '43', 'vip', NULL, NULL, 5, NULL, NULL),
(684, '44', 'vip', NULL, NULL, 5, NULL, NULL),
(685, '45', 'vip', NULL, NULL, 5, NULL, NULL),
(686, '46', 'vip', NULL, NULL, 5, NULL, NULL),
(687, '47', 'thuong', NULL, NULL, 5, NULL, NULL),
(688, '48', 'thuong', NULL, NULL, 5, NULL, NULL),
(689, '49', 'thuong', NULL, NULL, 5, NULL, NULL),
(690, '50', 'thuong', NULL, NULL, 5, NULL, NULL),
(691, '51', 'vip', NULL, NULL, 5, NULL, NULL),
(692, '52', 'vip', NULL, NULL, 5, NULL, NULL),
(693, '53', 'vip', NULL, NULL, 5, NULL, NULL),
(694, '54', 'vip', NULL, NULL, 5, NULL, NULL),
(695, '55', 'vip', NULL, NULL, 5, NULL, NULL),
(696, '56', 'vip', NULL, NULL, 5, NULL, NULL),
(697, '57', 'vip', NULL, NULL, 5, NULL, NULL),
(698, '58', 'vip', NULL, NULL, 5, NULL, NULL),
(699, '59', 'vip', NULL, NULL, 5, NULL, NULL),
(700, '60', 'vip', NULL, NULL, 5, NULL, NULL),
(701, '61', 'vip', NULL, NULL, 5, NULL, NULL),
(702, '62', 'vip', NULL, NULL, 5, NULL, NULL),
(703, '63', 'thuong', NULL, NULL, 5, NULL, NULL),
(704, '64', 'thuong', NULL, NULL, 5, NULL, NULL),
(705, '65', 'thuong', NULL, NULL, 5, NULL, NULL),
(706, '66', 'thuong', NULL, NULL, 5, NULL, NULL),
(707, '67', 'vip', NULL, NULL, 5, NULL, NULL),
(708, '68', 'vip', NULL, NULL, 5, NULL, NULL),
(709, '69', 'vip', NULL, NULL, 5, NULL, NULL),
(710, '70', 'vip', NULL, NULL, 5, NULL, NULL),
(711, '71', 'vip', NULL, NULL, 5, NULL, NULL),
(712, '72', 'vip', NULL, NULL, 5, NULL, NULL),
(713, '73', 'vip', NULL, NULL, 5, NULL, NULL),
(714, '74', 'vip', NULL, NULL, 5, NULL, NULL),
(715, '75', 'vip', NULL, NULL, 5, NULL, NULL),
(716, '76', 'vip', NULL, NULL, 5, NULL, NULL),
(717, '77', 'vip', NULL, NULL, 5, NULL, NULL),
(718, '78', 'vip', NULL, NULL, 5, NULL, NULL),
(719, '79', 'thuong', NULL, NULL, 5, NULL, NULL),
(720, '80', 'thuong', NULL, NULL, 5, NULL, NULL),
(721, '81', 'thuong', NULL, NULL, 5, NULL, NULL),
(722, '82', 'thuong', NULL, NULL, 5, NULL, NULL),
(723, '83', 'vip', NULL, NULL, 5, NULL, NULL),
(724, '84', 'vip', NULL, NULL, 5, NULL, NULL),
(725, '85', 'vip', NULL, NULL, 5, NULL, NULL),
(726, '86', 'vip', NULL, NULL, 5, NULL, NULL),
(727, '87', 'vip', NULL, NULL, 5, NULL, NULL),
(728, '88', 'vip', NULL, NULL, 5, NULL, NULL),
(729, '89', 'vip', NULL, NULL, 5, NULL, NULL),
(730, '90', 'vip', NULL, NULL, 5, NULL, NULL),
(731, '91', 'vip', NULL, NULL, 5, NULL, NULL),
(732, '92', 'vip', NULL, NULL, 5, NULL, NULL),
(733, '93', 'vip', NULL, NULL, 5, NULL, NULL),
(734, '94', 'vip', NULL, NULL, 5, NULL, NULL),
(735, '95', 'thuong', NULL, NULL, 5, NULL, NULL),
(736, '96', 'thuong', NULL, NULL, 5, NULL, NULL),
(737, '97', 'thuong', NULL, NULL, 5, NULL, NULL),
(738, '98', 'thuong', NULL, NULL, 5, NULL, NULL),
(739, '99', 'vip', NULL, NULL, 5, NULL, NULL),
(740, '100', 'vip', NULL, NULL, 5, NULL, NULL),
(741, '101', 'vip', NULL, NULL, 5, NULL, NULL),
(742, '102', 'vip', NULL, NULL, 5, NULL, NULL),
(743, '103', 'vip', NULL, NULL, 5, NULL, NULL),
(744, '104', 'vip', NULL, NULL, 5, NULL, NULL),
(745, '105', 'vip', NULL, NULL, 5, NULL, NULL),
(746, '106', 'vip', NULL, NULL, 5, NULL, NULL),
(747, '107', 'vip', NULL, NULL, 5, NULL, NULL),
(748, '108', 'vip', NULL, NULL, 5, NULL, NULL),
(749, '109', 'vip', NULL, NULL, 5, NULL, NULL),
(750, '110', 'vip', NULL, NULL, 5, NULL, NULL),
(751, '111', 'thuong', NULL, NULL, 5, NULL, NULL),
(752, '112', 'thuong', NULL, NULL, 5, NULL, NULL),
(753, '113', 'thuong', NULL, NULL, 5, NULL, NULL),
(754, '114', 'thuong', NULL, NULL, 5, NULL, NULL),
(755, '115', 'vip', NULL, NULL, 5, NULL, NULL),
(756, '116', 'vip', NULL, NULL, 5, NULL, NULL),
(757, '117', 'vip', NULL, NULL, 5, NULL, NULL),
(758, '118', 'vip', NULL, NULL, 5, NULL, NULL),
(759, '119', 'vip', NULL, NULL, 5, NULL, NULL),
(760, '120', 'vip', NULL, NULL, 5, NULL, NULL),
(761, '121', 'vip', NULL, NULL, 5, NULL, NULL),
(762, '122', 'vip', NULL, NULL, 5, NULL, NULL),
(763, '123', 'vip', NULL, NULL, 5, NULL, NULL),
(764, '124', 'vip', NULL, NULL, 5, NULL, NULL),
(765, '125', 'vip', NULL, NULL, 5, NULL, NULL),
(766, '126', 'vip', NULL, NULL, 5, NULL, NULL),
(767, '127', 'thuong', NULL, NULL, 5, NULL, NULL),
(768, '128', 'thuong', NULL, NULL, 5, NULL, NULL),
(769, '129', 'thuong', NULL, NULL, 5, NULL, NULL),
(770, '130', 'thuong', NULL, NULL, 5, NULL, NULL),
(771, '131', 'thuong', NULL, NULL, 5, NULL, NULL),
(772, '132', 'thuong', NULL, NULL, 5, NULL, NULL),
(773, '133', 'thuong', NULL, NULL, 5, NULL, NULL),
(774, '134', 'thuong', NULL, NULL, 5, NULL, NULL),
(775, '135', 'thuong', NULL, NULL, 5, NULL, NULL),
(776, '136', 'thuong', NULL, NULL, 5, NULL, NULL),
(777, '137', 'thuong', NULL, NULL, 5, NULL, NULL),
(778, '138', 'thuong', NULL, NULL, 5, NULL, NULL),
(779, '139', 'thuong', NULL, NULL, 5, NULL, NULL),
(780, '140', 'thuong', NULL, NULL, 5, NULL, NULL),
(781, '141', 'thuong', NULL, NULL, 5, NULL, NULL),
(782, '142', 'thuong', NULL, NULL, 5, NULL, NULL),
(783, '143', 'thuong', NULL, NULL, 5, NULL, NULL),
(784, '144', 'thuong', NULL, NULL, 5, NULL, NULL),
(785, '145', 'thuong', NULL, NULL, 5, NULL, NULL),
(786, '146', 'thuong', NULL, NULL, 5, NULL, NULL),
(787, '147', 'thuong', NULL, NULL, 5, NULL, NULL),
(788, '148', 'thuong', NULL, NULL, 5, NULL, NULL),
(789, '149', 'thuong', NULL, NULL, 5, NULL, NULL),
(790, '150', 'thuong', NULL, NULL, 5, NULL, NULL),
(791, '151', 'thuong', NULL, NULL, 5, NULL, NULL),
(792, '152', 'thuong', NULL, NULL, 5, NULL, NULL),
(793, '153', 'thuong', NULL, NULL, 5, NULL, NULL),
(794, '154', 'thuong', NULL, NULL, 5, NULL, NULL),
(795, '155', 'thuong', NULL, NULL, 5, NULL, NULL),
(796, '156', 'thuong', NULL, NULL, 5, NULL, NULL),
(797, '157', 'thuong', NULL, NULL, 5, NULL, NULL),
(798, '158', 'thuong', NULL, NULL, 5, NULL, NULL),
(799, '159', 'thuong', NULL, NULL, 5, NULL, NULL),
(800, '160', 'thuong', NULL, NULL, 5, NULL, NULL),
(801, '1', 'thuong', NULL, NULL, 6, NULL, NULL),
(802, '2', 'thuong', NULL, NULL, 6, NULL, NULL),
(803, '3', 'thuong', NULL, NULL, 6, NULL, NULL),
(804, '4', 'thuong', NULL, NULL, 6, NULL, NULL),
(805, '5', 'thuong', NULL, NULL, 6, NULL, NULL),
(806, '6', 'thuong', NULL, NULL, 6, NULL, NULL),
(807, '7', 'thuong', NULL, NULL, 6, NULL, NULL),
(808, '8', 'thuong', NULL, NULL, 6, NULL, NULL),
(809, '9', 'thuong', NULL, NULL, 6, NULL, NULL),
(810, '10', 'thuong', NULL, NULL, 6, NULL, NULL),
(811, '11', 'thuong', NULL, NULL, 6, NULL, NULL),
(812, '12', 'thuong', NULL, NULL, 6, NULL, NULL),
(813, '13', 'thuong', NULL, NULL, 6, NULL, NULL),
(814, '14', 'thuong', NULL, NULL, 6, NULL, NULL),
(815, '15', 'thuong', NULL, NULL, 6, NULL, NULL),
(816, '16', 'thuong', NULL, NULL, 6, NULL, NULL),
(817, '17', 'thuong', NULL, NULL, 6, NULL, NULL),
(818, '18', 'thuong', NULL, NULL, 6, NULL, NULL),
(819, '19', 'thuong', NULL, NULL, 6, NULL, NULL),
(820, '20', 'thuong', NULL, NULL, 6, NULL, NULL),
(821, '21', 'thuong', NULL, NULL, 6, NULL, NULL),
(822, '22', 'thuong', NULL, NULL, 6, NULL, NULL),
(823, '23', 'thuong', NULL, NULL, 6, NULL, NULL),
(824, '24', 'thuong', NULL, NULL, 6, NULL, NULL),
(825, '25', 'thuong', NULL, NULL, 6, NULL, NULL),
(826, '26', 'thuong', NULL, NULL, 6, NULL, NULL),
(827, '27', 'thuong', NULL, NULL, 6, NULL, NULL),
(828, '28', 'thuong', NULL, NULL, 6, NULL, NULL),
(829, '29', 'thuong', NULL, NULL, 6, NULL, NULL),
(830, '30', 'thuong', NULL, NULL, 6, NULL, NULL),
(831, '31', 'thuong', NULL, NULL, 6, NULL, NULL),
(832, '32', 'thuong', NULL, NULL, 6, NULL, NULL),
(833, '33', 'thuong', NULL, NULL, 6, NULL, NULL),
(834, '34', 'thuong', NULL, NULL, 6, NULL, NULL),
(835, '35', 'vip', NULL, NULL, 6, NULL, NULL),
(836, '36', 'vip', NULL, NULL, 6, NULL, NULL),
(837, '37', 'vip', NULL, NULL, 6, NULL, NULL),
(838, '38', 'vip', NULL, NULL, 6, NULL, NULL),
(839, '39', 'vip', NULL, NULL, 6, NULL, NULL),
(840, '40', 'vip', NULL, NULL, 6, NULL, NULL),
(841, '41', 'vip', NULL, NULL, 6, NULL, NULL),
(842, '42', 'vip', NULL, NULL, 6, NULL, NULL),
(843, '43', 'vip', NULL, NULL, 6, NULL, NULL),
(844, '44', 'vip', NULL, NULL, 6, NULL, NULL),
(845, '45', 'vip', NULL, NULL, 6, NULL, NULL),
(846, '46', 'vip', NULL, NULL, 6, NULL, NULL),
(847, '47', 'thuong', NULL, NULL, 6, NULL, NULL),
(848, '48', 'thuong', NULL, NULL, 6, NULL, NULL),
(849, '49', 'thuong', NULL, NULL, 6, NULL, NULL),
(850, '50', 'thuong', NULL, NULL, 6, NULL, NULL),
(851, '51', 'vip', NULL, NULL, 6, NULL, NULL),
(852, '52', 'vip', NULL, NULL, 6, NULL, NULL),
(853, '53', 'vip', NULL, NULL, 6, NULL, NULL),
(854, '54', 'vip', NULL, NULL, 6, NULL, NULL),
(855, '55', 'vip', NULL, NULL, 6, NULL, NULL),
(856, '56', 'vip', NULL, NULL, 6, NULL, NULL),
(857, '57', 'vip', NULL, NULL, 6, NULL, NULL),
(858, '58', 'vip', NULL, NULL, 6, NULL, NULL),
(859, '59', 'vip', NULL, NULL, 6, NULL, NULL),
(860, '60', 'vip', NULL, NULL, 6, NULL, NULL),
(861, '61', 'vip', NULL, NULL, 6, NULL, NULL),
(862, '62', 'vip', NULL, NULL, 6, NULL, NULL),
(863, '63', 'thuong', NULL, NULL, 6, NULL, NULL),
(864, '64', 'thuong', NULL, NULL, 6, NULL, NULL),
(865, '65', 'thuong', NULL, NULL, 6, NULL, NULL),
(866, '66', 'thuong', NULL, NULL, 6, NULL, NULL),
(867, '67', 'vip', NULL, NULL, 6, NULL, NULL),
(868, '68', 'vip', NULL, NULL, 6, NULL, NULL),
(869, '69', 'vip', NULL, NULL, 6, NULL, NULL),
(870, '70', 'vip', NULL, NULL, 6, NULL, NULL),
(871, '71', 'vip', NULL, NULL, 6, NULL, NULL),
(872, '72', 'vip', NULL, NULL, 6, NULL, NULL),
(873, '73', 'vip', NULL, NULL, 6, NULL, NULL),
(874, '74', 'vip', NULL, NULL, 6, NULL, NULL),
(875, '75', 'vip', NULL, NULL, 6, NULL, NULL),
(876, '76', 'vip', NULL, NULL, 6, NULL, NULL),
(877, '77', 'vip', NULL, NULL, 6, NULL, NULL),
(878, '78', 'vip', NULL, NULL, 6, NULL, NULL),
(879, '79', 'thuong', NULL, NULL, 6, NULL, NULL),
(880, '80', 'thuong', NULL, NULL, 6, NULL, NULL),
(881, '81', 'thuong', NULL, NULL, 6, NULL, NULL),
(882, '82', 'thuong', NULL, NULL, 6, NULL, NULL),
(883, '83', 'vip', NULL, NULL, 6, NULL, NULL),
(884, '84', 'vip', NULL, NULL, 6, NULL, NULL),
(885, '85', 'vip', NULL, NULL, 6, NULL, NULL),
(886, '86', 'vip', NULL, NULL, 6, NULL, NULL),
(887, '87', 'vip', NULL, NULL, 6, NULL, NULL),
(888, '88', 'vip', NULL, NULL, 6, NULL, NULL),
(889, '89', 'vip', NULL, NULL, 6, NULL, NULL),
(890, '90', 'vip', NULL, NULL, 6, NULL, NULL),
(891, '91', 'vip', NULL, NULL, 6, NULL, NULL),
(892, '92', 'vip', NULL, NULL, 6, NULL, NULL),
(893, '93', 'vip', NULL, NULL, 6, NULL, NULL),
(894, '94', 'vip', NULL, NULL, 6, NULL, NULL),
(895, '95', 'thuong', NULL, NULL, 6, NULL, NULL),
(896, '96', 'thuong', NULL, NULL, 6, NULL, NULL),
(897, '97', 'thuong', NULL, NULL, 6, NULL, NULL),
(898, '98', 'thuong', NULL, NULL, 6, NULL, NULL),
(899, '99', 'vip', NULL, NULL, 6, NULL, NULL),
(900, '100', 'vip', NULL, NULL, 6, NULL, NULL),
(901, '101', 'vip', NULL, NULL, 6, NULL, NULL),
(902, '102', 'vip', NULL, NULL, 6, NULL, NULL),
(903, '103', 'vip', NULL, NULL, 6, NULL, NULL),
(904, '104', 'vip', NULL, NULL, 6, NULL, NULL),
(905, '105', 'vip', NULL, NULL, 6, NULL, NULL),
(906, '106', 'vip', NULL, NULL, 6, NULL, NULL),
(907, '107', 'vip', NULL, NULL, 6, NULL, NULL),
(908, '108', 'vip', NULL, NULL, 6, NULL, NULL),
(909, '109', 'vip', NULL, NULL, 6, NULL, NULL),
(910, '110', 'vip', NULL, NULL, 6, NULL, NULL),
(911, '111', 'thuong', NULL, NULL, 6, NULL, NULL),
(912, '112', 'thuong', NULL, NULL, 6, NULL, NULL),
(913, '113', 'thuong', NULL, NULL, 6, NULL, NULL),
(914, '114', 'thuong', NULL, NULL, 6, NULL, NULL),
(915, '115', 'vip', NULL, NULL, 6, NULL, NULL),
(916, '116', 'vip', NULL, NULL, 6, NULL, NULL),
(917, '117', 'vip', NULL, NULL, 6, NULL, NULL),
(918, '118', 'vip', NULL, NULL, 6, NULL, NULL),
(919, '119', 'vip', NULL, NULL, 6, NULL, NULL),
(920, '120', 'vip', NULL, NULL, 6, NULL, NULL),
(921, '121', 'vip', NULL, NULL, 6, NULL, NULL),
(922, '122', 'vip', NULL, NULL, 6, NULL, NULL),
(923, '123', 'vip', NULL, NULL, 6, NULL, NULL),
(924, '124', 'vip', NULL, NULL, 6, NULL, NULL),
(925, '125', 'vip', NULL, NULL, 6, NULL, NULL),
(926, '126', 'vip', NULL, NULL, 6, NULL, NULL),
(927, '127', 'thuong', NULL, NULL, 6, NULL, NULL),
(928, '128', 'thuong', NULL, NULL, 6, NULL, NULL),
(929, '129', 'thuong', NULL, NULL, 6, NULL, NULL),
(930, '130', 'thuong', NULL, NULL, 6, NULL, NULL),
(931, '131', 'thuong', NULL, NULL, 6, NULL, NULL),
(932, '132', 'thuong', NULL, NULL, 6, NULL, NULL),
(933, '133', 'thuong', NULL, NULL, 6, NULL, NULL),
(934, '134', 'thuong', NULL, NULL, 6, NULL, NULL),
(935, '135', 'thuong', NULL, NULL, 6, NULL, NULL),
(936, '136', 'thuong', NULL, NULL, 6, NULL, NULL),
(937, '137', 'thuong', NULL, NULL, 6, NULL, NULL),
(938, '138', 'thuong', NULL, NULL, 6, NULL, NULL),
(939, '139', 'thuong', NULL, NULL, 6, NULL, NULL),
(940, '140', 'thuong', NULL, NULL, 6, NULL, NULL),
(941, '141', 'thuong', NULL, NULL, 6, NULL, NULL),
(942, '142', 'thuong', NULL, NULL, 6, NULL, NULL),
(943, '143', 'thuong', NULL, NULL, 6, NULL, NULL),
(944, '144', 'thuong', NULL, NULL, 6, NULL, NULL),
(945, '145', 'thuong', NULL, NULL, 6, NULL, NULL),
(946, '146', 'thuong', NULL, NULL, 6, NULL, NULL),
(947, '147', 'thuong', NULL, NULL, 6, NULL, NULL),
(948, '148', 'thuong', NULL, NULL, 6, NULL, NULL),
(949, '149', 'thuong', NULL, NULL, 6, NULL, NULL),
(950, '150', 'thuong', NULL, NULL, 6, NULL, NULL),
(951, '151', 'thuong', NULL, NULL, 6, NULL, NULL),
(952, '152', 'thuong', NULL, NULL, 6, NULL, NULL),
(953, '153', 'thuong', NULL, NULL, 6, NULL, NULL),
(954, '154', 'thuong', NULL, NULL, 6, NULL, NULL),
(955, '155', 'thuong', NULL, NULL, 6, NULL, NULL),
(956, '156', 'thuong', NULL, NULL, 6, NULL, NULL),
(957, '157', 'thuong', NULL, NULL, 6, NULL, NULL),
(958, '158', 'thuong', NULL, NULL, 6, NULL, NULL),
(959, '159', 'thuong', NULL, NULL, 6, NULL, NULL),
(960, '160', 'thuong', NULL, NULL, 6, NULL, NULL),
(961, '1', 'thuong', NULL, NULL, 7, NULL, NULL),
(962, '2', 'thuong', NULL, NULL, 7, NULL, NULL),
(963, '3', 'thuong', NULL, NULL, 7, NULL, NULL),
(964, '4', 'thuong', NULL, NULL, 7, NULL, NULL),
(965, '5', 'thuong', NULL, NULL, 7, NULL, NULL),
(966, '6', 'thuong', NULL, NULL, 7, NULL, NULL),
(967, '7', 'thuong', NULL, NULL, 7, NULL, NULL),
(968, '8', 'thuong', NULL, NULL, 7, NULL, NULL),
(969, '9', 'thuong', NULL, NULL, 7, NULL, NULL),
(970, '10', 'thuong', NULL, NULL, 7, NULL, NULL),
(971, '11', 'thuong', NULL, NULL, 7, NULL, NULL),
(972, '12', 'thuong', NULL, NULL, 7, NULL, NULL),
(973, '13', 'thuong', NULL, NULL, 7, NULL, NULL),
(974, '14', 'thuong', NULL, NULL, 7, NULL, NULL),
(975, '15', 'thuong', NULL, NULL, 7, NULL, NULL),
(976, '16', 'thuong', NULL, NULL, 7, NULL, NULL),
(977, '17', 'thuong', NULL, NULL, 7, NULL, NULL),
(978, '18', 'thuong', NULL, NULL, 7, NULL, NULL),
(979, '19', 'thuong', NULL, NULL, 7, NULL, NULL),
(980, '20', 'thuong', NULL, NULL, 7, NULL, NULL),
(981, '21', 'thuong', NULL, NULL, 7, NULL, NULL),
(982, '22', 'thuong', NULL, NULL, 7, NULL, NULL),
(983, '23', 'thuong', NULL, NULL, 7, NULL, NULL),
(984, '24', 'thuong', '8', NULL, 7, NULL, '2024-05-07 01:37:47'),
(985, '25', 'thuong', '8', NULL, 7, NULL, '2024-05-07 01:37:47'),
(986, '26', 'thuong', '8', NULL, 7, NULL, '2024-05-07 01:37:47'),
(987, '27', 'thuong', NULL, NULL, 7, NULL, NULL),
(988, '28', 'thuong', NULL, NULL, 7, NULL, NULL),
(989, '29', 'thuong', NULL, NULL, 7, NULL, NULL),
(990, '30', 'thuong', NULL, NULL, 7, NULL, NULL),
(991, '31', 'thuong', NULL, NULL, 7, NULL, NULL),
(992, '32', 'thuong', NULL, NULL, 7, NULL, NULL),
(993, '33', 'thuong', NULL, NULL, 7, NULL, NULL),
(994, '34', 'thuong', NULL, NULL, 7, NULL, NULL),
(995, '35', 'vip', NULL, NULL, 7, NULL, NULL),
(996, '36', 'vip', NULL, NULL, 7, NULL, NULL),
(997, '37', 'vip', NULL, NULL, 7, NULL, NULL),
(998, '38', 'vip', NULL, NULL, 7, NULL, NULL),
(999, '39', 'vip', NULL, NULL, 7, NULL, NULL),
(1000, '40', 'vip', '8', NULL, 7, NULL, '2024-05-07 01:37:47'),
(1001, '41', 'vip', '8', NULL, 7, NULL, '2024-05-07 01:37:47'),
(1002, '42', 'vip', NULL, NULL, 7, NULL, NULL),
(1003, '43', 'vip', NULL, NULL, 7, NULL, NULL),
(1004, '44', 'vip', NULL, NULL, 7, NULL, NULL),
(1005, '45', 'vip', NULL, NULL, 7, NULL, NULL),
(1006, '46', 'vip', NULL, NULL, 7, NULL, NULL),
(1007, '47', 'thuong', NULL, NULL, 7, NULL, NULL),
(1008, '48', 'thuong', NULL, NULL, 7, NULL, NULL),
(1009, '49', 'thuong', NULL, NULL, 7, NULL, NULL),
(1010, '50', 'thuong', NULL, NULL, 7, NULL, NULL),
(1011, '51', 'vip', NULL, NULL, 7, NULL, NULL),
(1012, '52', 'vip', NULL, NULL, 7, NULL, NULL),
(1013, '53', 'vip', NULL, NULL, 7, NULL, NULL),
(1014, '54', 'vip', NULL, NULL, 7, NULL, NULL),
(1015, '55', 'vip', NULL, NULL, 7, NULL, NULL),
(1016, '56', 'vip', NULL, NULL, 7, NULL, NULL),
(1017, '57', 'vip', NULL, NULL, 7, NULL, NULL),
(1018, '58', 'vip', NULL, NULL, 7, NULL, NULL),
(1019, '59', 'vip', NULL, NULL, 7, NULL, NULL),
(1020, '60', 'vip', NULL, NULL, 7, NULL, NULL),
(1021, '61', 'vip', NULL, NULL, 7, NULL, NULL),
(1022, '62', 'vip', NULL, NULL, 7, NULL, NULL),
(1023, '63', 'thuong', NULL, NULL, 7, NULL, NULL),
(1024, '64', 'thuong', NULL, NULL, 7, NULL, NULL),
(1025, '65', 'thuong', NULL, NULL, 7, NULL, NULL),
(1026, '66', 'thuong', NULL, NULL, 7, NULL, NULL),
(1027, '67', 'vip', NULL, NULL, 7, NULL, NULL),
(1028, '68', 'vip', NULL, NULL, 7, NULL, NULL),
(1029, '69', 'vip', NULL, NULL, 7, NULL, NULL),
(1030, '70', 'vip', NULL, NULL, 7, NULL, NULL),
(1031, '71', 'vip', NULL, NULL, 7, NULL, NULL),
(1032, '72', 'vip', NULL, NULL, 7, NULL, NULL),
(1033, '73', 'vip', NULL, NULL, 7, NULL, NULL),
(1034, '74', 'vip', NULL, NULL, 7, NULL, NULL),
(1035, '75', 'vip', NULL, NULL, 7, NULL, NULL),
(1036, '76', 'vip', NULL, NULL, 7, NULL, NULL),
(1037, '77', 'vip', NULL, NULL, 7, NULL, NULL),
(1038, '78', 'vip', NULL, NULL, 7, NULL, NULL),
(1039, '79', 'thuong', NULL, NULL, 7, NULL, NULL),
(1040, '80', 'thuong', NULL, NULL, 7, NULL, NULL),
(1041, '81', 'thuong', NULL, NULL, 7, NULL, NULL),
(1042, '82', 'thuong', NULL, NULL, 7, NULL, NULL),
(1043, '83', 'vip', NULL, NULL, 7, NULL, NULL),
(1044, '84', 'vip', NULL, NULL, 7, NULL, NULL),
(1045, '85', 'vip', NULL, NULL, 7, NULL, NULL),
(1046, '86', 'vip', NULL, NULL, 7, NULL, NULL),
(1047, '87', 'vip', NULL, NULL, 7, NULL, NULL),
(1048, '88', 'vip', NULL, NULL, 7, NULL, NULL),
(1049, '89', 'vip', NULL, NULL, 7, NULL, NULL),
(1050, '90', 'vip', NULL, NULL, 7, NULL, NULL),
(1051, '91', 'vip', NULL, NULL, 7, NULL, NULL),
(1052, '92', 'vip', NULL, NULL, 7, NULL, NULL),
(1053, '93', 'vip', NULL, NULL, 7, NULL, NULL),
(1054, '94', 'vip', NULL, NULL, 7, NULL, NULL),
(1055, '95', 'thuong', NULL, NULL, 7, NULL, NULL),
(1056, '96', 'thuong', NULL, NULL, 7, NULL, NULL),
(1057, '97', 'thuong', NULL, NULL, 7, NULL, NULL),
(1058, '98', 'thuong', NULL, NULL, 7, NULL, NULL);
INSERT INTO `seats` (`maGhe`, `tenGhe`, `loaiGhe`, `nguoiDat`, `nguoiChon`, `maLichChieu`, `created_at`, `updated_at`) VALUES
(1059, '99', 'vip', NULL, NULL, 7, NULL, NULL),
(1060, '100', 'vip', NULL, NULL, 7, NULL, NULL),
(1061, '101', 'vip', NULL, NULL, 7, NULL, NULL),
(1062, '102', 'vip', NULL, NULL, 7, NULL, NULL),
(1063, '103', 'vip', NULL, NULL, 7, NULL, NULL),
(1064, '104', 'vip', NULL, NULL, 7, NULL, NULL),
(1065, '105', 'vip', NULL, NULL, 7, NULL, NULL),
(1066, '106', 'vip', NULL, NULL, 7, NULL, NULL),
(1067, '107', 'vip', NULL, NULL, 7, NULL, NULL),
(1068, '108', 'vip', NULL, NULL, 7, NULL, NULL),
(1069, '109', 'vip', NULL, NULL, 7, NULL, NULL),
(1070, '110', 'vip', NULL, NULL, 7, NULL, NULL),
(1071, '111', 'thuong', NULL, NULL, 7, NULL, NULL),
(1072, '112', 'thuong', NULL, NULL, 7, NULL, NULL),
(1073, '113', 'thuong', NULL, NULL, 7, NULL, NULL),
(1074, '114', 'thuong', NULL, NULL, 7, NULL, NULL),
(1075, '115', 'vip', NULL, NULL, 7, NULL, NULL),
(1076, '116', 'vip', NULL, NULL, 7, NULL, NULL),
(1077, '117', 'vip', NULL, NULL, 7, NULL, NULL),
(1078, '118', 'vip', NULL, NULL, 7, NULL, NULL),
(1079, '119', 'vip', NULL, NULL, 7, NULL, NULL),
(1080, '120', 'vip', NULL, NULL, 7, NULL, NULL),
(1081, '121', 'vip', NULL, NULL, 7, NULL, NULL),
(1082, '122', 'vip', NULL, NULL, 7, NULL, NULL),
(1083, '123', 'vip', NULL, NULL, 7, NULL, NULL),
(1084, '124', 'vip', NULL, NULL, 7, NULL, NULL),
(1085, '125', 'vip', NULL, NULL, 7, NULL, NULL),
(1086, '126', 'vip', NULL, NULL, 7, NULL, NULL),
(1087, '127', 'thuong', NULL, NULL, 7, NULL, NULL),
(1088, '128', 'thuong', NULL, NULL, 7, NULL, NULL),
(1089, '129', 'thuong', NULL, NULL, 7, NULL, NULL),
(1090, '130', 'thuong', NULL, NULL, 7, NULL, NULL),
(1091, '131', 'thuong', NULL, NULL, 7, NULL, NULL),
(1092, '132', 'thuong', NULL, NULL, 7, NULL, NULL),
(1093, '133', 'thuong', NULL, NULL, 7, NULL, NULL),
(1094, '134', 'thuong', NULL, NULL, 7, NULL, NULL),
(1095, '135', 'thuong', NULL, NULL, 7, NULL, NULL),
(1096, '136', 'thuong', NULL, NULL, 7, NULL, NULL),
(1097, '137', 'thuong', NULL, NULL, 7, NULL, NULL),
(1098, '138', 'thuong', NULL, NULL, 7, NULL, NULL),
(1099, '139', 'thuong', NULL, NULL, 7, NULL, NULL),
(1100, '140', 'thuong', NULL, NULL, 7, NULL, NULL),
(1101, '141', 'thuong', NULL, NULL, 7, NULL, NULL),
(1102, '142', 'thuong', NULL, NULL, 7, NULL, NULL),
(1103, '143', 'thuong', NULL, NULL, 7, NULL, NULL),
(1104, '144', 'thuong', NULL, NULL, 7, NULL, NULL),
(1105, '145', 'thuong', NULL, NULL, 7, NULL, NULL),
(1106, '146', 'thuong', NULL, NULL, 7, NULL, NULL),
(1107, '147', 'thuong', NULL, NULL, 7, NULL, NULL),
(1108, '148', 'thuong', NULL, NULL, 7, NULL, NULL),
(1109, '149', 'thuong', NULL, NULL, 7, NULL, NULL),
(1110, '150', 'thuong', NULL, NULL, 7, NULL, NULL),
(1111, '151', 'thuong', NULL, NULL, 7, NULL, NULL),
(1112, '152', 'thuong', NULL, NULL, 7, NULL, NULL),
(1113, '153', 'thuong', NULL, NULL, 7, NULL, NULL),
(1114, '154', 'thuong', NULL, NULL, 7, NULL, NULL),
(1115, '155', 'thuong', NULL, NULL, 7, NULL, NULL),
(1116, '156', 'thuong', NULL, NULL, 7, NULL, NULL),
(1117, '157', 'thuong', NULL, NULL, 7, NULL, NULL),
(1118, '158', 'thuong', NULL, NULL, 7, NULL, NULL),
(1119, '159', 'thuong', NULL, NULL, 7, NULL, NULL),
(1120, '160', 'thuong', NULL, NULL, 7, NULL, NULL),
(1121, '1', 'thuong', NULL, NULL, 8, NULL, NULL),
(1122, '2', 'thuong', NULL, NULL, 8, NULL, NULL),
(1123, '3', 'thuong', NULL, NULL, 8, NULL, NULL),
(1124, '4', 'thuong', NULL, NULL, 8, NULL, NULL),
(1125, '5', 'thuong', NULL, NULL, 8, NULL, NULL),
(1126, '6', 'thuong', NULL, NULL, 8, NULL, NULL),
(1127, '7', 'thuong', NULL, NULL, 8, NULL, NULL),
(1128, '8', 'thuong', NULL, NULL, 8, NULL, NULL),
(1129, '9', 'thuong', NULL, NULL, 8, NULL, NULL),
(1130, '10', 'thuong', NULL, NULL, 8, NULL, NULL),
(1131, '11', 'thuong', NULL, NULL, 8, NULL, NULL),
(1132, '12', 'thuong', NULL, NULL, 8, NULL, NULL),
(1133, '13', 'thuong', NULL, NULL, 8, NULL, NULL),
(1134, '14', 'thuong', NULL, NULL, 8, NULL, NULL),
(1135, '15', 'thuong', NULL, NULL, 8, NULL, NULL),
(1136, '16', 'thuong', NULL, NULL, 8, NULL, NULL),
(1137, '17', 'thuong', NULL, NULL, 8, NULL, NULL),
(1138, '18', 'thuong', NULL, NULL, 8, NULL, NULL),
(1139, '19', 'thuong', NULL, NULL, 8, NULL, NULL),
(1140, '20', 'thuong', NULL, NULL, 8, NULL, NULL),
(1141, '21', 'thuong', NULL, NULL, 8, NULL, NULL),
(1142, '22', 'thuong', NULL, NULL, 8, NULL, NULL),
(1143, '23', 'thuong', NULL, NULL, 8, NULL, NULL),
(1144, '24', 'thuong', NULL, NULL, 8, NULL, NULL),
(1145, '25', 'thuong', NULL, NULL, 8, NULL, NULL),
(1146, '26', 'thuong', NULL, NULL, 8, NULL, NULL),
(1147, '27', 'thuong', NULL, NULL, 8, NULL, NULL),
(1148, '28', 'thuong', NULL, NULL, 8, NULL, NULL),
(1149, '29', 'thuong', NULL, NULL, 8, NULL, NULL),
(1150, '30', 'thuong', NULL, NULL, 8, NULL, NULL),
(1151, '31', 'thuong', NULL, NULL, 8, NULL, NULL),
(1152, '32', 'thuong', NULL, NULL, 8, NULL, NULL),
(1153, '33', 'thuong', NULL, NULL, 8, NULL, NULL),
(1154, '34', 'thuong', NULL, NULL, 8, NULL, NULL),
(1155, '35', 'vip', NULL, NULL, 8, NULL, NULL),
(1156, '36', 'vip', NULL, NULL, 8, NULL, NULL),
(1157, '37', 'vip', NULL, NULL, 8, NULL, NULL),
(1158, '38', 'vip', NULL, NULL, 8, NULL, NULL),
(1159, '39', 'vip', NULL, NULL, 8, NULL, NULL),
(1160, '40', 'vip', NULL, NULL, 8, NULL, NULL),
(1161, '41', 'vip', NULL, NULL, 8, NULL, NULL),
(1162, '42', 'vip', NULL, NULL, 8, NULL, NULL),
(1163, '43', 'vip', NULL, NULL, 8, NULL, NULL),
(1164, '44', 'vip', NULL, NULL, 8, NULL, NULL),
(1165, '45', 'vip', NULL, NULL, 8, NULL, NULL),
(1166, '46', 'vip', NULL, NULL, 8, NULL, NULL),
(1167, '47', 'thuong', NULL, NULL, 8, NULL, NULL),
(1168, '48', 'thuong', NULL, NULL, 8, NULL, NULL),
(1169, '49', 'thuong', NULL, NULL, 8, NULL, NULL),
(1170, '50', 'thuong', NULL, NULL, 8, NULL, NULL),
(1171, '51', 'vip', NULL, NULL, 8, NULL, NULL),
(1172, '52', 'vip', NULL, NULL, 8, NULL, NULL),
(1173, '53', 'vip', NULL, NULL, 8, NULL, NULL),
(1174, '54', 'vip', NULL, NULL, 8, NULL, NULL),
(1175, '55', 'vip', NULL, NULL, 8, NULL, NULL),
(1176, '56', 'vip', NULL, NULL, 8, NULL, NULL),
(1177, '57', 'vip', NULL, NULL, 8, NULL, NULL),
(1178, '58', 'vip', NULL, NULL, 8, NULL, NULL),
(1179, '59', 'vip', NULL, NULL, 8, NULL, NULL),
(1180, '60', 'vip', NULL, NULL, 8, NULL, NULL),
(1181, '61', 'vip', NULL, NULL, 8, NULL, NULL),
(1182, '62', 'vip', NULL, NULL, 8, NULL, NULL),
(1183, '63', 'thuong', NULL, NULL, 8, NULL, NULL),
(1184, '64', 'thuong', NULL, NULL, 8, NULL, NULL),
(1185, '65', 'thuong', NULL, NULL, 8, NULL, NULL),
(1186, '66', 'thuong', NULL, NULL, 8, NULL, NULL),
(1187, '67', 'vip', NULL, NULL, 8, NULL, NULL),
(1188, '68', 'vip', NULL, NULL, 8, NULL, NULL),
(1189, '69', 'vip', NULL, NULL, 8, NULL, NULL),
(1190, '70', 'vip', NULL, NULL, 8, NULL, NULL),
(1191, '71', 'vip', NULL, NULL, 8, NULL, NULL),
(1192, '72', 'vip', NULL, NULL, 8, NULL, NULL),
(1193, '73', 'vip', NULL, NULL, 8, NULL, NULL),
(1194, '74', 'vip', NULL, NULL, 8, NULL, NULL),
(1195, '75', 'vip', NULL, NULL, 8, NULL, NULL),
(1196, '76', 'vip', NULL, NULL, 8, NULL, NULL),
(1197, '77', 'vip', NULL, NULL, 8, NULL, NULL),
(1198, '78', 'vip', NULL, NULL, 8, NULL, NULL),
(1199, '79', 'thuong', NULL, NULL, 8, NULL, NULL),
(1200, '80', 'thuong', NULL, NULL, 8, NULL, NULL),
(1201, '81', 'thuong', NULL, NULL, 8, NULL, NULL),
(1202, '82', 'thuong', NULL, NULL, 8, NULL, NULL),
(1203, '83', 'vip', NULL, NULL, 8, NULL, NULL),
(1204, '84', 'vip', NULL, NULL, 8, NULL, NULL),
(1205, '85', 'vip', NULL, NULL, 8, NULL, NULL),
(1206, '86', 'vip', NULL, NULL, 8, NULL, NULL),
(1207, '87', 'vip', NULL, NULL, 8, NULL, NULL),
(1208, '88', 'vip', NULL, NULL, 8, NULL, NULL),
(1209, '89', 'vip', NULL, NULL, 8, NULL, NULL),
(1210, '90', 'vip', NULL, NULL, 8, NULL, NULL),
(1211, '91', 'vip', NULL, NULL, 8, NULL, NULL),
(1212, '92', 'vip', NULL, NULL, 8, NULL, NULL),
(1213, '93', 'vip', NULL, NULL, 8, NULL, NULL),
(1214, '94', 'vip', NULL, NULL, 8, NULL, NULL),
(1215, '95', 'thuong', NULL, NULL, 8, NULL, NULL),
(1216, '96', 'thuong', NULL, NULL, 8, NULL, NULL),
(1217, '97', 'thuong', NULL, NULL, 8, NULL, NULL),
(1218, '98', 'thuong', NULL, NULL, 8, NULL, NULL),
(1219, '99', 'vip', NULL, NULL, 8, NULL, NULL),
(1220, '100', 'vip', NULL, NULL, 8, NULL, NULL),
(1221, '101', 'vip', NULL, NULL, 8, NULL, NULL),
(1222, '102', 'vip', NULL, NULL, 8, NULL, NULL),
(1223, '103', 'vip', NULL, NULL, 8, NULL, NULL),
(1224, '104', 'vip', NULL, NULL, 8, NULL, NULL),
(1225, '105', 'vip', NULL, NULL, 8, NULL, NULL),
(1226, '106', 'vip', NULL, NULL, 8, NULL, NULL),
(1227, '107', 'vip', NULL, NULL, 8, NULL, NULL),
(1228, '108', 'vip', NULL, NULL, 8, NULL, NULL),
(1229, '109', 'vip', NULL, NULL, 8, NULL, NULL),
(1230, '110', 'vip', NULL, NULL, 8, NULL, NULL),
(1231, '111', 'thuong', NULL, NULL, 8, NULL, NULL),
(1232, '112', 'thuong', NULL, NULL, 8, NULL, NULL),
(1233, '113', 'thuong', NULL, NULL, 8, NULL, NULL),
(1234, '114', 'thuong', NULL, NULL, 8, NULL, NULL),
(1235, '115', 'vip', NULL, NULL, 8, NULL, NULL),
(1236, '116', 'vip', NULL, NULL, 8, NULL, NULL),
(1237, '117', 'vip', NULL, NULL, 8, NULL, NULL),
(1238, '118', 'vip', NULL, NULL, 8, NULL, NULL),
(1239, '119', 'vip', NULL, NULL, 8, NULL, NULL),
(1240, '120', 'vip', NULL, NULL, 8, NULL, NULL),
(1241, '121', 'vip', NULL, NULL, 8, NULL, NULL),
(1242, '122', 'vip', NULL, NULL, 8, NULL, NULL),
(1243, '123', 'vip', NULL, NULL, 8, NULL, NULL),
(1244, '124', 'vip', NULL, NULL, 8, NULL, NULL),
(1245, '125', 'vip', NULL, NULL, 8, NULL, NULL),
(1246, '126', 'vip', NULL, NULL, 8, NULL, NULL),
(1247, '127', 'thuong', NULL, NULL, 8, NULL, NULL),
(1248, '128', 'thuong', NULL, NULL, 8, NULL, NULL),
(1249, '129', 'thuong', NULL, NULL, 8, NULL, NULL),
(1250, '130', 'thuong', NULL, NULL, 8, NULL, NULL),
(1251, '131', 'thuong', NULL, NULL, 8, NULL, NULL),
(1252, '132', 'thuong', NULL, NULL, 8, NULL, NULL),
(1253, '133', 'thuong', NULL, NULL, 8, NULL, NULL),
(1254, '134', 'thuong', NULL, NULL, 8, NULL, NULL),
(1255, '135', 'thuong', NULL, NULL, 8, NULL, NULL),
(1256, '136', 'thuong', NULL, NULL, 8, NULL, NULL),
(1257, '137', 'thuong', NULL, NULL, 8, NULL, NULL),
(1258, '138', 'thuong', NULL, NULL, 8, NULL, NULL),
(1259, '139', 'thuong', NULL, NULL, 8, NULL, NULL),
(1260, '140', 'thuong', NULL, NULL, 8, NULL, NULL),
(1261, '141', 'thuong', NULL, NULL, 8, NULL, NULL),
(1262, '142', 'thuong', NULL, NULL, 8, NULL, NULL),
(1263, '143', 'thuong', NULL, NULL, 8, NULL, NULL),
(1264, '144', 'thuong', NULL, NULL, 8, NULL, NULL),
(1265, '145', 'thuong', NULL, NULL, 8, NULL, NULL),
(1266, '146', 'thuong', NULL, NULL, 8, NULL, NULL),
(1267, '147', 'thuong', NULL, NULL, 8, NULL, NULL),
(1268, '148', 'thuong', NULL, NULL, 8, NULL, NULL),
(1269, '149', 'thuong', NULL, NULL, 8, NULL, NULL),
(1270, '150', 'thuong', NULL, NULL, 8, NULL, NULL),
(1271, '151', 'thuong', NULL, NULL, 8, NULL, NULL),
(1272, '152', 'thuong', NULL, NULL, 8, NULL, NULL),
(1273, '153', 'thuong', NULL, NULL, 8, NULL, NULL),
(1274, '154', 'thuong', NULL, NULL, 8, NULL, NULL),
(1275, '155', 'thuong', NULL, NULL, 8, NULL, NULL),
(1276, '156', 'thuong', NULL, NULL, 8, NULL, NULL),
(1277, '157', 'thuong', NULL, NULL, 8, NULL, NULL),
(1278, '158', 'thuong', NULL, NULL, 8, NULL, NULL),
(1279, '159', 'thuong', NULL, NULL, 8, NULL, NULL),
(1280, '160', 'thuong', NULL, NULL, 8, NULL, NULL),
(1281, '1', 'thuong', NULL, NULL, 9, NULL, NULL),
(1282, '2', 'thuong', NULL, NULL, 9, NULL, NULL),
(1283, '3', 'thuong', NULL, NULL, 9, NULL, NULL),
(1284, '4', 'thuong', NULL, NULL, 9, NULL, NULL),
(1285, '5', 'thuong', NULL, NULL, 9, NULL, NULL),
(1286, '6', 'thuong', NULL, NULL, 9, NULL, NULL),
(1287, '7', 'thuong', NULL, NULL, 9, NULL, NULL),
(1288, '8', 'thuong', NULL, NULL, 9, NULL, NULL),
(1289, '9', 'thuong', NULL, NULL, 9, NULL, NULL),
(1290, '10', 'thuong', NULL, NULL, 9, NULL, NULL),
(1291, '11', 'thuong', NULL, NULL, 9, NULL, NULL),
(1292, '12', 'thuong', NULL, NULL, 9, NULL, NULL),
(1293, '13', 'thuong', NULL, NULL, 9, NULL, NULL),
(1294, '14', 'thuong', NULL, NULL, 9, NULL, NULL),
(1295, '15', 'thuong', NULL, NULL, 9, NULL, NULL),
(1296, '16', 'thuong', NULL, NULL, 9, NULL, NULL),
(1297, '17', 'thuong', NULL, NULL, 9, NULL, NULL),
(1298, '18', 'thuong', NULL, NULL, 9, NULL, NULL),
(1299, '19', 'thuong', NULL, NULL, 9, NULL, NULL),
(1300, '20', 'thuong', NULL, NULL, 9, NULL, NULL),
(1301, '21', 'thuong', NULL, NULL, 9, NULL, NULL),
(1302, '22', 'thuong', NULL, NULL, 9, NULL, NULL),
(1303, '23', 'thuong', NULL, NULL, 9, NULL, NULL),
(1304, '24', 'thuong', NULL, NULL, 9, NULL, NULL),
(1305, '25', 'thuong', NULL, NULL, 9, NULL, NULL),
(1306, '26', 'thuong', '8', NULL, 9, NULL, '2024-05-07 01:43:36'),
(1307, '27', 'thuong', '8', NULL, 9, NULL, '2024-05-07 01:43:36'),
(1308, '28', 'thuong', NULL, NULL, 9, NULL, NULL),
(1309, '29', 'thuong', NULL, NULL, 9, NULL, NULL),
(1310, '30', 'thuong', NULL, NULL, 9, NULL, NULL),
(1311, '31', 'thuong', NULL, NULL, 9, NULL, NULL),
(1312, '32', 'thuong', NULL, NULL, 9, NULL, NULL),
(1313, '33', 'thuong', NULL, NULL, 9, NULL, NULL),
(1314, '34', 'thuong', NULL, NULL, 9, NULL, NULL),
(1315, '35', 'vip', NULL, NULL, 9, NULL, NULL),
(1316, '36', 'vip', NULL, NULL, 9, NULL, NULL),
(1317, '37', 'vip', NULL, NULL, 9, NULL, NULL),
(1318, '38', 'vip', NULL, NULL, 9, NULL, NULL),
(1319, '39', 'vip', NULL, NULL, 9, NULL, NULL),
(1320, '40', 'vip', NULL, NULL, 9, NULL, NULL),
(1321, '41', 'vip', NULL, NULL, 9, NULL, NULL),
(1322, '42', 'vip', NULL, NULL, 9, NULL, NULL),
(1323, '43', 'vip', NULL, NULL, 9, NULL, NULL),
(1324, '44', 'vip', NULL, NULL, 9, NULL, NULL),
(1325, '45', 'vip', NULL, NULL, 9, NULL, NULL),
(1326, '46', 'vip', NULL, NULL, 9, NULL, NULL),
(1327, '47', 'thuong', NULL, NULL, 9, NULL, NULL),
(1328, '48', 'thuong', NULL, NULL, 9, NULL, NULL),
(1329, '49', 'thuong', NULL, NULL, 9, NULL, NULL),
(1330, '50', 'thuong', NULL, NULL, 9, NULL, NULL),
(1331, '51', 'vip', NULL, NULL, 9, NULL, NULL),
(1332, '52', 'vip', NULL, NULL, 9, NULL, NULL),
(1333, '53', 'vip', NULL, NULL, 9, NULL, NULL),
(1334, '54', 'vip', NULL, NULL, 9, NULL, NULL),
(1335, '55', 'vip', NULL, NULL, 9, NULL, NULL),
(1336, '56', 'vip', NULL, NULL, 9, NULL, NULL),
(1337, '57', 'vip', NULL, NULL, 9, NULL, NULL),
(1338, '58', 'vip', NULL, NULL, 9, NULL, NULL),
(1339, '59', 'vip', NULL, NULL, 9, NULL, NULL),
(1340, '60', 'vip', NULL, NULL, 9, NULL, NULL),
(1341, '61', 'vip', NULL, NULL, 9, NULL, NULL),
(1342, '62', 'vip', NULL, NULL, 9, NULL, NULL),
(1343, '63', 'thuong', NULL, NULL, 9, NULL, NULL),
(1344, '64', 'thuong', NULL, NULL, 9, NULL, NULL),
(1345, '65', 'thuong', NULL, NULL, 9, NULL, NULL),
(1346, '66', 'thuong', NULL, NULL, 9, NULL, NULL),
(1347, '67', 'vip', NULL, NULL, 9, NULL, NULL),
(1348, '68', 'vip', NULL, NULL, 9, NULL, NULL),
(1349, '69', 'vip', NULL, NULL, 9, NULL, NULL),
(1350, '70', 'vip', NULL, NULL, 9, NULL, NULL),
(1351, '71', 'vip', NULL, NULL, 9, NULL, NULL),
(1352, '72', 'vip', NULL, NULL, 9, NULL, NULL),
(1353, '73', 'vip', NULL, NULL, 9, NULL, NULL),
(1354, '74', 'vip', NULL, NULL, 9, NULL, NULL),
(1355, '75', 'vip', NULL, NULL, 9, NULL, NULL),
(1356, '76', 'vip', NULL, NULL, 9, NULL, NULL),
(1357, '77', 'vip', NULL, NULL, 9, NULL, NULL),
(1358, '78', 'vip', NULL, NULL, 9, NULL, NULL),
(1359, '79', 'thuong', NULL, NULL, 9, NULL, NULL),
(1360, '80', 'thuong', NULL, NULL, 9, NULL, NULL),
(1361, '81', 'thuong', NULL, NULL, 9, NULL, NULL),
(1362, '82', 'thuong', NULL, NULL, 9, NULL, NULL),
(1363, '83', 'vip', NULL, NULL, 9, NULL, NULL),
(1364, '84', 'vip', NULL, NULL, 9, NULL, NULL),
(1365, '85', 'vip', NULL, NULL, 9, NULL, NULL),
(1366, '86', 'vip', NULL, NULL, 9, NULL, NULL),
(1367, '87', 'vip', NULL, NULL, 9, NULL, NULL),
(1368, '88', 'vip', NULL, NULL, 9, NULL, NULL),
(1369, '89', 'vip', NULL, NULL, 9, NULL, NULL),
(1370, '90', 'vip', NULL, NULL, 9, NULL, NULL),
(1371, '91', 'vip', NULL, NULL, 9, NULL, NULL),
(1372, '92', 'vip', NULL, NULL, 9, NULL, NULL),
(1373, '93', 'vip', NULL, NULL, 9, NULL, NULL),
(1374, '94', 'vip', NULL, NULL, 9, NULL, NULL),
(1375, '95', 'thuong', NULL, NULL, 9, NULL, NULL),
(1376, '96', 'thuong', NULL, NULL, 9, NULL, NULL),
(1377, '97', 'thuong', NULL, NULL, 9, NULL, NULL),
(1378, '98', 'thuong', NULL, NULL, 9, NULL, NULL),
(1379, '99', 'vip', NULL, NULL, 9, NULL, NULL),
(1380, '100', 'vip', NULL, NULL, 9, NULL, NULL),
(1381, '101', 'vip', NULL, NULL, 9, NULL, NULL),
(1382, '102', 'vip', NULL, NULL, 9, NULL, NULL),
(1383, '103', 'vip', NULL, NULL, 9, NULL, NULL),
(1384, '104', 'vip', NULL, NULL, 9, NULL, NULL),
(1385, '105', 'vip', NULL, NULL, 9, NULL, NULL),
(1386, '106', 'vip', NULL, NULL, 9, NULL, NULL),
(1387, '107', 'vip', NULL, NULL, 9, NULL, NULL),
(1388, '108', 'vip', NULL, NULL, 9, NULL, NULL),
(1389, '109', 'vip', NULL, NULL, 9, NULL, NULL),
(1390, '110', 'vip', NULL, NULL, 9, NULL, NULL),
(1391, '111', 'thuong', NULL, NULL, 9, NULL, NULL),
(1392, '112', 'thuong', NULL, NULL, 9, NULL, NULL),
(1393, '113', 'thuong', NULL, NULL, 9, NULL, NULL),
(1394, '114', 'thuong', NULL, NULL, 9, NULL, NULL),
(1395, '115', 'vip', NULL, NULL, 9, NULL, NULL),
(1396, '116', 'vip', NULL, NULL, 9, NULL, NULL),
(1397, '117', 'vip', NULL, NULL, 9, NULL, NULL),
(1398, '118', 'vip', NULL, NULL, 9, NULL, NULL),
(1399, '119', 'vip', NULL, NULL, 9, NULL, NULL),
(1400, '120', 'vip', NULL, NULL, 9, NULL, NULL),
(1401, '121', 'vip', NULL, NULL, 9, NULL, NULL),
(1402, '122', 'vip', NULL, NULL, 9, NULL, NULL),
(1403, '123', 'vip', NULL, NULL, 9, NULL, NULL),
(1404, '124', 'vip', NULL, NULL, 9, NULL, NULL),
(1405, '125', 'vip', NULL, NULL, 9, NULL, NULL),
(1406, '126', 'vip', NULL, NULL, 9, NULL, NULL),
(1407, '127', 'thuong', NULL, NULL, 9, NULL, NULL),
(1408, '128', 'thuong', NULL, NULL, 9, NULL, NULL),
(1409, '129', 'thuong', NULL, NULL, 9, NULL, NULL),
(1410, '130', 'thuong', NULL, NULL, 9, NULL, NULL),
(1411, '131', 'thuong', NULL, NULL, 9, NULL, NULL),
(1412, '132', 'thuong', NULL, NULL, 9, NULL, NULL),
(1413, '133', 'thuong', NULL, NULL, 9, NULL, NULL),
(1414, '134', 'thuong', NULL, NULL, 9, NULL, NULL),
(1415, '135', 'thuong', NULL, NULL, 9, NULL, NULL),
(1416, '136', 'thuong', NULL, NULL, 9, NULL, NULL),
(1417, '137', 'thuong', NULL, NULL, 9, NULL, NULL),
(1418, '138', 'thuong', NULL, NULL, 9, NULL, NULL),
(1419, '139', 'thuong', NULL, NULL, 9, NULL, NULL),
(1420, '140', 'thuong', NULL, NULL, 9, NULL, NULL),
(1421, '141', 'thuong', NULL, NULL, 9, NULL, NULL),
(1422, '142', 'thuong', NULL, NULL, 9, NULL, NULL),
(1423, '143', 'thuong', NULL, NULL, 9, NULL, NULL),
(1424, '144', 'thuong', NULL, NULL, 9, NULL, NULL),
(1425, '145', 'thuong', NULL, NULL, 9, NULL, NULL),
(1426, '146', 'thuong', NULL, NULL, 9, NULL, NULL),
(1427, '147', 'thuong', NULL, NULL, 9, NULL, NULL),
(1428, '148', 'thuong', NULL, NULL, 9, NULL, NULL),
(1429, '149', 'thuong', NULL, NULL, 9, NULL, NULL),
(1430, '150', 'thuong', NULL, NULL, 9, NULL, NULL),
(1431, '151', 'thuong', NULL, NULL, 9, NULL, NULL),
(1432, '152', 'thuong', NULL, NULL, 9, NULL, NULL),
(1433, '153', 'thuong', NULL, NULL, 9, NULL, NULL),
(1434, '154', 'thuong', NULL, NULL, 9, NULL, NULL),
(1435, '155', 'thuong', NULL, NULL, 9, NULL, NULL),
(1436, '156', 'thuong', NULL, NULL, 9, NULL, NULL),
(1437, '157', 'thuong', NULL, NULL, 9, NULL, NULL),
(1438, '158', 'thuong', NULL, NULL, 9, NULL, NULL),
(1439, '159', 'thuong', NULL, NULL, 9, NULL, NULL),
(1440, '160', 'thuong', NULL, NULL, 9, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `showtime`
--

CREATE TABLE `showtime` (
  `maLichChieu` bigint(20) UNSIGNED NOT NULL,
  `ngayChieu` date NOT NULL,
  `gioChieu` time NOT NULL,
  `giaVeThuong` int(11) NOT NULL,
  `giaVeVip` int(11) NOT NULL,
  `maPhim` bigint(20) UNSIGNED DEFAULT NULL,
  `maRap` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `showtime`
--

INSERT INTO `showtime` (`maLichChieu`, `ngayChieu`, `gioChieu`, `giaVeThuong`, `giaVeVip`, `maPhim`, `maRap`, `created_at`, `updated_at`) VALUES
(1, '2024-05-09', '00:03:00', 55000, 1000000, 6, 1, '2024-05-05 21:56:56', '2024-05-05 21:56:56'),
(2, '2024-05-16', '02:00:00', 5000, 10000, 9, 2, '2024-05-05 23:39:25', '2024-05-05 23:39:25'),
(3, '2024-05-10', '05:00:00', 2000, 10000, 9, 1, '2024-05-05 23:49:02', '2024-05-05 23:49:02'),
(4, '2024-05-10', '01:00:00', 5000, 10000, 1, 1, '2024-05-05 23:50:40', '2024-05-05 23:50:40'),
(5, '2024-05-15', '02:00:00', 7, 777, 10, 1, '2024-05-05 23:52:58', '2024-05-05 23:52:58'),
(6, '2024-05-22', '01:00:00', 4644, 444444, 12, 1, '2024-05-05 23:55:08', '2024-05-05 23:55:08'),
(7, '2024-05-10', '02:00:00', 50000, 100000, 13, 4, '2024-05-06 09:44:56', '2024-05-06 09:44:56'),
(8, '2024-05-10', '08:00:00', 50000, 100000, 13, 1, '2024-05-06 22:04:09', '2024-05-06 22:04:09'),
(9, '2024-05-10', '02:00:00', 50000, 1000000, 22, 1, '2024-05-07 01:42:48', '2024-05-07 01:42:48');

-- --------------------------------------------------------

--
-- Table structure for table `tbnews`
--

CREATE TABLE `tbnews` (
  `maBaiViet` bigint(20) UNSIGNED NOT NULL,
  `tieuDe` varchar(255) NOT NULL,
  `tacGia` varchar(255) NOT NULL,
  `noiDungPhu` text NOT NULL,
  `noiDung` text NOT NULL,
  `hinhAnh` varchar(255) NOT NULL,
  `fileName` varchar(255) DEFAULT NULL,
  `theLoai` varchar(255) NOT NULL,
  `maPhim` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbnews`
--

INSERT INTO `tbnews` (`maBaiViet`, `tieuDe`, `tacGia`, `noiDungPhu`, `noiDung`, `hinhAnh`, `fileName`, `theLoai`, `maPhim`, `created_at`, `updated_at`) VALUES
(2, 'HIU Cinema thông báo tuyển dụng các vị trí', 'Cao Triều', 'Văn phòng Đoàn trường Đại học Quốc tế Hồng Bàng, thông báo tuyển dụng các vị trí cho dự án “Rạp chiếu phim miễn phí” – HIU Cinema', '<p>– Mô tả công việc:</p><ul><li>Quản lý và điều hành dự án rạp chiếu phim.</li><li>Lên lịch chiếu, quản lý page HIU Cinema</li><li>Tổng hợp chấm công, phụ trách quyết toán các nội dung liên quan.</li><li>Thời gian làm việc: Rạp chiếu phim HIU Cinema sẽ chạy vào tuần thứ 1 và tuần thứ 3 của mỗi tháng. Thứ 6 (18g00 – 20g00), Thứ 7 (14g – 17g00, 18g00 – 20g00), Chủ nhật (09g00 – 11g00)</li><li>Lương: 1.200.000đ/tháng</li></ul><p>Điều kiện:</p><ul><li>Là sinh viên Đại học Quốc tế Hồng Bàng</li><li>Có năng lực điều hành, quản lý team.</li><li>Đảm bảo thời gian.</li><li>Ưu tiên: Cán bộ Đoàn – Hội, ban cán sự lớp.</li></ul><p><strong>2. Nhân viên điều phối rạp (06 vị trí)</strong></p><p>– Mô tả công việc:</p><ul><li>Kiểm tra, đối chiếu thông tin sinh viên khi vào rạp;</li><li>Hướng dẫn sơ đồ chỗ ngồi;</li><li>Đảm bảo an toàn, vệ sinh rạp trước và sau khi kết thúc buổi chiếu phim.</li><li>Thời gian làm việc: Rạp chiếu phim HIU Cinema sẽ chạy vào tuần thứ 1 và tuần thứ 3 của mỗi tháng. Thứ 6 (18g30 – 20g00), Thứ 7 (14g30 – 17g00, 17g30 – 20g00), Chủ nhật (08g30 – 11g00)</li><li>Lương: 800.000đ/tháng</li></ul><p>Điều kiện:</p><ul><li>Là sinh viên Đại học Quốc tế Hồng Bàng</li><li>Có tinh thần chấp hành nội quy của rạp.</li><li>Đảm bảo thời gian.</li><li>Ưu tiên: Cán bộ Đoàn – Hội, ban cán sự lớp.</li></ul>', 'http://127.0.0.1:8000/images/tintuc/LBivZKd54nGT.jpg', 'LBivZKd54nGT.jpg', 'Tuyển Nhân Sự', NULL, '2024-05-06 09:27:19', '2024-05-06 09:27:19'),
(3, '\'Lật mặt 7\' của Lý Hải thu 200 tỉ đồng', 'Triều Nguyễn', 'Chưa đầy 1 tuần công chiếu, phim điện ảnh \'Lật mặt 7: Một điều ước\' đã cán mốc doanh thu 200 tỉ đồng. Với thành tích này, dự án của đạo diễn Lý Hải trở thành phim chinh phục cột mốc 200 tỉ đồng nhanh thứ hai của điện ảnh Việt sau \'Mai\' của Trấn Thành.', '<p>Theo số liệu của Box Office Vietnam - đơn vị quan sát phòng vé độc lập, tính đến trưa 2.5, phim điện ảnh <i>Lật mặt 7: Một điều ước</i> của đạo diễn <a href=\"https://thanhnien.vn/ly-hai.html\">Lý Hải</a> đã thu về hơn 200 tỉ đồng. <a href=\"https://thanhnien.vn/phim-mai-cua-tran-thanh-thu-520-ti-dong-chinh-thuc-ra-mat-thi-truong-quoc-te-18524032212190723.htm\">Doanh thu</a> hiện tại bao gồm hai ngày sneakshow (chiếu sớm) với các suất tối 24 - 25.4, cùng một lượng vé mua trước vào các ngày tới.</p><p>Như vậy, chỉ sau hơn 6 ngày công chiếu, tác phẩm mới nhất của <a href=\"https://thanhnien.vn/lat-mat-7-cua-ly-hai-can-moc-100-ti-dong-sau-4-ngay-cong-chieu-18524042910480502.htm\">Lý Hải</a> đã chạm đến cột mốc doanh thu 200 tỉ đồng. Riêng trong hôm 1.5, <i>Lật mặt 7 </i>giành ngôi vương phòng vé với những con số ấn tượng khi thu về hơn 39 tỉ đồng với gần 4.900 suất chiếu. Suốt gần 1 tuần qua, phim luôn đứng đầu bảng xếp hạng doanh thu phim chiếu rạp, bỏ xa bộ phim nước ngoài ra mắt cùng thời điểm là <i>Vây hãm: Kẻ trừng phạt</i>, thời điểm hiện tại thu về hơn 19 tỉ đồng. Box Office Vietnam cũng nhận định dự kiến ngôi đầu phòng vé sẽ thuộc về \"đứa con tinh thần\" của Lý Hải trong ít nhất 3 tuần nữa.</p>', 'http://127.0.0.1:8000/images/tintuc/ab0mttds6wC9.png', 'ab0mttds6wC9.png', 'Phim Nổi Bật', NULL, '2024-05-06 09:33:21', '2024-05-06 09:33:21'),
(4, 'Funfact về dự án “HIU Cinema” – Rạp chiếu phim miễn phí dành cho Sinh viên HIU', 'Cao Triều', 'Dự án Rạp chiếu phim miễn phí – HIU Cinema, là 1 trong 3 dự án trải nghiệm sinh viên của Đoàn trường Đại học Quốc tế Hồng Bàng, trong nhiệm kỳ 2020 – 2022, nhằm đưa sinh viên HIU có thêm điều kiện tiếp cận với bộ môn Nghệ thuật thứ 7 – Điện ảnh.', '<p>Ý tưởng về dự án HIU Cinema được Đoàn trường bàn bạc, chia sẻ và thống nhất ý kiến với Ban Quản lý toà nhà, sau đó được Ban Giám hiệu ủng hộ và đồng ý triển khai. Theo đó, dự án dự kiến khởi động buổi chiếu đầu tiên vào tháng 3/2020, sau khi sinh viên quay trở lại trường. Tuy nhiên, lệnh cách ly xã hội, nên xuất chiếu đầu tiên sẽ diễn vào ngày 8/5/2020. Tài khoản chiếu phim đã được Đòan trường mua bản quyền trên hệ thống Netflix và Galaxy Play.</p>', 'http://127.0.0.1:8000/images/tintuc/9LDGnncLtZ48.png', '9LDGnncLtZ48.png', 'Dự Án 2024', NULL, '2024-05-06 09:35:26', '2024-05-06 09:37:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'KhachHang',
  `avatar` varchar(255) DEFAULT NULL,
  `fileName` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `avatar`, `fileName`, `remember_token`, `created_at`, `updated_at`) VALUES
(8, 'Cao Triều', 'caotrieu0708@gmail.com', NULL, '$2y$10$9P3Pgo0wkWNqEZIXOqFkOe8Rw1delzxcteLpY7irKLHHwYv.R2vqm', 'KhachHang', 'http://127.0.0.1:8000/images/avatar/5KkMlp4OOsbU.png', '5KkMlp4OOsbU.png', NULL, '2024-05-06 02:44:44', '2024-05-06 09:46:54'),
(10, 'Cao Triều KH', 'trieu@gmail.com', NULL, '$2y$10$OsloPTJh7syGuiZ.fD6JAeahXzUUOVrelz3i1lS9dn.1InjZfKxhW', 'QuanTri', 'http://127.0.0.1:8000/images/avatar/geFjIi6k5B3K.jpg', 'geFjIi6k5B3K.jpg', NULL, '2024-05-06 02:47:38', '2024-05-06 09:46:34'),
(11, 'Cao Triều Super', 'caotrieu@gmail.com', NULL, '$2y$10$DdxrkywKPSD97F1ds8VZTODRsioCZrZG5/UkAhubAGtn1D5eHvJoy', 'Super', 'http://127.0.0.1:8000/images/avatar/l2L5yTpDPI7t.jpg', 'l2L5yTpDPI7t.jpg', NULL, '2024-05-06 09:49:47', '2024-05-06 09:50:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner_phim`
--
ALTER TABLE `banner_phim`
  ADD PRIMARY KEY (`maBanner`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`maComment`),
  ADD KEY `comment_mabaiviet_foreign` (`maBaiViet`),
  ADD KEY `comment_maphim_foreign` (`maPhim`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`maFeedback`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`maPhim`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`maOrder`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`maTinh`);

--
-- Indexes for table `rapchieu`
--
ALTER TABLE `rapchieu`
  ADD PRIMARY KEY (`maRap`);

--
-- Indexes for table `seats`
--
ALTER TABLE `seats`
  ADD PRIMARY KEY (`maGhe`),
  ADD KEY `seats_malichchieu_foreign` (`maLichChieu`);

--
-- Indexes for table `showtime`
--
ALTER TABLE `showtime`
  ADD PRIMARY KEY (`maLichChieu`);

--
-- Indexes for table `tbnews`
--
ALTER TABLE `tbnews`
  ADD PRIMARY KEY (`maBaiViet`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner_phim`
--
ALTER TABLE `banner_phim`
  MODIFY `maBanner` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `maComment` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `maFeedback` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `maPhim` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orderdetail`
--
ALTER TABLE `orderdetail`
  MODIFY `maOrder` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
  MODIFY `maTinh` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `rapchieu`
--
ALTER TABLE `rapchieu`
  MODIFY `maRap` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `seats`
--
ALTER TABLE `seats`
  MODIFY `maGhe` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1441;

--
-- AUTO_INCREMENT for table `showtime`
--
ALTER TABLE `showtime`
  MODIFY `maLichChieu` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbnews`
--
ALTER TABLE `tbnews`
  MODIFY `maBaiViet` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_mabaiviet_foreign` FOREIGN KEY (`maBaiViet`) REFERENCES `tbnews` (`maBaiViet`) ON DELETE CASCADE,
  ADD CONSTRAINT `comment_maphim_foreign` FOREIGN KEY (`maPhim`) REFERENCES `movies` (`maPhim`) ON DELETE CASCADE;

--
-- Constraints for table `seats`
--
ALTER TABLE `seats`
  ADD CONSTRAINT `seats_malichchieu_foreign` FOREIGN KEY (`maLichChieu`) REFERENCES `showtime` (`maLichChieu`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
