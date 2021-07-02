-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-07-02 10:19:23
-- 伺服器版本： 10.4.18-MariaDB
-- PHP 版本： 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `boardgame2`
--

-- --------------------------------------------------------

--
-- 資料表結構 `items`
--

CREATE TABLE `items` (
  `itemId` int(11) NOT NULL COMMENT '流水號',
  `itemName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品名稱',
  `itemImg` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品照片路徑',
  `itemPrice` int(11) NOT NULL COMMENT '商品價格',
  `itemQty` tinyint(3) NOT NULL COMMENT '商品數量',
  `itemCategoryId` int(11) NOT NULL COMMENT '商品種類編號',
  `created_at` datetime NOT NULL DEFAULT current_timestamp() COMMENT '新增時間',
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '更新時間',
  `itemDescription` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '	商品內容'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='商品列表';

--
-- 傾印資料表的資料 `items`
--

INSERT INTO `items` (`itemId`, `itemName`, `itemImg`, `itemPrice`, `itemQty`, `itemCategoryId`, `created_at`, `updated_at`, `itemDescription`) VALUES
(1, '矮人十兄弟', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5ab8efcaff9c8bac62cecb91_10%20Dwarves_Box_C', 120, 10, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '這些礦工矮人們整天在坑道中挖掘寶石，雖然累積的財富無數，但長年灰頭土臉，生活習慣相當糟糕，衛生兩字他們從沒聽過。自從白雪公主來了以後，豐盛的晚餐上桌前，必定要求他們將手洗淨，但是，頑固的矮人們由於長相穿著都很相似，經常魚目混珠、瞞騙公主。聰明的公主在他們的帽子繡上編號，一個個點名檢查，一旦排序錯誤，公主就會大發雷霆，矮人們就甭想吃晚餐了！快幫幫這些糊塗又頑固的矮人們依序排隊洗手，上桌吃頓豐盛的晚餐吧！這是一款團隊合作遊戲，所有的玩家要在有限的回合中，傳達有效的資訊給其他玩家，讓矮人們依編號出現，贏得一頓豐盛的晚餐。'),
(2, '13道線索', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5c1db685fd28a72741e82787_13Clues_Box.jpg', 990, 10, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '數起兇殘的犯罪案件震驚了1899年的倫敦，謎樣的案情掩蓋了真相，蘇格蘭警場在黑暗中摸索，號召一群優秀的偵探前來協助破案。每位偵探必須利用敏銳的直覺，從13道線索中找出蛛絲馬跡，負責解開自己的謎題，比其他人更快偵破自己的案件！'),
(3, '504', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5ab8efdaff9c8b7b26cecb99_504_Box_3D.jpg', 2650, 10, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '本遊戲提供504種不同的玩法！九個不同的遊戲模組，造就504種不同的規則組合！'),
(4, '數字急轉彎', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5e9538f619faa7557041501a_789_Box_3D_2019.jp', 390, 10, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '快速又有趣的數字運算！這遊戲和數1、2、3一樣簡單！玩家們要把牌堆最上面的紙牌加減1、2或3，如果手上有一樣數字的牌，就可以打出來。這聽起來很簡單，但是遊戲過程中可是全部的玩家同時搶著出牌，所以可以出的牌會一直改變，動作慢了點，可就沒得出囉！第一個將紙牌出完的人獲勝！'),
(5, '數急字轉彎', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/604f16d886d7679a7a3f6009_7%20date%209_CN_Bo', 390, 10, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '觀察中央牌堆最上面的紙牌，算出該牌上乘法算式的答案（積），你手牌中若有黃色數字與答案的個位數或十位數相同，立即將牌打出在中央牌堆上。這聽起來很簡單，但是遊戲過程中是全部的玩家同時搶著出牌，所以可以出的牌會一直改變，動作慢了點，可就沒得出囉！第一個將紙牌出完的人獲勝！'),
(6, '妙廚上菜', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5e796b529b31cfa64cabc365_AlaCarte_Box_2019.', 1490, 10, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '料理界的奇觀！大家都知道，人多手雜就會壞了事。在『妙廚上菜』這款遊戲中，玩家們在嘶嘶作響的爐火上烹煮料理，並暗自期望著與自己爭奪大廚職位的對手們，會端出太鹹而且毫無價值的菜餚。當每一位玩家都在關心爐火是否完美時，你還必須發揮超級手感來灑上完美而正確的香料組合；燒焦或是過度調味的料理，只能塞滿垃圾桶而已。唯有能掌控在廚房中所有的危機與風險的玩家，才能成為真正的頂尖大廚。'),
(7, '奶油還是派', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5b3b08a4fa3b00d8a47002cd_Sahne_Box.jpg', 690, 10, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '聰明媽媽必備小手段：讓一個孩子負責切派，其他的孩子可以先選要吃哪一片，切派的人就會盡量讓每一片大小一樣，即使自己最後才拿，也不吃虧。這個手段在這款遊戲中不見得管用，甚至有可能要反其道而行：你可以用點詭計讓給別人較多的派，但自己在遊戲結束時卻得到較高的分數。聰明地切派並善於察顏觀色，才能讓你成為最終的贏家。'),
(8, '搶尾刀', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5ab8f018ff9c8be262cecbc5_Absacker_BOX_3D.jp', 390, 10, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '想來點睡前的輕鬆寧靜遊戲嗎？玩家依序出一、二或三張牌以湊成一排，當一排中有三張「3」、四張「4」、五張「5」、六張「6」或七張「7」時，這排便完成了。你獲得你所完成的那排中所有的紙牌。遊戲結束時，擁有最多牌的玩家獲勝。簡單的規則讓全家大小輕鬆上手，享受寧靜的刀光劍影！'),
(9, '不在場證明', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5ab8f09de294a009d647806b_Alibi_Box_3D.jpg', 390, 10, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '昨天午夜發生了謀殺案，刑事組從檔案中過濾出四位最有可能的嫌疑犯，關鍵線索還是要靠民眾提供，但是目擊證人們所提出的證詞相互矛盾、眾說紛紜！到底誰是兇手？誰會是破案的關鍵證人？緊張！懸疑！刺激！提供最多正確線索的人將贏得勝利。'),
(10, '動物疊疊樂', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5ab8f0d041c091b6fbceed32_AnimaUponAnimal_BO', 1160, 10, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '動物們想來場特技表演，牠們要堆疊成一座巨大的金字塔，這需要高超的技巧與過人的勇氣！誰能將企鵝放在鱷魚上面，把綿羊放在企鵝上面，再把蛇放在綿羊身上呢？大熊想要站上這金字塔頂端，但是這高度著實使牠頭暈目眩！一款搖搖晃晃的堆疊遊戲，也可以一個人玩喔！'),
(11, '諾亞鬧方舟', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5ab8f0f11f33705d64d77edf_AoB_Box_3D.jpg', 990, 10, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '每位玩家都擁有一艘自己的方舟，並要盡量載運最多的動物。'),
(12, '水瓶座', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5ab8f0fedc7441512652764e_Aquarius_Box_3D.jp', 490, 10, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '如何瞞過對手，讓手中任務牌指定的元素七張相互連結？孩子們喜歡顏色豐富的設計、輕快的節奏及尋找相似配對的遊戲策略；大人們則酷愛遊戲過程中激烈的競爭。這是一款老少咸宜的家庭紙牌遊戲，發完牌後悄悄計劃如何移動你的元素牌，千萬別以為自己快贏了??恐怕任務牌就要被調包囉！'),
(13, '搖搖蘋果樹', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5b3b0765e4d6c0ca60154f9d_ArbosApfel_Box_Sea', 1490, 10, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '一棵小樹需要大家悉心照顧，才能枝繁葉茂！但有時天不從人願，狂風或暴雨將枝葉果實掃落一地，必須收拾乾淨，等待恢復平靜，讓它們重返枝頭。率先將手上所有的枝葉果實插在樹上的玩家獲勝！?本遊戲為榮獲2000年德國年度兒童遊戲獎冠軍的「搖搖樹」之進化版本。搭配35張紙牌來進行進階版遊戲，讓參與的老老少少體驗更驚險刺激的種樹達人賽！?木製配件來自德國，每個細節都由手工打磨完成！'),
(14, '艾亞 生命之源', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5ab8f119ff9c8b7a1aceccc2_AYA_Box_3D.jpg', 990, 10, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '歡迎來到河川之神Aya的世界。你將沿著河川踏上一場尋求大自然瑰寶的旅程，並驚歎於沿途浮現的壯麗風景與動物。'),
(15, '平衡天使', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5ab8f125ff9c8b071bceccc8_Bamboleo_Box_3D.jp', 1990, 10, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '平衡天使是給所有重力學專家，及所有想要成為這方面專家的人的一款極富技巧性的遊戲！一片放在基座上的木盤承載了25個積木，玩家們輪流從木盤上拿取一個積木，依重力法則，平衡天使會讓木盤以你想像不到的方式傾斜。平衡天使是適合闔家進行的平衡挑戰，參與遊戲或旁觀都十分有趣。'),
(16, '猩戰', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5ab8f13ef866da4f04167c76_Banana%20bandits_B', 1160, 10, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '香蕉大盜首領正計劃在退休前選出一位得力助手成為他的繼任人，首領向他們宣佈誰先成功獲取三個香蕉金幣，使可成為下一任的首領。香蕉金幣需藉由搶奪其他對手存有的猩猩貨幣轉化而成，所以大家須盡力擊打對手並搶套他們的猩猩貨幣，一場激烈的「猩戰」即將展開！'),
(17, '巴撒利市集', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5c1d105876d7bf1ebf6ee2c6_Basari_Box_3D.jpg', 490, 10, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '高超的談判技巧讓你叱?商場！每位玩家為了獲得珍貴的寶石，秘密地挑選一項行動，若你是唯一選擇該種行動的玩家，立刻執行吧！若有兩位玩家選擇同一項行動，必須進行競價來決定由誰執行。在巴撒利市集，體驗刺激、緊湊、高度互動，但又簡單易學的談判交易遊戲！'),
(18, '南北戰線', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5ab8f1b2ff9c8ba10ececd0c_Battle%20Line_Box_', 490, 10, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '古代打仗都在雙方擺好有組織的陣式後才開戰，雙方領導人指示其部隊沿著戰線取得戰略優勢，壓倒對手的中軍、突破對方的側翼或堅守陣營，等到時機成熟，採取果斷的行動，一舉殲滅敵人。如何帶領你的部隊才能在南北戰線獲得勝利？'),
(19, '尋尋蜜蜜', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5def4e46f8202977d18851ac_BeeSmart_BOX_3D.jp', 390, 10, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '小蜜蜂嗡嗡～若想獲得最多的蜂蜜，就得眼明手快，找到最多與擲骰結果同色的花朵，讓你的小蜜蜂採集最多的花蜜。到底哪裡才是最佳位置？甜美的蜂蜜等著你們喔！'),
(20, '比基尼', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5f844bed41a0f4d53487ff76_BG%20BIKINI_Play1.', 100, 10, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '?綑綁遊戲盒、板塊、書籍'),
(21, '黑喵傑克', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5c1cac3b77d1f6873d0ee2c7_BlackJacky_Box.jpg', 490, 10, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '日正當中，決鬥開始！ 究竟誰能贏得這場賭局呢？黑喵傑克跟他的毛朋友們，在這個遊戲中讓老鼠們跳跳舞。玩家試著讓自己的老鼠牌總值盡量接近21，不只要玩遊戲，還要耍耍其他人，撐到最後的玩家獲勝。'),
(22, '血契獵殺', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5ab8f1bce92abf9f316d91e6_Blood_Bound_Box_3D', 690, 10, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '血族戰爭已經結束，只有少數幸運者幸存，你可以聚集起自己的信徒並找出敵對氏族的族長嗎？'),
(23, '種豆', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5e796995c86c010367896846_Bohnanza_Box_2019.', 490, 10, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '種豆真能得豆嗎？一場農夫間的割喉交易戰！農家樂作者 Uwe Rosenberg 早期創意驚奇之作！種豆子這件事情出乎意料的有趣！遊戲中擁有的豆子田，總是不夠容納所有你要種的豆子，因此經常要收割豆子賣掉後再種其他的豆子。賣豆子時，同一種豆子越多越賺錢，太少的豆子會連1毛錢都賺不到。因此，你要盡可能用手上不想要的豆子，跟其他玩家換得你想種的豆子。藉由巧妙的交易手腕，對其他玩家略施小惠，以賺得更多的金幣，金幣最多的玩家獲勝。'),
(24, '你炸我彈他', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5d1c01a5d9148d107e01c93c_BOOOOOM_Box_3D.jpg', 890, 10, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '這是個與和平完全無關的遊戲，也扯不上公平正義。遊戲中完全展現弱肉強食的黑暗面，善用手牌，將其他玩家炸死，讓自己成為唯一倖存的玩家，以獲得勝利。但是，黑暗中總是有著光明，在極端的環境下，你是否能看見人性中善良的曙光在若隱若現…1. 選擇丟骰或出牌2. A.三個SAFE以上可獲得手牌。B.不到三個SAFE，會得到一點傷害，三點傷害則死亡。3. 按照卡片上的功能執行動作，每張卡片的功能都不一樣唷！'),
(25, '爭牆鬥勝', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5ab8f218f866da0ddc1680d9_BRIX_BOX_3D_SEAL.j', 690, 10, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '圈圈叉叉在這款策略遊戲中進入新紀元！玩家輪流將方塊組加入牆面，讓結構不斷地擴大。你所放置的每一個方塊組，同時包含對手的符號或顏色，若不仔細規劃你的戰術，你每放一個方塊組，都可能讓對手獲勝！你能找到「一線」生機嗎？'),
(26, '燒錢計畫', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5ab8f227ff9c8b19a8cecd5f_BurnRate_box_3D.jp', 590, 10, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '你是新成立的網路公司執行長，資金消耗速度驚人，底下員工都超時工作，而副總都是飯桶，公司的未來全繫於一家線上寵物商店。你究竟能在這場遊戲中存活多久？在燒錢計劃中，你一開始有少量的員工、起始資金及拖垮競爭對手的企劃。明智地使用你的卡片，你可以挖角競爭對手的重要員工或籌募更多資金，但小心避免重蹈那20大網路公司的禁忌：像是免費電腦之類的點子就會讓你的燒錢速度飆高！如果可以幫你再多撐一回合，裁員也別手軟！再撐一下，也許情況就會逆轉？'),
(27, '駱駝大賽', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5ab8f249ff9c8b65f4cecd73_Camel_Up_Box_3D.jp', 1320, 10, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '快來見識有史以來最瘋狂的駱駝大賽！尤其是駱駝疊在一起而金字塔倒轉時，場面將會一片混亂、瀕臨失控狀態！身為埃及上流社會的一員，聚集在沙漠中的目的只有一個：下注在你看好的駱駝身上，以分段賽及整場比賽贏得最多的獎金。然而在比賽中不是只靠運氣就能壓倒其他玩家，抓住比賽的節奏和精準掌握下注時機也是贏得比賽不可或缺的能力。一款簡單、快速、極度有趣且最多可讓8名玩家同樂的家庭遊戲。'),
(28, '駱駝大賽', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5e282a8b8fc29850b3980b60_CamelUp_2020_BOX.j', 1490, 10, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '快來見識有史以來最瘋狂的駱駝大賽！身為埃及上流社會的你，來到這裡試試手氣，對自己看好的駱駝下注，以期在分段賽及賽終時贏得最多獎金。然而，互相揹負的駱駝，讓賽況變得更難預測。抓住比賽的節奏，精準掌握下注時機，才是讓你贏錢的關鍵。令人傻眼的是，來了兩名新的選手 —— 逆向奔馳的瘋狂駱駝，儘管立刻喪失了參賽資格，但仍嚴重驚擾了整場賽事??讓我們拭目以待這場精彩的比賽！'),
(29, '駱駝大賽超級盃擴充', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5ab8f261dc74413e0e5276c3_Camel_Up_SuperCup_', 830, 10, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '史上最瘋狂的駱駝大賽現在更加瘋狂了！駱駝將進行更長的賽程，有新加入的骰子助陣，讓駱駝加速衝刺；還有知名攝影師在定點捕捉最誇張的駱駝疊羅漢英姿。主辦單位開發了全新的下注機制，獎金加碼，也讓賽事更為刺激。誰能把握全新良機，成為駱駝大賽的最終贏家呢？包含4個模組，可以自由搭配基本版遊戲使用。本擴充必須搭配「駱駝大賽」基本版方能進行遊戲！包含第9及第10名玩家所須配件！'),
(30, '卡卡頌', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5ab8f2a51f33703defd7807f_carcassonne_BOX_3D', 1160, 10, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '卡卡頌是位於法國南部的一座美麗古城，也是中古時代教會對抗異教徒的重鎮 ，這座城堡牢不可破的防禦工事，不論是在當時或今天都堪稱一絕！在一塊塊拼起的版圖中有城堡、道路、草原和修道院，隨著回合的進行，版圖將逐漸擴大。玩家如同中古時代的君王或諸侯，派遣手下去開疆拓土，手下可擔任騎士、強盜、農夫或修士，去建立、管理或佔領城堡、道路、草原和修道院。每拼放一塊版圖，玩家就有機會派遣手下擔任一個角色，如何拼放和派遣才能讓你在遊戲終了時獲得最高的分數？在你發現大好的得分機會時，手中還有可以派遣的手下嗎？'),
(31, '卡卡頌兒童版', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5ab8f358dc7441103252770e_CarcKID_Box_3D.jpg', 1160, 10, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '法國人每年七月十四日慶祝他們的國慶日。在卡卡頌，人們會在國慶日當天早上把農舍裡的雞、牛、羊都放出來。孩子們的任務就是在天黑之前，把牠們都帶回農舍裡面！卡卡頌兒童版是經典桌上遊戲《卡卡頌》的簡化版本，專為幼兒所設計，去除掉分數計算，但樂趣不減！第一個把所有小孩放到地圖上的人就贏囉！'),
(32, '卡卡頌 非洲旅遊', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5c1ca6626dd789a2660948de_CarcSafari_Box.jpg', 1160, 10, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '熱帶氣候的高溫籠罩著非洲草原，薰風徐徐，我們來到這片一望無際的草原，希望能看到這裡最受歡迎的大型動物。猴子在樹枝上擺盪，獅子在樹蔭下休憩，大象緩慢的步伐震動著大地，水池邊總是聚集了多種不同的動物，非常值得在一旁靜靜等待，捕捉更多的曼妙身影。這款合作即競爭的策略性版圖遊戲，每次玩都會激盪出不同的策略或同盟關係，除了對圖像的敏感外，開放的合作態度更是致勝的關鍵！'),
(33, '惡魔島', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5ab8f364f866da97ec1681fd_Cartagena_Box_3D.j', 750, 10, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '進入惡魔島的奇異世界，請自由選擇各種規則及劇本組合來進行本遊戲！讓您體驗無盡的可能性！'),
(34, '一網打盡', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5ab8f384e294a062fb478412_Cash%20A%20Catch_2', 830, 10, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '在德國漢堡港口的魚市拍賣中，大盤商叫賣著：「來來來，來買上好的新鮮魚貨啊！首先是兩隻龍蝦??再來是兩條鰻魚??只賣10元喔！沒有人要？那我再加上一隻龍蝦??來了個「偷魚賊」??再猶豫就買不到囉！??好吧，賠本大放送，加三條比目魚??」「叮！」鈴聲響起「成交！」「感謝戴藍色帽子的老闆，一共是10歐元，謝謝您的惠顧。」這是一筆好買賣嗎？只有眼光獨到且下標快狠準的玩家，才能成為賺大錢的魚販喔！'),
(35, '卡坦島', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/60011bc96c6297c92f1f1f7a_CATAN_Box_2021.jpg', 1490, 10, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '自1995年榮獲德國年度遊戲冠軍以來，卡坦島讓全世界無數的人為之瘋狂，流連於這個充滿益智與趣味的遊戲當中。現在，我們歡迎你的加入！扮演勇敢的拓荒者，來到這座不知名的島上，你們叫它卡坦島。創立了第一批的村莊，收集資源，鋪設道路，興建城市，並且透過交易各取所需，解決資源分佈不均的問題。然而卡坦島畢竟是個小島，土地與資源都很有限；當勢力越來越強大，衝突也隨之而來。你是否能從群雄中脫穎而出，稱霸卡坦島？想進入桌上遊戲的世界，一定不能錯過卡坦島！！'),
(36, '卡坦島 大盒版', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5d6e533271558823bc1750dd_CATAN_BigBox_BOX_3', 2480, 10, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '經驗更遼闊的卡坦世界！卡坦島基本版、卡坦島5-6人擴充、4個精彩的卡坦島劇本擴充加上卡坦島骰子版，都收藏在這盒卡坦島大盒版之中！基本版和各劇本皆可加入卡坦島5-6人擴充，供3-6名玩家一同遊玩！每款擴充都為遊戲帶來新的可能性，豐富了卡坦體驗的多樣化！卡坦島帶給數以百萬計的卡坦迷無限的歡樂與刺激！現在全新的卡坦世界正對您敞開大門，邀您一同遨遊！'),
(37, '卡坦島 旅遊版', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5a98fa1955afe20001961924_CATAN_komp_3D_BOX.', 1320, 10, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '搭火車、山中涼亭小憩或草原野餐，卡坦島旅遊版的精巧設計讓您隨時可以享受卡坦島的樂趣！旅遊版的收納設計不只節省空間，也提供富有變化的遊戲地圖，村莊、道路和城市可以固定在地圖上，即使晃動也不會掉落，骰盒的設計讓人再也不用擔心會弄丟骰子。卡坦島旅遊版攜帶方便，並保有基本版所有的遊戲元素，令人驚豔！'),
(38, '卡坦島 印加崛起', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5c3316e711335e59a7c3cc03_CATAN_INKA_BOX_3D.', 1650, 10, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '帶領部落所建立的村莊和城市位於南美洲新興的高地，運用當地的特產：魚、古柯葉和羽毛來進行交易，將會帶來豐厚的收入。擴展貿易路線和發展武術，才能帶領部落向前發展、取得成功。過度的發展讓部落快速殞沒，但很快地又有新部落的誕生，滅亡部落釋放出許多建地，您能快速取得這些新的發展契機嗎？ ?廣受歡迎的卡坦島遊戲機制，在這款主題全然不同的獨立遊戲中，展現更深廣的可能性。?誰能在這變化莫測的部落征戰中出類拔萃，成為領導印加人崛起的偉大領袖？'),
(39, '卡坦島 騎士擴充劇本：征服者傳奇', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5ceab1e7c0831cc7e66ae6b5_Catan_SuRLeg_Box.j', 1490, 10, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '卡坦島保衛戰！?大約在第一批移民來到卡坦島定居的670年後，滿載戰士的卡拉維爾帆船艦隊在島嶼北岸登陸。卡坦島的軍事統帥托嬈必須號召騎士們共同抵禦外侮！將騎士進化為砲兵或騎兵來提高戰力，只要大家同心協力，便能阻擋敵人的挺進。你們能夠在敵人的援軍到達前，殲滅他們的要塞嗎？這是卡坦島危急存亡之秋。本劇本包含三個連續的章節，每個章節必須克服不同的困境，才能保住卡坦島的自由！許多新元素相繼加入，玩家們必須不斷調整策略，才能在激烈的戰況中，擊敗征服者的大軍！戰鬥於焉展開！本擴充並非獨立遊戲須搭配：卡坦島基本版及卡坦島騎士擴充方能進行遊戲。'),
(40, '作弊飛蛾', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5ab908ebc6b5aa6699111d0d_Mogel%20Motte_BOX_', 490, 10, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '作弊不是禁止的嗎？在這款無恥的紙牌遊戲中不是！在這裡，藉由聰明地棄牌以及有技巧地作弊，你努力成為首位擺脫全部紙牌的玩家。這個任務其實相當簡單，如果守衛蟲不在的話??'),
(41, '詐賭巫師', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5ab8f539987c864eae53c307_Cheaty%20Mages_Box', 590, 10, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '在這個遊戲裡，玩家們是懂得各種咒語的魔法師。在怪物競技賭場裡，只要自己押注的怪物鬥士獲勝，就能得到一大筆賞金。玩家們秘密地使用咒語，想盡辦法讓自己押注的怪物鬥士獲勝。但是競技場的裁判可不會放任不管，在某些情況下強大的咒語反而無法使用。遊戲結束時，由賺到最多錢的玩家獲勝。'),
(42, '查理檢查哨', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5ab8f542f9eb2f2ada989176_CHECKPOINT_Box_CH.', 590, 10, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '這是一個集觀察、推理與思緒敏捷的遊戲，仔細探索所有的疑嫌犯，透過自己以及其他K9探員所揭露的線索，從中揪出間諜首腦。努力率先抓到間諜首腦，成為查理檢查哨的最佳探員。'),
(43, '精彩馬戲團', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5dae7207b1ac1a9bf7f4aedf_CircusGrandioso_Co', 490, 10, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '疊起來！疊起來！馬戲團今天要表演難以置信的動物雜技金字塔秀！遊戲中，每位玩家都是馴獸師，當你將一隻動物疊在金字塔頂端時，你便是目前最優秀的馴獸師，立即獲得馴獸師指示物。但別高興得太早，一山還有一山高，其他馴獸師的動物可能隨時成為新的塔頂！究竟誰才是最頂尖的馴獸師呢？遊戲結束時，持有馴獸師指示物的玩家獲勝。'),
(44, '變色龍', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5ab8f572fc0a92e25bad88e7_Coloretto_CN_Box_3', 390, 10, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '像變色龍一般，在這個遊戲中，玩家可以多次變換自己喜歡的顏色，但是，所選擇的牌色彩太繽紛，在這款遊戲中可是會帶來扣分的喔！所以，除了要在正確的時間點改變心意，或者拿取牌組外，還要先下手為強喔！'),
(45, '告白', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5ab8f578fc0a926536ad88eb_Confession.jpg', 90, 10, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '「說謊的人要吞一千根針喔！」來吧！發揮你的想像力、創造力以及邪惡的心機，問出直達核心的問題吧！注意！如果說謊的話，仙人掌可是會處罰你的喔～嘿嘿嘿！桌上遊戲設計師倉木村說：「這是目前我所設計的遊戲中，最喜歡的作品，它僅僅只有10張可愛的仙人掌，卻帶給我與朋友意想不到的樂趣，到現在仍然記得玩這個遊戲時的情景，可說是：『永‧生‧難‧忘！』」。'),
(46, '政變風雲：城邦', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5ab8f57ec6b5aaa352110421_Coup_Box_3D.jpg', 390, 10, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '你是義大利一個城邦家族之首，這時候正直由一個軟弱和腐敗的朝廷管治，使整個城市充滿著勾心鬥角。你嘗試以操縱、虛張聲勢和賄賂權貴來控制這個城市。'),
(47, '土狼在笑你', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5ab8f583c6b5aab93d110425_COYOTE_Box_3D.jpg', 830, 10, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '在《土狼在笑你》中，玩家扮演印地安人，每名玩家頭上綁一條有一根「羽毛」的印花頭帶，遊戲的目標就是在不知道自己羽毛內容的情況下，猜出所有羽毛的總值！如果你猜中正確的數值，你就贏得遊戲勝利！但通常你會因吹牛而獲勝，但誰要是吹破牛皮了，就會成為土狼嘲笑的對象！'),
(48, '土狼在笑你 紙牌版', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/6057fdd453114a5b43cb85c0_COYOTE_CG_Box.jpg', 390, 10, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '玩家扮演印地安人各拿一根羽毛，在不知道自己羽毛內容的情況下，猜測所有羽毛數值總和！若猜中正確的數值便有機會獲勝，通常你因吹牛而獲勝，但要是吹破牛皮，就成了土狼嘲笑的對象！'),
(49, '跑跑蛙', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5ab8f592fc0a9241a2ad88fd_%E8%B7%91%E8%B7%91', 830, 10, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '跳到池塘中，找到最佳路徑，消滅對手的青蛙女王。文字能讓你的青蛙更活躍。雄青蛙？女王很快就來找你啦！產下寶寶能讓你們蛙丁興旺。不過要小心池塘裡的梭魚，牠們可是狠角色！'),
(50, '終極密碼', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5ab8f5acc6b5aa764911055f_DaVinci_Box_3D.jpg', 690, 10, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '每位玩家要在自己的數字牌被對手完全猜出前，搶先猜出對手所有的數字牌！但是面對空白的牌背，如何能猜到對手的數字牌呢？玩家雖然只知道自己擁有哪些數字，在遊戲過程中，藉由分析逐漸增加的資訊：其它玩家的猜測、及陸續攤開的牌，慢慢推敲出每張牌正確的數字！'),
(51, '達尼的次人格', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5fdacdbaf7c80178a391cccd_DANY_Box_3D.jpg', 690, 10, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '扮演達尼的主人格或其中一個次人格。 當達尼的人格們在與記憶捉迷藏時，所有的次人格必須彼此溝通、合作，找出正確答案，以便能繼續存在。達尼則必須在不?露自己身分的情況下，盡其所能，不讓次人格們得逞，讓雜的聲音永遠從他的腦海中消失。抽象、夢幻世界中的創造、推理、欺騙與溝通。 1. 行動人格秘密選擇一個詞語，用記憶牌勾勒出這個思想。2. 其他人格透過透過溝通試圖找出正確答案，但達尼會從中作梗。3. 公布答案。'),
(52, '記憶黑洞', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5ab8f62ba14f103664a5471d_DejaVu_Box_CH.jpg', 690, 10, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '「三角錐」剛才應該出現過了吧！？還是，剛才出現的是「工程背心」？玩家必須在某項物品出現第二次後儘快抓取它，但記憶中好像有個黑洞，明明剛才才看過，卻無法確定到底是不是它，每個物品都似曾相識，讓一切變得不真實！在本遊戲中，你將經歷這種奇妙時刻。切記，唯有不被自己的記憶捉弄，才能成為真正的贏家！'),
(53, '妙語偵探社', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5dd6ae4ff66c4466a6cd816a_DetectiveClub_Box.', 990, 10, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '妙語偵探社再次開放招收新會員，你也收到邀請函，但必須先證明自己是名真正的偵探！透過一張張插畫精美的線索牌，詮釋主持人設定的謎底，玩家扮演偵探，其中有1個局外人不知道謎底為何，他必須觀察其他玩家所出的牌，試著跟隨別人的出牌邏輯而不露出馬腳。偵探們分析所有的線索，傾聽各方的證詞，試著找出那位在瞎扯的局外人，只有細心且機靈的人才能獲得最後的勝利！歡迎加入「妙語偵探社」的行列！'),
(54, '骰子鎮', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5ab8f64cc6b5aa855a1105d2_DICETOWN_2016_Box.', 1320, 10, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '在骰子鎮裡，任何事情都可能成真！'),
(55, '骰盤', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5f8450501056e695dbc38ab7_DICE%20TRAY_Play1.', 150, 10, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '?用於擲骰、棄牌、配件暫存、收納生活用品'),
(56, '妙語說書人', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5ab8f683326fa90eb1e9f903_DIXIT_box_2014_3D.', 1100, 10, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '屏氣凝神！插圖即將掀開了！這些插圖都圍繞著一個主題：一段令人費解的句子。但是，這段句子實際上是源於這五張插圖之一，到底是哪一張呢？你要利用天生的才華以及直覺來找到它，同時也要躲開其他玩家所設下的陷阱。Dixit是一款令人感到驚奇、歡樂以及興奮的遊戲，適合讓你與你的家人以及朋友們一起遊戲。'),
(57, '妙語說書人 奧德賽', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5ab8f6b0987c861f5953c6c2_DIXIT_Odyssey_Box_', 1200, 10, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '妙語說書人：奧德賽是款挑戰你想像力與推理能力的說書人遊戲。遊戲所附的84張精美圖卡都有不同的故事，而且每個人每一次說出的故事都不一樣，讓每場遊戲都充滿全新驚奇。奧德賽是款獨立遊戲，不需要妙語說書人基本版即可進行遊戲。更棒的是，你可以最多12人同時進行遊戲，還可以進行團隊賽！'),
(58, '快閃地精', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5caf1b4871210e08422fc816_DoYouGnomeMe_Box_C', 690, 10, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '你見過這隻地精嗎？地精是一種愛惡作劇的小精靈，他們喜歡將別人的東西藏起來捉弄大家，想要取回你的失物，唯一方法就是抓住罪魁禍首。不幸的是，地精不但身手敏捷，而且擅長隱藏自己的蹤跡！設計巧妙的轉盤，讓你只能驚鴻一瞥地精的模樣，不過，這應該就能讓你描繪出這個搗蛋鬼。他的鬍子長什麼樣？穿什麼鞋？戴什麼帽子？?組合出最多正確部位的玩家才能得分！'),
(59, '嗒寶', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5ab8f6e3987c86099353c6e0_DOBBLE_BOX_3D_2015', 490, 10, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '太奇妙啦！『嗒寶』有5種玩法，包括55張紙牌，每張紙牌上繪有8種符號，任意兩張紙牌上都包含剛好一對相同的符號。你的任務就是找出這對相同的符號。你的眼神夠犀利嗎？你的反應敏捷嗎？來試試身手吧！一款要全速衝刺的歡樂派對遊戲！'),
(60, '嗒寶數與形', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5ab8f6e9987c867d2153c6e3_DOBBLE%20123_BOX_3', 490, 10, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '一款考驗手腦反應的歡樂派對遊戲，辨識數字與形狀，專?兒童設計！嗒寶數與形，包含30張紙牌，每張紙牌上繪有6種符號，共由30種不同的符號所組成，任意兩張紙牌上都包含剛好一種相同的符號。想要獲勝，你必須在其他玩家之前找到兩張卡牌上相同的數字或圖形。通過尋找這些圖案，幼兒能學會辨識幾何圖形和數字，並認知各種顏色。你能找出這對相同的符號嗎？來試試身手吧！'),
(61, '火線急救室', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5ab8f6f4326fa9359de9f942_DoctorPanic_cover.', 890, 10, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '你與你的同伴是地區享譽盛名的醫療小組，而小組的目標則是在時間內救治病患並且完成手術。手術中會出現各種難題，而你的小組是否能在12分鐘內將病患從鬼門關拉回來呢？'),
(62, '星球加法', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5ab8f7308d6035067de9254c_Dots_Box_3D.jpg', 290, 10, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '桌面上的星球卡中共有幾顆彩色的星球呢？儘快輕聲點數，並用手中的5張數字卡（1、2、4、8及16各一張）組合出正確的數字，最快答對的玩家將贏得高分哦！這是一款考驗你是否能眼明手快的數字運算遊戲。包含適合6歲以上玩家的變體規則哦！'),
(63, '都市黑幫', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/60534b26eb559e6e516ef505_Downtown_Box.jpg', 690, 10, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '玩家扮演黑幫老大，招聘小弟，並從包打聽口中獲得情報後，派遣小弟行竊，再將贓物透過銷贓人變現，若偷竊的是現金，必須進行「洗錢」。率先獲得「乾淨」10萬元的玩家獲勝。爾虞我詐、驚險刺激的黑幫老大育成班！'),
(64, '龍灣尋禮', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5d025bf509a6a84805443053_DragonMartket_Box.', 1160, 10, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '龍灣公主即將在週末大婚，為了這次典禮，你派了店小二去張羅要送給公主的禮物。對店小二來說，這是一場有趣的冒險：在舢舨間奔跑跳躍，在其他店小二的眼皮底下，收集到最好的稀世珍寶。在浮動且擁擠的龍灣中，玩家將店小二從一艘舢舨跳到另一艘上，移動或旋轉舢舨，來收集所須的禮物，率先完成目標的玩家獲勝。'),
(65, '屠龍矮人', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5ab8f73f8d60351713e92554_DRAKO_Box_3D.jpg', 1250, 10, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '這是一款雙人遊戲。一名玩家率領一隊屠龍矮人，而另一名玩家扮演讓當地居民聞風色變的紅色巨龍。戰鬥發生在巨岩環繞的狹谷，巨龍在谷中落入矮人們的陷阱，使牠的行動受到限制，但盡管如此，巨龍對矮人仍深具威脅。玩家以模型在地圖上進行遊戲，2名玩家各有一組牌庫，而兩組牌庫的內容不同，讓巨龍和矮人以不同的技巧戰鬥。若矮人在巨龍逃脫陷阱之前將牠殺死，則矮人們獲勝；若巨龍逃脫陷阱或是消滅所有的矮人，牠就戰勝對手從容飛離。'),
(66, '形色咚咚', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5ab8f745fc0a922332ad89fe_Drop%20it_Box.jpg', 1160, 10, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '玩家輪流將一片咚咚放入遊戲塔中，依其降落後停留的樓層來獲得分數，若與面板上的獎勵圓圈重疊，便能得到獎勵分數。請小心：切勿違反降落規則！你投入的咚咚不能碰到其他形狀或顏色相同的咚咚。'),
(67, '神奇果汁', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5ab8f7fcf9eb2f21e698948a_FabledFruit_Box_3D', 830, 10, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '從前從前有一座長滿神奇水果的森林，這些水果不但可以榨成果汁，還能混合成最美味的飲料。你將扮演住在森林中到處採集這些美味水果的動物，森林中友善的居民提供各種協助，包括贈送水果、和你交易或透過各式各樣的方式幫助你。你們既口渴又嘴饞，誰才能首先飽嚐神奇果汁的美味呢？這款百變遊戲會隨著遊戲進行而不斷變化，第一次遊玩時，遊戲在初始階段，也相對單純，但隨著你們更深入遊戲，遊戲機制與體驗都會更加擴展，遊戲中的每個進程都帶來些許變化。即使經歷20 場遊戲後，它依然像一款全新的遊戲，神奇又好玩！'),
(68, '童話迷蹤', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5cdcff5a8e958466bf250ee9_Fabulantica_BOX_3D', 990, 10, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '魔法學徒艾米爾唸壞了咒語，把童話王國裡的許多男女主角胡亂傳送到各地，他們被這怪事嚇壞了，躲在高塔中等待救援，同時擔心著其他下落不明的朋友。你能快速找到他們，並解除這道咒語嗎？'),
(69, '火車快飛', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5dbfb62b5102da30c44aea06_FairlyFast_Box_3D.', 590, 10, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '所有乘客請上車！在火車出發前，你必須盡可能在自己的火車頭後方連結最多的車廂，這可不如你想像的簡單哦！有些種類的車廂必須具備一定的數量，才能掛到列車上。乘客和行動圖板可能會讓你的列車變長。遊戲結束時，擁有最長火車的玩家獲勝。一款色彩豐富的火車收集遊戲。'),
(70, '兇煞迴廊', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5e7964e4cbe4242ce0aa871b_FearSomeFloor_BOX_', 1160, 10, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '兇煞迴廊是個曲折的競速遊戲，你不止要盡快到達終點，還得要避開路上的怪物－科學怪人。利用巧妙的走位，玩家可以試著讓怪物去追逐其他的對手。在基礎遊戲中，玩家可以躲在石頭後面或是滑過血池，有經驗的玩家可以再加入透明的水晶、旋轉石和傳送陣。你要小心規劃、迅速移動並且躲開怪物以贏得遊戲！'),
(71, '警報！警報！消防員出動！', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5be548ec9c7f7e22f9dea89d_Firefire_Box.jpg', 690, 10, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '警報！警報！費爾巴哈發生了火警，標叔叔的香腸快全都被火燒了。這刻急需消防隊出動救火。糟糕了！有消防員睡著了，在出勤前還未穿好制服，消防車必須撇下懶惰的隊員出發，不然香腸店會全被燒焦了。成功撲滅最多火災的玩家將勝出遊戲，成為最棒的消防員。超級刺激的反應遊戲！'),
(72, '黃瓜五兄弟', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5efdee8eb7b354574300225f_FiveCucumbers_Box_', 290, 10, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '北歐傳統Agurk吃墩遊戲的現代版? 一款勾心鬥角的吃墩遊戲，目標是不要吃到最後一墩！'),
(73, '北洋船隊', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5ab8f8168d6035444de925a0_Fleet_Box_3D.jpg', 690, 10, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '在加拿大努納武特的東北方，這裡原本是北冰洋上一個人們無法觸及的海灣，但自從人們發現一條隱密的峽灣通道後，一切都改觀了。洋流的滋養加上長年未有人類踏足，讓這裡漁產豐沛，吸引眾路漁船。快！購買執照，組織船隊，出海捕魚！只有最善於管理資源，得分最高的夢幻船隊，才能稱霸北洋漁場！'),
(74, '哞哞穿新衣', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5dc3bebdcf69d19dc9c8ac7a_Flick%20Fleck_Box_', 890, 10, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '我們有大麻煩了！乳牛們醒來發現自己的花紋消失了一大半，但沒有人知道為什麼。難道是膽小的牛仔在夜裡偷走了？或是昨天的雨水沖走牠們的花紋？無論是什麼原因，盡快幫牠們穿上新的衣裳，讓牠們可以自在徜徉在草原上！'),
(75, '打蒼蠅', 'https://uploads-ssl.webflow.com/575714cc825e8dbc6c83b98a/5ab8f8218d603587fbe925a6_Fliegen%20Klatsche', 250, 10, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '惱人的蒼蠅總是嗡嗡嗡地繞著我們飛來又飛去，一種顏色，兩種顏色，三種顏色 ?? 竟然來了五種不同顏色的蒼蠅，讓人眼花撩亂，快打！打到蒼蠅的人就能得分喔！可惜不是每一隻蒼蠅都能打，只能打數量最多的那種顏色。?在這眼花撩亂的情況下，你打得到正確的蒼蠅嗎？');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`itemId`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `items`
--
ALTER TABLE `items`
  MODIFY `itemId` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水號', AUTO_INCREMENT=76;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
