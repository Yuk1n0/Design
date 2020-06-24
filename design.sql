-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: localhost    Database: work
-- ------------------------------------------------------
-- Server version	5.7.30-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_article`
--

DROP TABLE IF EXISTS `tb_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_article` (
  `AId` int(11) NOT NULL AUTO_INCREMENT,
  `AName` varchar(50) DEFAULT NULL,
  `UAccount` varchar(20) NOT NULL,
  `AContent` varchar(10000) DEFAULT NULL,
  `ATag` varchar(20) DEFAULT NULL,
  `AGlanceNum` int(11) DEFAULT NULL,
  `ATime` date DEFAULT NULL,
  `APass` int(11) NOT NULL,
  `AReviewer` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`AId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_article`
--

LOCK TABLES `tb_article` WRITE;
/*!40000 ALTER TABLE `tb_article` DISABLE KEYS */;
INSERT INTO `tb_article` VALUES (0,'习近平同韩国总统文在寅通电话','1@1.com','新华社北京2月20日电 国家主席习近平20日应约同韩国总统文在寅通电话。习近平指出，在中国人民奋力抗击新冠肺炎疫情的特殊时刻，总统先生专门来电话表达慰问支持，同我就深化双边关系交换意见，体现了中韩作为近邻守望相助、同舟共济的友好情谊。  习近平强调，新冠肺炎疫情发生以来，中国政府高度重视，举全国之力，团结一心，采取了最全面、最严格、最彻底的防控举措。经过艰苦努力，疫情形势出现积极变化。疫情不会动摇中国长期稳定发展的坚实基础。我们将努力把疫情影响降到最低，努力实现既定的经济社会发展目标任务。中方采取强有力防控措施，不仅是为了维护中国人民生命安全和身体健康，也是为世界公共卫生事业作贡献。疫情发生以来，韩国政府和各界纷纷向中方表达关心慰问并提供大量帮助支持，我们对此深表感谢。中方将继续本着公开、透明态度，同包括韩方在内的各国加强沟通合作，共同应对疫情，促进世界人民健康福祉。  文在寅表示，韩国政府和人民对中国人民遭遇新冠肺炎疫情表示诚挚慰问。韩方积极评价中方为应对疫情所作巨大努力，相信在习近平主席坚强领导下，中国人民团结一心，一定能够早日取得疫情防控阻击战的胜利。韩中是近邻，中国的困难就是韩国的困难。韩方将坚定同中方站在一起，愿继续为中方抗击疫情提供援助，同中方开展防疫合作，并以此为契机加强双方卫生健康领域合作。文在寅表示，今年是韩中关系发展的重要一年，韩方愿同中方一道努力，深化两国各领域合作，推动两国关系取得新的发展。','politics',46,'2020-05-11',0,'Justin'),(1,'美共和党人士推议案授权白宫制裁中国 外交部：罔顾事实，极不道德','1@1.com','据外媒报道，美国国会共和党参议员林赛·格雷厄姆（Lindsey Graham）周二和8位共和党人共同推出《2019年新冠病毒问责法》（The COVID-19 Accountability Act）。内容称，若中国不配合合作，不全面说明导致新冠病毒爆发的过程，将授权总统制裁中国。对此，中国外交部发言人赵立坚在13日的例行记者会上回应称，美国国会个别议员提出一些议案，完全罔顾事实，妄图通过搞有罪推定式的调查向中方推卸自身抗疫不力的责任，这极不道德，我们对此坚决反对。','politics',17,'2020-05-11',0,'Kate'),(2,'王毅在上合组织成员国外长视频会上发出三条呼吁','1@1.com','国务委员兼外交部长王毅13日在北京出席上海合作组织成员国外长视频会议。 王毅说，当前疫情仍在全球多国蔓延。每一天都有数万人受到病毒感染，每一天都有数千人失去宝贵生命。在沉重的事实和数字面前，没有任何议程比挽救人的生命更重要，没有任何任务比各国团结合作更迫切。 ','politics',5,'2020-05-11',0,NULL),(3,'总书记来到我们家','1@1.com','67岁的白高山一家，最近几年喜事不断。易地扶贫搬迁政策让他们住上了新房子，白高山30多岁的儿子白利军娶上了媳妇，今年还生了个大胖小子。最让一家人开心的是，5月11日，习近平总书记到山西大同市云州区西坪镇坊城新村考察时，来到家里看望他们，坐在炕沿上跟他们一家人唠起了家常。','politics',6,'2020-05-11',0,NULL),(4,'新华社九篇时评犀利揭开美式“甩锅”真面目','1@1.com','针对美国一些政客围绕新冠肺炎疫情不断污蔑栽赃中国，新华社日前密集播发九篇新华时评，犀利揭开美式“甩锅”的真面目，把事实真相告诉世人。美方疯狂“甩锅”究竟为哪般？一起看','politics',6,'2020-05-11',0,NULL),(5,'消息人士：中方准备对美方滥诉活动进行反制','1@1.com','记者13日从相关消息人士处获悉，中方对美国内就疫情针对中国的滥诉极为不满，中国政府已在着手准备对一些炮制反华议案的国会议员、密苏里州以及美方相关个人和实体采取必要惩戒措施。有美国问题专家对《环球时报》记者表示，中国不会只是象征性地反制，“必须要打痛他。”','politics',2,'2020-05-11',0,NULL),(6,'190多亿元消费券促消费回暖','1@1.com','疫情发生以来，全国多地统筹地方政府与社会资金，累计发放消费券达190多亿元。消费券对消费产生了明显的提振作用。专家认为，发放消费券主要是为了应对消费增长的下行压力。发放消费券效果虽明显，但不宜长期发放。  “据初步统计，疫情发生以来，有28个省份、170多个地市统筹地方政府和社会资金，累计发放消费券达190多亿元。”商务部副部长王炳南在日前召开的国务院联防联控机制新闻发布会上指出，这些促消费措施取得明显效果，实现了聚焦人气、增信心、振消费的目标。','economy',3,'2020-05-11',0,NULL),(7,'宋朝钱币，庆元通宝版本众多，是宁宗时期发行的首枚钱币','1@1.com','宋朝钱币，庆元通宝版本众多，是宁宗时期发行的首枚钱币，今天小编为大家介绍一下古代南宋皇帝宁宗赵扩登基后铸造的第一枚年号钱币庆元通宝。了解历史的朋友都知道，赵扩是宋朝的第十三位皇帝，是宋光宗赵惇与慈懿皇后李凤娘的次子。对于这位皇帝，历史上其评价褒贬不一。因此他也被贴上了胸无点墨，好高骛远，听信馋言的标签。','civilization',5,'2020-05-12',0,NULL),(8,'美国F-35战机升级被一拖再拖 成本猛涨15亿美元','1@1.com','报道称，根据美国政府问责局在5月12日发布的一份报告，原计划在2024年交付的F-35战斗机Block 4型升级套件，要等到2026年才能交付。美国政府问责局称，这一问题导致这款战斗机的升级成本增至121亿美元。','military',2,'2020-05-12',0,NULL),(9,'顺丰染指外卖背后：通达系挤压 多元化战略仍未见成效','1@1.com','近日顺丰同城上线的外卖产品“丰食”，主打企业员工的团餐服务。据丰食方面表示，这项服务是为企业提供专属的团餐优惠，同时还支持企业员工餐补对接。团餐之外，个人用户也可以单独下单。从官方页面的介绍来看，目前已经有包括德克士、必胜客、吉野家等多家知名餐饮品牌入驻了“丰食”。','livelihood',2,'2020-05-12',0,NULL),(10,'人民战争思想的新实践新发展','2@2.com','新冠肺炎疫情是一场没有硝烟的特殊战争。习近平总书记亲自部署、亲自指挥，对这场战争的性质、特点、战法作出科学研判和总体部署，提出“坚决打赢疫情防控的人民战争、总体战、阻击战”，为彻底战胜疫情提供了根本遵循。这场全体人民共同参与的特殊战争，是人民战争思想在新时代的伟大实践，同时赋予人民战争思想新的时代内涵。人民战争思想的新实践新发展，对于我们战胜前进道路上的重大风险挑战具有重要意义。','politics',6,'2020-05-13',0,NULL);
/*!40000 ALTER TABLE `tb_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_comment`
--

DROP TABLE IF EXISTS `tb_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_comment` (
  `CId` int(11) NOT NULL AUTO_INCREMENT,
  `AId` int(11) NOT NULL,
  `AName` varchar(50) DEFAULT NULL,
  `CTime` date DEFAULT NULL,
  `CContent` varchar(10000) DEFAULT NULL,
  `UAccount` varchar(20) NOT NULL,
  PRIMARY KEY (`CId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_comment`
--

LOCK TABLES `tb_comment` WRITE;
/*!40000 ALTER TABLE `tb_comment` DISABLE KEYS */;
INSERT INTO `tb_comment` VALUES (13,0,'习近平同韩国总统文在寅通电话','2020-05-14','中方始终秉持人类命运共同体理念，积极开展抗疫国际合作，坚定支持世卫组织工作。中方愿同包括韩国在内的各成员国加强沟通协调，将继续本着公开、透明态度，沟通交流，共同应对疫情，促进两国人民健康福祉。中韩两国','9@9.com'),(14,10,'人民战争思想的新实践新发展','2020-06-11','我觉得写的还不错','1@1.com');
/*!40000 ALTER TABLE `tb_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_newsroom`
--

DROP TABLE IF EXISTS `tb_newsroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_newsroom` (
  `NId` int(11) NOT NULL AUTO_INCREMENT,
  `NName` varchar(20) DEFAULT NULL,
  `NIntroduction` varchar(100) DEFAULT NULL,
  `NNotice` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`NId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_newsroom`
--

LOCK TABLES `tb_newsroom` WRITE;
/*!40000 ALTER TABLE `tb_newsroom` DISABLE KEYS */;
INSERT INTO `tb_newsroom` VALUES (1,'第一编辑部','第一编辑部/新人编辑部','欢迎大家加入，大家可以按照网站提示尝试发表稿件'),(2,'第二编辑部','第二编辑部/进阶编辑部','恭喜大家水平的提升'),(3,'第三编辑部','第三编辑部/高级编辑部','请尽可能多的发送稿件');
/*!40000 ALTER TABLE `tb_newsroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_talk`
--

DROP TABLE IF EXISTS `tb_talk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_talk` (
  `TId` int(11) NOT NULL AUTO_INCREMENT,
  `UAccount` varchar(20) NOT NULL,
  `TTime` date DEFAULT NULL,
  `TContent` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`TId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_talk`
--

LOCK TABLES `tb_talk` WRITE;
/*!40000 ALTER TABLE `tb_talk` DISABLE KEYS */;
INSERT INTO `tb_talk` VALUES (1,'1@1.com','2020-05-11','大家好'),(2,'2@2.com','2020-05-11','大家好'),(3,'3@3.com','2020-05-11','新人刚刚来发个言'),(4,'4@4.com','2020-05-11','我也是'),(5,'5@5.com','2020-05-11','不用那么客气'),(6,'6@6.com','2020-05-11','大家一起加油吧'),(7,'7@7.com','2020-05-11','嗯嗯'),(8,'8@8.com','2020-05-11','欢迎大家来到第一编辑部'),(9,'1@1.com','2020-05-11','请问一下，发表的稿件是要审核的吧'),(10,'9@9.com','2020-05-12','对的，我们都要审核通过才可以');
/*!40000 ALTER TABLE `tb_talk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user` (
  `UId` int(11) NOT NULL AUTO_INCREMENT,
  `UAccount` varchar(20) DEFAULT NULL,
  `UName` varchar(20) DEFAULT NULL,
  `UPassword` varchar(32) DEFAULT NULL,
  `UIntroduction` varchar(160) DEFAULT NULL,
  `UPower` int(11) DEFAULT NULL,
  `NId` int(11) NOT NULL,
  PRIMARY KEY (`UId`),
  KEY `NId` (`NId`),
  CONSTRAINT `tb_user_ibfk_1` FOREIGN KEY (`NId`) REFERENCES `tb_newsroom` (`NId`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user`
--

LOCK TABLES `tb_user` WRITE;
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
INSERT INTO `tb_user` VALUES (0,'1@1.com','Alice','MTIzNDU2','作者Alice',1,1),(1,'0@0.com','Bob','MTIzNDU2','作者Bob',1,1),(2,'2@2.com','Charlie','MTIzNDU2','作者Charlie',1,1),(3,'3@3.com','Dave','MTIzNDU2','作者Dave',1,1),(4,'4@4.com','Eve','MTIzNDU2','作者Eve',1,1),(5,'5@5.com','Frank','MTIzNDU2','作者Frank',1,1),(6,'6@6.com','George','MTIzNDU2','作者George',1,1),(7,'7@7.com','Havel','MTIzNDU2','作者Havel',1,1),(8,'8@8.com','Ivan','MTIzNDU2','编辑Ivan',2,1),(9,'9@9.com','Justin','MTIzNDU2','专家Justin',3,1),(10,'10@10.com','Kate','MTIzNDU2','专家Kate',3,1),(11,'11@11.com','Lucy','MTIzNDU2','作者Lucy',1,2),(12,'12@12.com','Mallory','MTIzNDU2','作者Mallory',1,2),(13,'13@13.com','Niko','MTIzNDU2','作者Niko',1,2),(14,'14@14.com','Oscar','MTIzNDU2','作者Oscar',1,2),(15,'15@15.com','Pat','MTIzNDU2','作者Pat',1,2),(16,'16@16.com','Quim','MTIzNDU2','编辑Quim',2,2),(17,'17@17.com','Rose','MTIzNDU2','专家Rose',3,2),(18,'18@18.com','Steve','MTIzNDU2','专家Steve',3,2),(19,'19@19.com','Trent','MTIzNDU2','作者Trent',1,3),(20,'20@20.com','Upton','MTIzNDU2','作者Upton',1,3),(21,'21@21.com','Victor','MTIzNDU2','作者Victor',1,3),(22,'22@22.com','Walter','MTIzNDU2','作者Walter',1,3),(23,'23@23.com','Xion','MTIzNDU2','编辑Xion',2,3),(24,'24@24.com','York','MTIzNDU2','专家York',3,3),(25,'25@25.com','Zoe','MTIzNDU2','专家Zoe',3,3);
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-24 18:39:27
