/*
SQLyog Community v12.4.0 (64 bit)
MySQL - 5.7.20 : Database - ssmcrud
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmcrud` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmcrud`;

/*Table structure for table `tb_dept` */

DROP TABLE IF EXISTS `tb_dept`;

CREATE TABLE `tb_dept` (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(255) NOT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `tb_dept` */

insert  into `tb_dept`(`dept_id`,`dept_name`) values 
(1,'开发部'),
(2,'测试部'),
(3,'产品部'),
(4,'市场部'),
(5,'运营部'),
(6,'运维部'),
(7,'客户服务部');

/*Table structure for table `tb_emp` */

DROP TABLE IF EXISTS `tb_emp`;

CREATE TABLE `tb_emp` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(255) NOT NULL,
  `gender` char(1) NOT NULL,
  `email` varchar(255) NOT NULL,
  `depart_id` int(11) NOT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `fk_emp_dept` (`depart_id`),
  CONSTRAINT `fk_emp_dept` FOREIGN KEY (`depart_id`) REFERENCES `tb_dept` (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=450 DEFAULT CHARSET=utf8;

/*Data for the table `tb_emp` */

insert  into `tb_emp`(`emp_id`,`emp_name`,`gender`,`email`,`depart_id`) values 
(1,'墨宁','M','451qwerqer@qq.com',1),
(2,'霍昌生','M','asdf@qq.com',6),
(3,'哈哈','M','asdf@qq.com',7),
(5,'闵策伟','M','luqmwq9jho3@sina.com',1),
(6,'单河','M','qd66b4spa@sina.com',4),
(7,'公民','M','6nv9a878l4@163.com',7),
(8,'栾聪颖','F','3ax9m7h57g8@163.net',7),
(9,'籍倩可','F','wa3eizl3b8mw@msn.com',1),
(11,'朱海策','M','ix7fxfa72h@live.com',6),
(12,'蒲启彬','M','cm9g4a201n@gmail.com',5),
(13,'秋中','M','5w32s5l2gepu@gmail.com',2),
(14,'羿茂彪','M','vrkqqw2o@sina.com',1),
(15,'冶国','M','x8fi0iv67ckk@yahoo.com',7),
(16,'郭松豪','M','wr7grt@live.com',5),
(17,'闾心','M','f85rurro@126.com',1),
(18,'余绍河','M','l61czcv06@163.com',4),
(19,'武世','M','q551o12@yahoo.com',3),
(20,'仇琛维','M','zjxqq3x9j3t5@live.com',6),
(21,'嵇利','M','tf8tud0nna@sina.com',3),
(22,'车园姬','M','bu7817wj4xx@sohu.com',3),
(23,'壤兴','M','1vbxwh2@gmail.com',6),
(24,'衡琳','F','7tdjfqmsky@yahoo.com',1),
(25,'山娟','F','tzc2fwzt@sina.com',1),
(26,'党义家','M','qzh7q72gah@sohu.com',3),
(27,'郦芬','F','xm4gir1ad5@126.com',3),
(28,'谈婕巧','F','q2c560n@sina.com',3),
(29,'史琬','F','um3tdnxtk2@yahoo.com',2),
(30,'束美','F','dczfwyjqra40@yahoo.com',5),
(31,'尚才','M','yoe8yndlv@sohu.com',2),
(32,'孙凡','F','faih439@163.com',5),
(33,'程淑嘉','F','jjidqbs14r@sohu.com',5),
(34,'籍言行','M','bp7krq@sohu.com',5),
(35,'赵雄峰','M','r3ng8b6@qq.com',3),
(36,'南萍纯','F','b1l0hc@gmail.com',1),
(37,'商爱影','F','crkbjv@163.net',3),
(38,'水琼','F','b8haxuvf@live.com',7),
(39,'赖巧菊','F','dxuvk20sns@sohu.com',5),
(40,'尚刚涛','M','twotr41erep@msn.com',7),
(41,'涂美馨','F','5aue3og786@gmail.com',1),
(42,'笪亚','F','fkhedwep@126.com',3),
(43,'百诚厚','M','l6z39m@126.com',4),
(44,'谭泽','M','s1m57akg29@sina.com',3),
(45,'暨兰琦','F','nyiffc9@qq.com',7),
(46,'曹策','M','sml6retgpqg@sina.com',6),
(47,'迟政广','M','uuo5vtxqtxm@163.com',2),
(48,'涂瑗欣','F','iregmzpy0iur@msn.com',3),
(49,'辕春','F','bc5su24@live.com',5),
(50,'沃航亮','M','zq7m7o8v78j@qq.com',1),
(51,'雷璐','F','x8pkp9jznwiw@sohu.com',2),
(52,'蓟泽','M','sfsswr@163.com',5),
(53,'茅武会','M','hl8yn2ckojn@gmail.com',4),
(54,'齐乐达','M','3e4l2mnft98g@sina.com',2),
(55,'简茂','M','ye1y9dpnx5d@gmail.com',3),
(56,'庚清','M','shtjjwepsnb@163.net',2),
(57,'崔贞娅','F','6hdk36oy2zq@qq.com',4),
(58,'邴会','M','wruanao@live.com',7),
(59,'张壮坚','M','vmxm7xkj@gmail.com',2),
(60,'邴亮','M','3vw2ha45@163.com',6),
(61,'胥嘉昭','F','koqfoh2@163.net',2),
(62,'施宁','F','yihwvdu@msn.com',4),
(63,'钮洁澜','F','qrrl4ai9i8@gmail.com',3),
(64,'沈飘','F','dotzbg@qq.com',6),
(65,'诸思','F','7cjemdexhh1@yahoo.com',2),
(66,'梅枫','F','qf9g0pssii7@yahoo.com',2),
(67,'庚楠','M','84oqw2qwo@163.net',6),
(68,'平博','M','7kkxhidai0@yahoo.com',6),
(69,'欧鹏浩','M','36dak5@msn.com',3),
(70,'双丹','F','5jem9rdxo8w@126.com',2),
(71,'丘颖怡','F','zkblyfi1b@sina.com',1),
(72,'逄固','M','g6adgqxg9@sohu.com',3),
(73,'潘翠璧','F','pl4l5gz@msn.com',4),
(74,'於义','M','zpybda7jgt0@126.com',4),
(75,'席邦','M','swwun8@live.com',3),
(76,'步琳','M','acp3gerw@msn.com',3),
(77,'陆春','F','uro16k@yahoo.com',2),
(78,'姓雪','F','ewrgzw93@sohu.com',5),
(79,'颛宏兴','M','b1ijtbjq@gmail.com',5),
(80,'戴梅','F','2fek3hpbmjm@live.com',5),
(81,'徒蕊','F','pxr68umal@sina.com',3),
(82,'红福昌','M','c0kckarg@163.net',1),
(83,'焦壮','M','5hqa688th88@163.com',7),
(84,'柯亚媛','F','qa18ndslvuy@163.com',4),
(85,'宰胜','M','5dcy38lf@msn.com',7),
(86,'俞瑶','F','qm8c0gi@163.net',7),
(87,'巫之亨','M','m0vhs6@126.com',5),
(88,'乜玉','F','r4erp6cl@126.com',4),
(89,'焦素','F','0ppe1z9@sohu.com',3),
(90,'谯朗','M','zutwe6@yahoo.com',1),
(91,'罗叶','F','r4rdq2gfn@msn.com',6),
(92,'哈友','M','8hcqpqu@163.com',4),
(93,'公倩芳','F','82weriikle@live.com',6),
(94,'蔚朋刚','M','rtrhaewa9el@msn.com',2),
(95,'魏江','M','mh1ktj@163.net',2),
(96,'尚莎毓','F','p225qqv1x1@gmail.com',5),
(97,'须新','M','m4ldl2o2p90@yahoo.com',4),
(98,'羊仪凤','F','q0ckbykbg8i@163.net',2),
(99,'苗志广','M','vzj6w7e3@yahoo.com',6),
(100,'贲玉彩','F','5qirds7@126.com',3),
(101,'侯兰','F','ihpd9fsjq@msn.com',3),
(102,'翁姬','F','breq1rqaxjl@163.net',6),
(103,'安贵哲','M','oh1rzed@live.com',2),
(104,'包梁','M','csr0enzh@sohu.com',1),
(105,'吴亨中','M','q8ahbxp3627@sohu.com',4),
(106,'胡黛','F','kgmrgzfp01@163.net',1),
(107,'易时腾','M','atitpti3zs9@msn.com',2),
(108,'伏林会','M','h9os3l0@live.com',2),
(109,'西滢','F','sczn657arcst@163.net',5),
(110,'禄云','F','64usbn@qq.com',5),
(111,'拓辰','M','77q9yrzef@163.net',4),
(112,'葛美','F','t96fef01y03v@live.com',4),
(113,'粱祥','M','i7mi6z25k@sina.com',4),
(114,'雷贞璧','F','4vfl6bjn9iz@live.com',1),
(115,'湛莉琳','F','hohl2w@126.com',4),
(116,'阴岚荷','F','x5m6jo9czlt@sohu.com',6),
(117,'籍婕梦','F','8dt2r3@163.net',7),
(118,'夹雁希','F','2wu1inks@gmail.com',1),
(119,'赖丽红','F','k40rdbnyx@gmail.com',7),
(120,'蒋功','M','cnrt84iz@msn.com',6),
(121,'政裕国','M','v8ux1b8brr50@gmail.com',3),
(122,'蔺昭','F','z62il618gij6@yahoo.com',6),
(123,'公香','F','bymka50hodb@yahoo.com',1),
(124,'熊芸慧','F','tczjnd2atz6k@qq.com',7),
(125,'国薇怡','F','hwz17fc6@163.com',1),
(126,'晁行','M','6m4b82n67yd@163.com',6),
(127,'樊思嘉','F','i5fvwl@yahoo.com',7),
(128,'公君','F','l6whi3d4xfyk@sina.com',3),
(129,'糜绍广','M','cho0sz@126.com',1),
(130,'壤娜梅','F','l8kz6qp@qq.com',3),
(131,'韶民','M','wyor4t4ra@qq.com',7),
(132,'黄安壮','M','qq7y51il0h@126.com',2),
(133,'毕婕怡','F','wl628euy@qq.com',5),
(134,'瞿娅','F','otlw81sab@sina.com',2),
(135,'鲁琛','M','8q0dx8j7s6fu@qq.com',7),
(136,'滕莺勤','F','yki3auxz@live.com',1),
(137,'和云','F','5hqosyunlp2@yahoo.com',5),
(138,'贝时','M','9jtw00ez24l8@live.com',4),
(139,'父雪娴','F','s3b8y88a4o@msn.com',6),
(140,'侯博','M','p7f15392hjz@sohu.com',2),
(141,'艾彪','M','f4awy28bum@sina.com',6),
(142,'辛琬','F','sfhuieyf53@live.com',7),
(143,'潘菲','F','v0ysu38n40@126.com',7),
(144,'松峰','M','19c91q@yahoo.com',7),
(145,'段海宁','M','bho88lnct@126.com',3),
(146,'屠晶韵','F','vxnierz5nm@sina.com',7),
(147,'言绍','M','s0rm62tn@126.com',4),
(148,'后羽菁','F','52yc2d@live.com',1),
(149,'解姣','F','ytbb122i@sohu.com',3),
(150,'充影','F','apz8g7hc@yahoo.com',3),
(151,'禄爱','F','dvf8i61blto8@live.com',7),
(152,'杨广','M','a13mq68y@yahoo.com',5),
(153,'柯晶艺','F','ratomu8cv@live.com',5),
(154,'辛锦露','F','fgjgsdlasqg3@live.com',7),
(155,'冷锦彩','F','bu77pdh@163.com',5),
(156,'葛朋雄','M','un3zy37lh@gmail.com',6),
(157,'扶丽','F','zy4dkdw2@qq.com',1),
(158,'干浩','M','kc4llprwnm@qq.com',5),
(159,'羿彪','M','yg7r6dd4btk@live.com',2),
(160,'暴行','M','uk1ups@sohu.com',5),
(161,'申玉','F','jrzwd07cxh@163.com',3),
(162,'文晶蓓','F','ro3dwg0bi@sohu.com',4),
(163,'官霄','F','6fk3mw@live.com',3),
(164,'爱鸣俊','M','xvszj94lslr@163.com',1),
(165,'谷惠','F','h9l9dzmm5sk@gmail.com',1),
(166,'宋柔','F','zf33km@msn.com',2),
(167,'晋欣霭','F','x2yyqj@163.net',7),
(168,'拓腾','M','43v8c7mexv73@msn.com',7),
(169,'訾月晓','F','u85q00wx@163.net',6),
(170,'阳文','M','09l0up3@live.com',5),
(171,'羿馨春','F','tr5brpgprh@sina.com',2),
(172,'秦琰','F','azlu8vc14no@gmail.com',6),
(173,'庞信士','M','kcfl72@163.com',7),
(174,'梁凡霭','F','kschbl16ipv@yahoo.com',1),
(175,'文莉','F','bg0kr50on8de@gmail.com',1),
(176,'融亨','M','u6cmr1paf05@yahoo.com',5),
(177,'有馥霄','F','tc26me38qfj@sohu.com',4),
(178,'马功林','M','s7tv6yf@yahoo.com',6),
(179,'卫良辉','M','9g0q8zy5ra@163.net',4),
(180,'丁天','M','6fc1fd6@msn.com',3),
(181,'幸天','M','ajwrg15sti3@sohu.com',5),
(182,'时德','M','adwyjn4os@gmail.com',2),
(183,'居菁','F','rhp67cu4fzux@qq.com',3),
(184,'翟莺','F','gjd50j65msh@qq.com',1),
(185,'安树','M','j8wxc7onts8@163.net',4),
(186,'竺伊','F','7aw707i1tsnj@163.net',2),
(187,'傅莎','F','8g531j6dv@163.net',4),
(188,'水香','F','pm64pafr4@163.com',6),
(189,'咸晶娅','F','vvhxyl2f2b9f@qq.com',4),
(190,'龙涛','M','6r2ay6q9yzl@yahoo.com',3),
(191,'楚芬昭','F','5bnt25@126.com',4),
(192,'毕聪澜','F','o7vrrph2@sohu.com',4),
(193,'严竹欣','F','d1r114ul09b@126.com',5),
(194,'舌贵','M','czhqo00j3ey@163.com',2),
(195,'滑坚有','M','z8wqqtq@sina.com',4),
(196,'居翰','M','vtuvnyfbatf3@163.com',3),
(197,'邓素','F','4sskst@live.com',4),
(198,'龙珍欣','F','k5svbp4q@gmail.com',6),
(199,'盛飞风','M','rp2jtx3skz@yahoo.com',2),
(200,'饶弘','M','20dbrbbmgax6@yahoo.com',3),
(201,'范仁','M','x1ufd2r@163.com',4),
(202,'祝欣蓓','F','m045fe02m@163.com',4),
(203,'夏贵亮','M','384rku@yahoo.com',4),
(204,'车贞卿','F','r94qkmevlj4@163.net',3),
(205,'凌鸣','M','9kiljcz@msn.com',4),
(206,'商思彬','M','6hxky3@sohu.com',4),
(207,'亢岚瑗','F','9ac9cl@163.net',1),
(208,'宇红','F','icn5x29@gmail.com',1),
(209,'年元','M','k23tqc9poe@qq.com',6),
(210,'蔚滢黛','F','zxmiudomz02z@qq.com',6),
(211,'杜良伦','M','vqzj4n@qq.com',3),
(212,'和震炎','M','cartw4ht7u1i@sina.com',4),
(213,'关时盛','M','jw4w8f@qq.com',2),
(214,'杜瑞','F','ce57dvleub@gmail.com',7),
(215,'余栋世','M','941szod8k@163.com',7),
(216,'商义星','M','2371r5xjo3@sina.com',5),
(217,'迟园','F','3m6zrn101@sohu.com',2),
(218,'蔚姬','F','sdnk39@live.com',7),
(219,'阳聪瑾','F','yvfxy7pkmgv@gmail.com',2),
(220,'孔斌','M','1ybyg29pxq@163.net',5),
(221,'海裕栋','M','xwfv48pzjr15@sina.com',3),
(222,'殴林之','M','oirrz3z4@126.com',5),
(223,'季子清','M','89tkmy6rsm@qq.com',1),
(224,'子弘顺','M','kkwf3qiu3lx@gmail.com',6),
(225,'桓秀瑾','F','0uedhlq8pp4@yahoo.com',6),
(226,'钟世','M','lkjr2livic0@163.net',7),
(227,'仇震','M','gtlw0f89d@163.com',2),
(228,'富言坚','M','u2tzsjf6hp@yahoo.com',6),
(229,'阙蓓','F','bma6cu@sohu.com',3),
(230,'毛安','M','y0wbircyqy3@126.com',5),
(231,'蓟祥坚','M','g3bf5dvrvdxg@gmail.com',1),
(232,'晁凤贞','F','07i72ls1mk@126.com',3),
(233,'东仪','F','zo5obl2h6n@163.com',7),
(234,'咸和永','M','e3pnefe@msn.com',7),
(235,'厉宏','M','4jo8tx7amx@sina.com',1),
(236,'翟钧','M','z240dxwy@sohu.com',1),
(237,'利艺','F','gyq729@msn.com',6),
(238,'廉淑雁','F','hdd0mue5vw6e@163.com',1),
(239,'茅琼','F','bwpixza@live.com',4),
(240,'严澜','F','09qtgj@163.com',7),
(241,'皮全','M','awdlrvcpt0a0@sina.com',3),
(242,'赵俊','M','81vuuongtpg8@163.com',2),
(243,'瞿薇婉','F','e5flx2gn3@163.net',6),
(244,'姓璐','F','pdskje@163.net',3),
(245,'甄娣','F','vi8dfgc28k@126.com',4),
(246,'门朗','M','uusadnu8qt@msn.com',4),
(247,'仲强飞','M','yrmvdec9pu@yahoo.com',7),
(248,'郑钧','M','i1gcfdpt@live.com',1),
(249,'贡思生','M','nxqtw6m9rn@yahoo.com',4),
(250,'孙学谦','M','ku9wt5qd@126.com',6),
(251,'巢武','M','wgl201xgiy@qq.com',2),
(252,'壤贞','F','eymoo4mu5@yahoo.com',5),
(253,'迟国言','M','9s5vjv8vei@msn.com',4),
(254,'申民士','M','vjeqlfd@163.com',6),
(255,'戎娥丽','F','d9u48aiqp@sina.com',2),
(256,'罗功顺','M','umht7xhzd@163.com',7),
(257,'巫富','M','z4sy27@live.com',1),
(258,'咸平','M','4apqqwmrzo8m@sohu.com',1),
(259,'阳毅才','M','a632j8h9@sina.com',4),
(260,'蔡澜婉','F','aqxiyv9@163.com',7),
(261,'却和厚','M','qhq3n6n@sohu.com',2),
(262,'阎莎颖','F','knrvl6pznmi@163.com',3),
(263,'庚艳','F','14qjnqmp1l7@yahoo.com',3),
(264,'俟盛旭','M','764ql2bpiv@yahoo.com',5),
(265,'鄂行','M','lx3p4iteagl@qq.com',3),
(266,'宗建山','M','5lzg4puwo@126.com',5),
(267,'公秋桂','F','9x1oxwqz@msn.com',4),
(268,'隆富平','M','tvx36p4djpn@msn.com',5),
(269,'郜莲','F','pd30f46kt6@sina.com',4),
(270,'马琦','F','jccy9hi9d@163.com',6),
(271,'晋俊','M','s7fkzl5b@qq.com',1),
(272,'昌娜荣','F','feuui1e302b@yahoo.com',3),
(273,'琴武','M','dzzjpr9kd@msn.com',4),
(274,'华博','M','cnxfbbkqf@163.net',7),
(275,'长佳','F','4avfpdbb39n@sina.com',6),
(276,'连菊','F','o377zmxks7tu@yahoo.com',6),
(277,'麻航朗','M','cyc0lh6osm4@163.net',1),
(278,'翁环','F','0sck7ec1dgh@gmail.com',7),
(279,'闻静娅','F','t8pvjgd99@gmail.com',4),
(280,'邬叶莉','F','to2fkr98@126.com',7),
(281,'毋行武','M','96sbzwb2epi8@live.com',4),
(282,'海宏','M','iesw28hrpj@msn.com',4),
(283,'水春','F','8by0sbkmcu@163.net',7),
(284,'门珍','F','fslatals6@163.com',5),
(285,'厍竹燕','F','txxjsxwc@sina.com',5),
(286,'牧飞','M','m5cqwsvyzwh@yahoo.com',2),
(287,'澹真珠','F','3xf7whhi@msn.com',1),
(288,'养飘黛','F','0evssfjt5t@qq.com',3),
(289,'甫峰民','M','re89zq2ymz6@163.com',7),
(290,'叔会保','M','6i9vqxoxn@yahoo.com',6),
(291,'法和','M','gl1oeszt@msn.com',3),
(292,'申若祥','M','tuwso9ryoe5@qq.com',1),
(293,'山树','M','igztsf1nb1c4@msn.com',1),
(294,'叔腾博','M','xeics2@qq.com',5),
(295,'宦鸣','M','nloaxh3l@yahoo.com',5),
(296,'于颖锦','F','d6sc84tg@msn.com',5),
(297,'窦鹏','M','iegmy0q6fua@163.com',4),
(298,'台宁育','F','5fr883ou2@gmail.com',5),
(299,'经晨邦','M','t3o8uok@163.net',4),
(300,'蒲林','M','yj5hv3wrn@qq.com',1),
(301,'厍巧','F','lulzg09br9@qq.com',2),
(302,'庚珍萍','F','3z65mi3now9@sina.com',3),
(303,'卞振','M','tfrfp8@sina.com',2),
(304,'亢树志','M','2bw305xybb9k@126.com',7),
(305,'海瑾宁','F','shq6gh4wvy@gmail.com',4),
(306,'督宁','F','0g34qk@sohu.com',3),
(307,'雷朗','M','m6l133p4ytp@163.net',1),
(308,'糜腾','M','5kyvohvdqmd@sohu.com',5),
(309,'韶桂雁','F','fc89kbpn@live.com',3),
(310,'贡芬亚','F','ef22eqnq@sina.com',4),
(311,'祁富鸣','M','4gbq3q8aezmz@163.net',6),
(312,'毋壮祥','M','jwpj29rfiqhr@163.net',5),
(313,'隆中','M','21p4805lsf@gmail.com',3),
(314,'云珍','F','emf4opb@126.com',5),
(315,'拔亨斌','M','zp1kz7@sina.com',6),
(316,'仲利友','M','m35t8z4hf4@sina.com',7),
(317,'蒙亚柔','F','hh01je7@sina.com',1),
(318,'苗凡','F','pe4s26@yahoo.com',5),
(319,'于炎树','M','r6huteful@126.com',6),
(320,'简伟','M','tt1i3z2@gmail.com',1),
(321,'邹天','M','ias0zsylnwqo@126.com',5),
(322,'班娴','F','sj0xz1fkyuk@sohu.com',3),
(323,'公影','F','hcjlei19t1a4@163.net',2),
(324,'平天固','M','vywh26m7@live.com',2),
(325,'连芳','F','xv5iwo@sina.com',5),
(326,'王平榕','M','opzmko@msn.com',3),
(327,'离玲','F','gumczwnhh1w@msn.com',4),
(328,'房良','M','5ls2co1nnv@sina.com',6),
(329,'毋希','F','5p0pfv1@sohu.com',7),
(330,'车腾山','M','af16hjar3v8@msn.com',1),
(331,'益姣','F','6c1qdkzdj2v7@163.net',3),
(332,'符才宁','M','0eyhhlw@yahoo.com',4),
(333,'幸全子','M','4djjfb@sina.com',5),
(334,'祁爱','F','qmogrj@126.com',7),
(335,'萧弘','M','ms6nrq3@yahoo.com',5),
(336,'牟河武','M','sxfbky7jc@qq.com',7),
(337,'桓朋','M','cr36sk@sina.com',5),
(338,'房璐','F','8f1eo1g1xp0@126.com',7),
(339,'甘爽','F','y6spogr@sohu.com',6),
(340,'强宜柔','F','ynfy8p@yahoo.com',4),
(341,'雕羽','F','b6ivikszqg@163.com',4),
(342,'成怡','F','ux1evhg23vll@126.com',5),
(343,'红筠','F','3viotoj5@sina.com',6),
(344,'乐园','F','41tishqqatm@live.com',3),
(345,'段瑾','F','u6foqjmwx@sohu.com',7),
(346,'羿纨娅','F','ydvlv8f@163.net',4),
(347,'谷岩世','M','k8fedqdeedag@126.com',3),
(348,'刁平','M','zvpodzwb@sina.com',5),
(349,'蓝顺','M','5shb8fvqv@163.net',4),
(350,'皇伦山','M','avtofunt@sina.com',2),
(351,'终希','F','v1setfhzf@163.com',1),
(352,'谈东庆','M','aadja4y@sina.com',7),
(353,'空黛','F','aoe2clel@gmail.com',5),
(354,'慎云园','F','az6k6dq@live.com',6),
(355,'蔺炎','M','r81cf898u@163.net',2),
(356,'澹安翔','M','hl5w36@163.com',3),
(357,'狐鸣','M','k2mj67c@qq.com',1),
(358,'乔苑梦','F','an6ut1qf8@yahoo.com',6),
(359,'纪安','M','enas4o@sohu.com',3),
(360,'苗香淑','F','7mj1e0r@msn.com',2),
(361,'颜清','M','23eou1v@126.com',3),
(362,'庚永','M','cmfoan7hvg@sohu.com',5),
(363,'逯信茂','M','5yy69tg7zyoz@yahoo.com',7),
(364,'郏娥','F','cc2afjygfgb@gmail.com',3),
(365,'姬广','M','uw86k1tyx3r@msn.com',3),
(366,'莫光','M','x533t6ftg6s@163.com',4),
(367,'钟仪','F','czslr25wv@sohu.com',1),
(368,'申武斌','M','mib5ie8@sina.com',6),
(369,'闻厚峰','M','isch2g4g@sina.com',7),
(370,'上子飞','M','r8jpfj@sina.com',1),
(371,'陶承毅','M','wd3vg3xh@yahoo.com',4),
(372,'段星峰','M','qpplkobneub@yahoo.com',7),
(373,'龚珍影','F','3h84olaza960@sohu.com',1),
(374,'任福','M','dw144o5mpn@yahoo.com',3),
(375,'公霄','F','y3p63y3fkhnd@sina.com',1),
(376,'阮顺岩','M','95hld0kysr8@163.com',6),
(377,'仲娟宁','F','73gzj4@qq.com',3),
(378,'程瑗育','F','5tnbiu@gmail.com',1),
(379,'韩利','M','y2og2569@sina.com',6),
(380,'加娟韵','F','kk0zv00d7@sina.com',4),
(381,'束纯','F','wz0jue9p@163.net',3),
(382,'燕香','F','4m41108lvgm@yahoo.com',4),
(383,'申雅妍','F','nyuv68@sina.com',1),
(384,'祁岩友','M','nyh0geg@msn.com',7),
(385,'凌琳玉','F','fk8g2zhhwj8@gmail.com',6),
(386,'笪茜','F','247xe439ce@live.com',4),
(387,'孙旭伟','M','5y82yiifp@163.com',1),
(388,'宫振建','M','020su2rz@gmail.com',2),
(389,'蔚娟','F','cc1wqc@163.net',1),
(390,'嵇佳韵','F','8s2w5i9gxbs8@163.net',4),
(391,'微毓','F','aj11pnh1@msn.com',3),
(392,'王欣','F','7kq7bja9@126.com',1),
(393,'山航诚','M','rvss33yn@163.net',2),
(394,'徒哲力','M','ezes5igx18@qq.com',4),
(395,'酆希','F','w9j4zda8v@126.com',5),
(396,'盛振全','M','3wufwrw@yahoo.com',6),
(397,'赵宜','F','fl7p30cjla@yahoo.com',4),
(398,'阳馥芳','F','ojof71twt7@yahoo.com',1),
(399,'舒伟','M','rv98jv@126.com',7),
(401,'慕娜','F','06z3gyu@msn.com',4),
(402,'郝凤莉','F','irtf9cpvd@yahoo.com',7),
(403,'邢栋','M','v699dn@msn.com',4),
(404,'魏奇群','M','7knl3g4yl7@sohu.com',4),
(405,'蓝天','M','577276653@qq.com',6),
(406,'白云','F','1231232@qq.com',7),
(407,'黑土','M','qwer@qq.com',1),
(408,'大河','M','qwer@qq.com',2),
(447,'一条大鱼','M','asdfads@adsf.com',2),
(449,'单河一个','M','danhe@qq.com',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
