-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 23, 2023 lúc 03:57 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `edit_blog`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog_categories`
--

CREATE TABLE `blog_categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_description` varchar(100) NOT NULL,
  `category_date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `blog_categories`
--

INSERT INTO `blog_categories` (`category_id`, `category_name`, `category_description`, `category_date_created`) VALUES
(1, 'Foot', 'Món ăn', '2023-05-14 02:53:44'),
(2, 'Tour', 'Du lịch', '2023-05-14 02:58:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog_comment`
--

CREATE TABLE `blog_comment` (
  `n_blog_comment_id` int(11) NOT NULL,
  `n_blog_comment_parent_id` int(11) NOT NULL,
  `n_blog_post_id` int(11) NOT NULL,
  `v_comment_author` varchar(50) NOT NULL,
  `v_comment_author_email` varchar(100) NOT NULL,
  `v_comment` varchar(500) NOT NULL,
  `d_date_created` date NOT NULL,
  `d_time_created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog_contact`
--

CREATE TABLE `blog_contact` (
  `contact_id` int(11) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `date_created` date NOT NULL,
  `time_created` date NOT NULL,
  `contact_status` int(1) NOT NULL COMMENT '1-Inactive|2-Active|3-Deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `blog_contact`
--

INSERT INTO `blog_contact` (`contact_id`, `fullname`, `email`, `phone`, `message`, `date_created`, `time_created`, `contact_status`) VALUES
(12, 'Toàn', '123@gmail.com', '0123456789', 'hi', '2023-05-23', '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog_post`
--

CREATE TABLE `blog_post` (
  `blog_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `blog_name` varchar(100) NOT NULL,
  `blog_summary` text NOT NULL,
  `blog_content` text NOT NULL,
  `blog_main_image` varchar(100) NOT NULL,
  `blog_alt_image` varchar(100) NOT NULL,
  `blog_place` int(1) NOT NULL COMMENT '0-Inactive|1-Active|2-Deleted',
  `blog_status` int(1) NOT NULL COMMENT '0-Inactive|1-Active|2-Deleted',
  `blog_date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `blog_post`
--

INSERT INTO `blog_post` (`blog_id`, `category_id`, `blog_name`, `blog_summary`, `blog_content`, `blog_main_image`, `blog_alt_image`, `blog_place`, `blog_status`, `blog_date_created`) VALUES
(35, 1, 'Phở', 'Phở là một món ăn truyền thống của Việt Nam và được xem là một trong những món ăn tiêu biểu cho nền ẩm thực Việt Nam.\r\nNgười Việt luôn tự hào giới thiệu với bạn bè quốc tế về nền ẩm thực phong phú, đặc sắc của nước mình, với các món “quốc hồn quốc túy” như: Phở, Bún bò, Bánh xèo, Bún chả, Bánh cuốn, Bánh bột lọc... đậm đà hương vị truyền thống. Trong đó, Phở không chỉ là một món ăn ngon mà còn trở thành “đại sứ ẩm thực”, góp phần vinh danh văn hóa của Việt Nam với bạn bè quốc tế.\r\n Hương vị của món ăn này hội tụ đầy đủ những gì tinh túy nhất trong ẩm thực Việt Nam. Nhiều du khách quốc tế đến tham quan, du lịch tại Việt Nam, ngoài việc khám phá những địa điểm tham quan nổi tiếng, ai cũng từng một lần vào quán, gọi tô Phở nóng hổi để thưởng thức, mà không phải gọi bằng từ tiếng Anh là “noodle” gọi thẳng là “Phở”', 'Phở là một món ăn truyền thống của Việt Nam và được xem là một trong những món ăn tiêu biểu cho nền ẩm thực Việt Nam.\r\nNgười Việt luôn tự hào giới thiệu với bạn bè quốc tế về nền ẩm thực phong phú, đặc sắc của nước mình, với các món “quốc hồn quốc túy” như: Phở, Bún bò, Bánh xèo, Bún chả, Bánh cuốn, Bánh bột lọc... đậm đà hương vị truyền thống. Trong đó, Phở không chỉ là một món ăn ngon mà còn trở thành “đại sứ ẩm thực”, góp phần vinh danh văn hóa của Việt Nam với bạn bè quốc tế.\r\n Hương vị của món ăn này hội tụ đầy đủ những gì tinh túy nhất trong ẩm thực Việt Nam. Nhiều du khách quốc tế đến tham quan, du lịch tại Việt Nam, ngoài việc khám phá những địa điểm tham quan nổi tiếng, ai cũng từng một lần vào quán, gọi tô Phở nóng hổi để thưởng thức, mà không phải gọi bằng từ tiếng Anh là “noodle” gọi thẳng là “Phở”', '', '', 1, 1, '2023-05-23 18:33:34'),
(36, 1, 'Bún bò', 'Bún bò là một trong những đặc sản của xứ Huế, mặc dù món bún này phổ biến trên cả ba miền ở Việt Nam và cả người Việt tại hải ngoại. Tại Huế, món này được gọi đơn giản là \"bún bò\" hoặc gọi cụ thể hơn là \"bún bò thịt bò\". Các địa phương khác gọi là \"bún bò Huế\", \"bún bò gốc Huế\" để chỉ xuất xứ của món ăn này. Món ăn có nguyên liệu chính là bún, thịt bắp bò, giò heo, cùng nước dùng có màu đỏ đặc trưng và vị sả và ruốc. Đôi khi tô bún còn được thêm vào thịt bò tái, chả cua, và các loại nguyên liệu khác tùy theo sở thích của người nấu.', 'Bún bò là một trong những đặc sản của xứ Huế, mặc dù món bún này phổ biến trên cả ba miền ở Việt Nam và cả người Việt tại hải ngoại. Tại Huế, món này được gọi đơn giản là \"bún bò\" hoặc gọi cụ thể hơn là \"bún bò thịt bò\". Các địa phương khác gọi là \"bún bò Huế\", \"bún bò gốc Huế\" để chỉ xuất xứ của món ăn này. Món ăn có nguyên liệu chính là bún, thịt bắp bò, giò heo, cùng nước dùng có màu đỏ đặc trưng và vị sả và ruốc. Đôi khi tô bún còn được thêm vào thịt bò tái, chả cua, và các loại nguyên liệu khác tùy theo sở thích của người nấu.', '', '', 1, 1, '2023-05-23 18:35:07'),
(37, 1, 'Bún riêu', 'Bún riêu cua là một món ăn truyền thống Việt Nam, được biết đến rộng rãi trong nước và quốc tế [1]. Món ăn này gồm bún (bún rối hoặc bún lá) và \'riêu cua\'. Riêu cua là canh chua được nấu từ gạch cua, thịt cua giã và lọc cùng với quả dọc, cà chua, mỡ nước, giấm bỗng, nước mắm, muối, hành hoa. Bún riêu thường thêm chút mắm tôm để tăng thêm vị đậm đà, thường ăn kèm với rau sống. Đây là món ăn có vị chua thanh, ăn vào mùa hè rất mát nên được người Việt rất ưa thích. Trên các đường phố của Việt Nam có rất nhiều hàng quán bán bún riêu.', 'Bún riêu cua là một món ăn truyền thống Việt Nam, được biết đến rộng rãi trong nước và quốc tế [1]. Món ăn này gồm bún (bún rối hoặc bún lá) và \'riêu cua\'. Riêu cua là canh chua được nấu từ gạch cua, thịt cua giã và lọc cùng với quả dọc, cà chua, mỡ nước, giấm bỗng, nước mắm, muối, hành hoa. Bún riêu thường thêm chút mắm tôm để tăng thêm vị đậm đà, thường ăn kèm với rau sống. Đây là món ăn có vị chua thanh, ăn vào mùa hè rất mát nên được người Việt rất ưa thích. Trên các đường phố của Việt Nam có rất nhiều hàng quán bán bún riêu.', '', '', 1, 1, '2023-05-23 18:35:47'),
(38, 2, 'Đà Nẳng', 'Thành phố Đà Nẵng là thành phố tổng hợp đa ngành, đa lĩnh vực; trung tâm chính trị - kinh tế - xã hội với vai trò là trung tâm công nghiệp, tài chính, du lịch, dịch vụ, văn hóa, giáo dục - đào tạo, y tế chất lượng cao, khoa học - công nghệ, khởi nghiệp, đổi mới sáng tạo của khu vực Miền Trung - Tây Nguyên và cả nước; trung tâm tổ chức các sự kiện tầm khu vực và quốc tế. Thành phố Đà Nẵng đóng vai trò hạt nhân, quan trọng trong Vùng kinh tế trọng điểm miền Trung, đồng thời cũng là một trong 5 thành phố trực thuộc Trung ương ở Việt Nam, đô thị loại I, trung tâm cấp quốc gia, cùng với Hải Phòng và Cần Thơ.', 'Thành phố Đà Nẵng là thành phố tổng hợp đa ngành, đa lĩnh vực; trung tâm chính trị - kinh tế - xã hội với vai trò là trung tâm công nghiệp, tài chính, du lịch, dịch vụ, văn hóa, giáo dục - đào tạo, y tế chất lượng cao, khoa học - công nghệ, khởi nghiệp, đổi mới sáng tạo của khu vực Miền Trung - Tây Nguyên và cả nước; trung tâm tổ chức các sự kiện tầm khu vực và quốc tế. Thành phố Đà Nẵng đóng vai trò hạt nhân, quan trọng trong Vùng kinh tế trọng điểm miền Trung, đồng thời cũng là một trong 5 thành phố trực thuộc Trung ương ở Việt Nam, đô thị loại I, trung tâm cấp quốc gia, cùng với Hải Phòng và Cần Thơ.', '', '', 1, 1, '2023-05-23 18:36:42'),
(39, 2, 'Tp.Hồ Chí Minh', 'Là một thành phố tiêu biểu và đại diện cho Nam Bộ trên tất cả các lĩnh vực kinh tế, giao thông, văn hóa, chính trị, chính vì thế Sài Gòn được xem là nơi thu hút đông đảo nhiều người ở khắp mọi vùng miền đến sinh sống và làm việc.\r\n\r\nNhờ điều đặc biệt này đã giúp nền văn hóa Sài Gòn trở nên đa dạng, phong phú, có sự giao thoa giữa nhiều nét văn hóa của nhiều vùng miền khác nhau, tạo nên một Sài Gòn thịnh vượng, hạnh phúc, chan hòa giữa cuộc sống bộn bề cơm áo gạo tiền.', 'Là một thành phố tiêu biểu và đại diện cho Nam Bộ trên tất cả các lĩnh vực kinh tế, giao thông, văn hóa, chính trị, chính vì thế Sài Gòn được xem là nơi thu hút đông đảo nhiều người ở khắp mọi vùng miền đến sinh sống và làm việc.\r\n\r\nNhờ điều đặc biệt này đã giúp nền văn hóa Sài Gòn trở nên đa dạng, phong phú, có sự giao thoa giữa nhiều nét văn hóa của nhiều vùng miền khác nhau, tạo nên một Sài Gòn thịnh vượng, hạnh phúc, chan hòa giữa cuộc sống bộn bề cơm áo gạo tiền.', '', '', 1, 1, '2023-05-23 18:38:17'),
(40, 2, 'Vịnh Hạ Long', 'Vịnh Hạ Long là 1 trong 10 Vịnh biển đẹp nhất thế giới. Nơi đây là sự kết hợp hài hòa, tinh tế giữa không gian rộng lớn của bầu trời, cái mênh mang, bao la của sông nước là phông nền cho hàng nghìn đảo đá tạo nên một chấm phá nghệ thuật tuyệt diệu. Một rừng đảo đá với những hình thù khác nhau như có bàn tay sắp đặt cố tình của tạo hoá khơi gợi trí tưởng tượng vô hạn của con người', 'Vịnh Hạ Long là 1 trong 10 Vịnh biển đẹp nhất thế giới. Nơi đây là sự kết hợp hài hòa, tinh tế giữa không gian rộng lớn của bầu trời, cái mênh mang, bao la của sông nước là phông nền cho hàng nghìn đảo đá tạo nên một chấm phá nghệ thuật tuyệt diệu. Một rừng đảo đá với những hình thù khác nhau như có bàn tay sắp đặt cố tình của tạo hoá khơi gợi trí tưởng tượng vô hạn của con người', '', '', 1, 1, '2023-05-23 18:39:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog_subscriber`
--

CREATE TABLE `blog_subscriber` (
  `sub_id` int(11) NOT NULL,
  `sub_email` varchar(50) NOT NULL,
  `date_created` date NOT NULL,
  `time_created` date NOT NULL,
  `sub_status` int(1) NOT NULL COMMENT '1-Inactive|2-Active|3-Deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog_tags`
--

CREATE TABLE `blog_tags` (
  `n_tag_id` int(11) NOT NULL,
  `n_blog_post_id` int(11) NOT NULL,
  `v_tag` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog_user`
--

CREATE TABLE `blog_user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_fullname` varchar(100) NOT NULL,
  `user_phone` varchar(50) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_image` varchar(100) NOT NULL,
  `user_info` varchar(500) NOT NULL,
  `user_date_updated` date NOT NULL,
  `user_time_updated` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `blog_user`
--

INSERT INTO `blog_user` (`user_id`, `username`, `user_password`, `user_fullname`, `user_phone`, `user_email`, `user_image`, `user_info`, `user_date_updated`, `user_time_updated`) VALUES
(1, 'phat', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'nguyen tan phat', '0908458872', 'phatnguyen.c1909@gmail.com', '', '', '0000-00-00', '0000-00-00');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `blog_comment`
--
ALTER TABLE `blog_comment`
  ADD PRIMARY KEY (`n_blog_comment_id`);

--
-- Chỉ mục cho bảng `blog_contact`
--
ALTER TABLE `blog_contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Chỉ mục cho bảng `blog_post`
--
ALTER TABLE `blog_post`
  ADD PRIMARY KEY (`blog_id`);

--
-- Chỉ mục cho bảng `blog_subscriber`
--
ALTER TABLE `blog_subscriber`
  ADD PRIMARY KEY (`sub_id`);

--
-- Chỉ mục cho bảng `blog_tags`
--
ALTER TABLE `blog_tags`
  ADD PRIMARY KEY (`n_tag_id`);

--
-- Chỉ mục cho bảng `blog_user`
--
ALTER TABLE `blog_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `blog_comment`
--
ALTER TABLE `blog_comment`
  MODIFY `n_blog_comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `blog_contact`
--
ALTER TABLE `blog_contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `blog_post`
--
ALTER TABLE `blog_post`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `blog_subscriber`
--
ALTER TABLE `blog_subscriber`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `blog_tags`
--
ALTER TABLE `blog_tags`
  MODIFY `n_tag_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `blog_user`
--
ALTER TABLE `blog_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
