-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2020-11-20 07:29:09
-- 伺服器版本： 10.4.13-MariaDB
-- PHP 版本： 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `mydb`
--

-- --------------------------------------------------------

--
-- 資料表結構 `bulletin`
--

CREATE TABLE `bulletin` (
  `bid` int(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1.系上公告 2.招生訊息 3.企業徵才 4.行事曆',
  `title` varchar(200) NOT NULL,
  `content` varchar(2000) NOT NULL,
  `time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `bulletin`
--

INSERT INTO `bulletin` (`bid`, `type`, `title`, `content`, `time`) VALUES
(1, 1, '【109.11.17】109-1專題發表事宜(大四重修生)', '發表日期為12/29 (二)早上，時程再行公布。\r\n欲發表的各組(大四重修生)請於12/11(五)前將專題名稱、指導老師、班級、組員、及專題類別（如系統、多媒體、管理等）mail到 oscar870524@gmail.com 。\r\n專題發表PDF文件（10頁，格式如附檔）請於12/22(二)23：59前上傳TronClass系統。\r\n逾期者專題評分項目之「書面文件(成果報告書)」15％以零分計，繳交日期後文件不接受任何更改。', '2020-11-17'),
(2, 2, 'NEW！【109.11.16】110學年度身心障礙學生升學大專校院甄試招生入學', '一、招生網頁：https://cis.ncu.edu.tw/EnableSys/home/schedule\r\n\r\n二、簡章下載：https://cis.ncu.edu.tw/EnableSys/home/readExamInfoFile?examInfoId=405&row=0\r\n\r\n三、報名時間：109/12/01(二) 09:00起 - 109/12/14/(一) 23:59止\r\n\r\n四、報名方式： https://cis.ncu.edu.tw/EnableSys/home (報名後須繳寄報名表及相關報名資料)\r\n\r\n五、招生名額：資訊管理系-學習障礙生1名\r\n\r\n六、郵寄報名資料及繳費期限：109/12/01(二) 09:00起 - 109/12/15(二) 15:30止。\r\n', '2020-11-16'),
(3, 3, '【109.10.28】緯創軟體股份有限公司--招募短期助理工程師', '職務說明如下\r\n工作地點：新竹科學園區\r\n需求人數：8人，負責 Wins系統升級\r\n相關科系：需資工或資管科系，熟悉電腦重灌流程者尤佳\r\n實習期間：2020/11/2-2020/12/31，週一至週五09:00-18:00\r\n \r\n緯創軟體(股票代號4953)擁有深厚的跨國協作交付能力，在大陸、日本、美國、台灣等各地布局，員工人數將近6000位，與世界500強企業合作，專案類型多元(金融/製造/半導體/零售/醫療/電子商務/通訊/AI)', '2020-10-28'),
(4, 1, '【109.10.23】109-1明新科大TOEIC校園考試報名至11/18截止', '109-1 明新科大 TOEIC校園考試 考試資訊\r\n\r\n報名時間：109/11/11~109/11/20\r\n考試日期：109/12/16 13:30\r\n成績查詢：2021/01/06\r\n考試費用：1200\r\n報名網址：\r\nhttps://www.examservice.com.tw/Home/preindex?setStoreID=B6102C', '2020-10-23'),
(5, 2, 'NEW！【109.11.13】109學年度第二學期轉學生招生入學', '一、招生網頁：http://webs.must.edu.tw/ocmust104/index.php\r\n\r\n二、簡章下載：http://webs.must.edu.tw/ocmust104/index.php/2018-03-04-15-19-32\r\n\r\n三、報名時間：109/12/09(三) 09:00 - 110/01/15(五) 12:00止。\r\n\r\n四、報名方式：https://exam.must.edu.tw/examweb/ (一律採網路報名)\r\n\r\n五、招生年級：二、三年級。\r\n\r\n六、報名表及審查資料繳交期限：109/12/09(三) - 110/01/15(五) 15:00止。', '2020-11-13');

-- --------------------------------------------------------

--
-- 資料表結構 `user`
--

CREATE TABLE `user` (
  `id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pwd` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `user`
--

INSERT INTO `user` (`id`, `pwd`) VALUES
('john', 'john1234'),
('mary', 'mary1234');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `bulletin`
--
ALTER TABLE `bulletin`
  ADD PRIMARY KEY (`bid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `bulletin`
--
ALTER TABLE `bulletin`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
