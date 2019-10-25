-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- 主機: localhost:3306
-- 產生時間： 2019 年 04 月 16 日 15:43
-- 伺服器版本: 5.6.41-cll-lve
-- PHP 版本： 7.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `cqcp`
--
CREATE DATABASE IF NOT EXISTS `cqcp` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `cqcp`;

-- --------------------------------------------------------

--
-- 資料表結構 `chnn_admin_user`
--

CREATE TABLE `chnn_admin_user` (
  `user_id` smallint(5) UNSIGNED NOT NULL,
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(40) NOT NULL,
  `salt` varchar(10) NOT NULL,
  `last_login` int(11) NOT NULL DEFAULT '0',
  `last_ip` varchar(15) NOT NULL DEFAULT '',
  `email` varchar(600) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `chnn_admin_user`
--

INSERT INTO `chnn_admin_user` (`user_id`, `user_name`, `password`, `salt`, `last_login`, `last_ip`, `email`) VALUES
(1, 'cqcpadmin', '80b96ff38039ae425fa243916b0c7ad6473f6bdb', '(~X2CEk8U+', 1555390383, '116.241.15.72', 'hr@cqcp.com.tw');

-- --------------------------------------------------------

--
-- 資料表結構 `chnn_imagegallery`
--

CREATE TABLE `chnn_imagegallery` (
  `image_id` int(10) NOT NULL,
  `folder_id` int(10) NOT NULL,
  `image_name` varchar(600) NOT NULL COMMENT '圖片檔名',
  `image_path` varchar(600) NOT NULL COMMENT '原始圖片路徑',
  `image_path_thumb` varchar(600) NOT NULL COMMENT '縮小圖片路徑',
  `is_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否顯示',
  `image_descript` varchar(600) NOT NULL COMMENT '備註',
  `add_time` int(10) NOT NULL COMMENT '建立時間'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `chnn_imagegallery`
--

INSERT INTO `chnn_imagegallery` (`image_id`, `folder_id`, `image_name`, `image_path`, `image_path_thumb`, `is_show`, `image_descript`, `add_time`) VALUES
(6, 1, '2018-03-01-1-6.jpg', '../upload/source_img/2018-03-01-1-6.jpg', '../upload/thumb_img/2018-03-01-1-6.jpg', 1, '', 1519897148),
(29, 1, '2019-04-16-1-29.jpg', '../upload/source_img/2019-04-16-1-29.jpg', '../upload/thumb_img/2019-04-16-1-29.jpg', 1, '', 1555394299),
(38, 1, '2019-04-16-1-38.jpg', '../upload/source_img/2019-04-16-1-38.jpg', '../upload/thumb_img/2019-04-16-1-38.jpg', 1, '', 1555396335),
(37, 1, '2019-04-16-1-37.jpg', '../upload/source_img/2019-04-16-1-37.jpg', '../upload/thumb_img/2019-04-16-1-37.jpg', 1, '', 1555396319),
(28, 1, '2019-04-16-1-28.jpg', '../upload/source_img/2019-04-16-1-28.jpg', '../upload/thumb_img/2019-04-16-1-28.jpg', 1, '', 1555394273),
(32, 1, '2019-04-16-1-32.jpg', '../upload/source_img/2019-04-16-1-32.jpg', '../upload/thumb_img/2019-04-16-1-32.jpg', 1, '', 1555395637),
(26, 1, '2019-04-16-1-26.jpg', '../upload/source_img/2019-04-16-1-26.jpg', '../upload/thumb_img/2019-04-16-1-26.jpg', 1, '', 1555393401),
(36, 1, '2019-04-16-1-36.jpg', '../upload/source_img/2019-04-16-1-36.jpg', '../upload/thumb_img/2019-04-16-1-36.jpg', 1, '', 1555395882),
(35, 1, '2019-04-16-1-35.jpg', '../upload/source_img/2019-04-16-1-35.jpg', '../upload/thumb_img/2019-04-16-1-35.jpg', 1, '', 1555395846),
(23, 1, '2019-04-16-1-23.jpg', '../upload/source_img/2019-04-16-1-23.jpg', '../upload/thumb_img/2019-04-16-1-23.jpg', 1, '', 1555393033),
(22, 1, '2019-04-16-1-22.jpg', '../upload/source_img/2019-04-16-1-22.jpg', '../upload/thumb_img/2019-04-16-1-22.jpg', 1, '', 1555393022),
(31, 1, '2019-04-16-1-31.jpg', '../upload/source_img/2019-04-16-1-31.jpg', '../upload/thumb_img/2019-04-16-1-31.jpg', 1, '', 1555395602),
(30, 1, '2019-04-16-1-30.jpg', '../upload/source_img/2019-04-16-1-30.jpg', '../upload/thumb_img/2019-04-16-1-30.jpg', 1, '', 1555394330),
(27, 1, '2019-04-16-1-27.jpg', '../upload/source_img/2019-04-16-1-27.jpg', '../upload/thumb_img/2019-04-16-1-27.jpg', 1, '', 1555393419),
(33, 1, '2019-04-16-1-33.jpg', '../upload/source_img/2019-04-16-1-33.jpg', '../upload/thumb_img/2019-04-16-1-33.jpg', 1, '', 1555395670),
(34, 1, '2019-04-16-1-34.jpg', '../upload/source_img/2019-04-16-1-34.jpg', '../upload/thumb_img/2019-04-16-1-34.jpg', 1, '', 1555395750);

-- --------------------------------------------------------

--
-- 資料表結構 `chnn_pagesinfo`
--

CREATE TABLE `chnn_pagesinfo` (
  `page_id` int(10) NOT NULL,
  `info` text NOT NULL COMMENT '内容',
  `descript` text NOT NULL COMMENT '頁面名稱',
  `subTitle` varchar(600) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `chnn_pagesinfo`
--

INSERT INTO `chnn_pagesinfo` (`page_id`, `info`, `descript`, `subTitle`) VALUES
(1, '這一夜，輾轉難眠，太多的職場眉角壓得我無法喘息。我直覺性的拿起電話， 不記得撥給了誰，直到電話另一端被接起，我聽到了似曾相識，卻有些陌生的聲音。\r\n\r\n??：『是你！終於打來了呀～我一直在等你呢！』\r\n\r\n我：『…你是誰？聲音怎麼跟我這麼像？！』\r\n\r\n??：『當然啦！因為我就是你呀～兩年後的你。』\r\n\r\n我：『居然有這種事……』\r\n\r\n未來：『你現在很煩惱吧？找不到屬於自己的舞台，明明很努力卻毫無收穫。公司內凌亂的分工，讓你成天被瑣事淹沒，完全沒有發展空間，不是嗎？』\r\n\r\n我：『是啊…所以，我失眠了。你呢？聲音聽起來好有活力。這兩年，過得好嗎？』\r\n\r\n未來：『我本來一直都很挫折，直到去年加入新公司後，一切都開始好轉，和以往完全不同了。』\r\n\r\n我：『什麼意思？』\r\n\r\n未來：『現在的公司裡分工明確，團隊合作效率高，剛開始時還懵懵懂懂，但這裡的主管都很厲害也很有耐心，一段時間後我已經獨立上手，真的學到了很多，很有成就感呢！』\r\n\r\n我：『真的？那公司福利好嗎？你的薪水有變多嗎？』\r\n\r\n未來：『福利很好喔！通過試用後，就可以吃到免費提供的午晚餐，也有三節禮金、績效獎金等，年薪上看 15 個月～而且呀，公司每年有固定晉升調薪，我終於不再覺得，自己的努力沒有價值、付出不被看見了喔！』\r\n\r\n我：『哇！太羨慕你了！』\r\n\r\n未來：『所有人都羨慕我！前幾天下雨，我搭計程車上班，司機聽到地址後也興奮的問：這不是全台中最高級的辦公大樓嗎？您該不會在那裡上班吧？』\r\n\r\n我：『到底是什麼公司呢？我會去面試嗎？』\r\n\r\n未來：『是奇迹科技～記得，當你遇到了，一定要好好把握機會喔！現在不要沮喪，打起精神好好充實自己吧～美好的未來就在前方等著你 :) 』', 'Let’s Converse with Yourselves!', ''),
(2, '擁有走在科技尖端，與征服國際市場的實力，奇迹研發團隊透過持續不斷的創新( Creativity )貫徹產品多元化經營，並以自身的專業熱忱( Enthusiasm ) 和最高信譽( Honor )，提供客戶最人性化的科技服務。', '無懈可擊 – 展現非凡價值', ''),
(3, '奇迹科技十分重視每位員工的獨特性，因此我們規劃多項課程，協助同仁進修並提升知識。透過多元學習管道與豐富資源，每位員工都能不斷充實自我，體現「活到老，學到老」的精神。\r\n\r\n我們喜愛樂於挑戰和力求突破的人格特質，誠摯歡迎充滿好奇心，並勇於指出盲點的你／妳，與奇迹的優秀夥伴們一同走向宏偉的康莊大道。', '精益求精 – 企業永續發展', ''),
(4, '奇迹科技位於台中七期金融核心，鄰近老虎城購物中心、國家歌劇院、秋紅谷雙公園。辦公室位在頂級國際商辦大樓，環境舒適且視野遼闊。\r\n\r\n我們提供具競爭力的績效獎金，年薪保障15個月之外，亦有生日禮金和三節禮金，員工基本薪資也會按照比例逐年調升喔。', '樂在其中 – 優渥環境福利', ''),
(5, '彈性上下班讓我們每天有半個小時的緩衝，免於和打卡鐘賽跑 ★★★★★\r\n公司裡取之不盡的零食飲料，都是吃貨同事們滿滿的能量來源 ★★★★★\r\n專屬於集團的頂級廚師，為正式員工料理美味的自助式午晚餐 ★★★★★\r\n咖啡機、微波爐、冰箱等完善設備，讓新進同仁也能賓至如歸 ★★★★★\r\n勞健保和勞退提撥就不必多說，讓您安心就是我們的最大責任 ★★★★★', 'Let’s Make It Worth Your While', ''),
(6, '『就事論事，理直氣和，向上反映』是奇迹科技的管理原則。\r\n\r\n作為一間深具實力的新創公司，我們相信『尚未成功』的潛能，遠比『成功』更值得嘉許。 擁有『成長型思維』的人才，都是最適合我們的夥伴。奇迹不在乎您嘗試或者失敗過幾次， 我們看重的，是熱於解決問題的態度； 我們欣賞的，是勇於面對挑戰的信心； 我們讚美的，是堅持不斷蛻變的毅力。 奇迹科技有專業的 RD 和 IT 團隊作為後盾，不僅深耕於開發和網路技術，也積極創造相互合作與學習的優良環境，新進員工將依安排接受完善的本職訓練。\r\n\r\n站在巨人的肩膀上，讓奇迹作為您開啟眼界的窗', 'Let’s Not Waste Any More Lives!', ''),
(7, '<strong>《Development & Operations》</strong>\r\n奇迹的產品以網頁遊戲為主，遊戲設計主要分為前端及後端。\r\n\r\n如以房子比喻，後端就像支持整棟房子的樑柱，而前端則好比美化屋內的裝潢。\r\n\r\n前端工程師負責製作 HTML5 遊戲動畫與玩家互動功能，並實作 UI/UX 及美術設計畫面；後端工程師專職開發伺服器和 Restful API，並維護遊戲平台。\r\n\r\n此外，負責維運的工程師必須處理各種維運需求，並協助部署與測試程式碼， 以確保不會有 bug 出現，是團隊中不可或缺的角色喔！\r\n\r\n<strong>《Cloud & Network Information Service》</strong>\r\n一個成功穩定的企業，少不了背後堅實的 IT 系統與服務建置團隊！\r\n\r\nMIS 工程師平常忙碌地穿梭在辦公室裡各個角落，協助同仁們解決電腦相關的疑難雜症，只要不吝給予正面鼓勵，他們都會相當親切又勤勞的為民服務喔～\r\n\r\n系統工程師負責建置公司服務的主機，他們就像蓋房子的建築工人，建好一台台的電腦主機，讓服務住在裡面，公司才能夠順利提供服務給客戶使用哦！\r\n\r\n隨著雲端時代來臨，雲端工程師是一個相對新興的職位。由於他們要面對大量分散式及虛擬化的系統環境，必須具備程式開發能力，利用高度自動化的方式管理大量伺服器。簡而言之，雲端工程師就是負責將所有的服務雲端化 :)\r\n\r\n至於 NOC 維運工程師，他們坐在隱密性最高的角落，如同管控大樓監視器的警衛伯伯，負責監控公司各項服務的狀態。由於內容多為機密資訊，一般員工不得隨意觀看喔～\r\n\r\n看到這裡，是不是覺得非常有趣呢？歡迎對電腦技術懷抱熱情的(準)軟體/資訊人加入我們，和團隊一同打造最優質的產品及服務！', 'Let’s Build Great Things Together!', ''),
(8, '如果您是以下文章的著作權人請與我們連繫，可直接點選下方敞公司信箱留下相關資訊，\r\n我們將速派專人與您連絡，謝謝。\r\n', '尋找著作人', ''),
(9, '', '購物注意事項', '');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `chnn_admin_user`
--
ALTER TABLE `chnn_admin_user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_name` (`user_name`);

--
-- 資料表索引 `chnn_imagegallery`
--
ALTER TABLE `chnn_imagegallery`
  ADD PRIMARY KEY (`image_id`);

--
-- 資料表索引 `chnn_pagesinfo`
--
ALTER TABLE `chnn_pagesinfo`
  ADD PRIMARY KEY (`page_id`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `chnn_admin_user`
--
ALTER TABLE `chnn_admin_user`
  MODIFY `user_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表 AUTO_INCREMENT `chnn_imagegallery`
--
ALTER TABLE `chnn_imagegallery`
  MODIFY `image_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- 使用資料表 AUTO_INCREMENT `chnn_pagesinfo`
--
ALTER TABLE `chnn_pagesinfo`
  MODIFY `page_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
