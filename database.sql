CREATE TABLE IF NOT EXISTS `user`(
   `user_id` INT UNSIGNED AUTO_INCREMENT,
   `user_phone` VARCHAR(11) NOT NULL,
   `user_name` VARCHAR(10) NOT NULL,
   `user_pass` VARCHAR(20) NOT NULL,
   `user_is_admin` INT NOT NULL,
   `user_level` INT NOT NULL,
   PRIMARY KEY ( `user_id` )
)DEFAULT CHARSET=UTF8MB3;

CREATE TABLE IF NOT EXISTS `dishes`(
   `dishes_id` INT UNSIGNED AUTO_INCREMENT,
   `dishes_category` INT NOT NULL,
   `dishes_price` DOUBLE NOT NULL,
   `dishes_name` VARCHAR(20) NOT NULL,
   PRIMARY KEY ( `dishes_id` )
)DEFAULT CHARSET=UTF8MB3;

CREATE TABLE IF NOT EXISTS `order`(
   `order_id` INT UNSIGNED AUTO_INCREMENT,
   `order_time` TIMESTAMP NOT NULL,
   `order_user_id` INT UNSIGNED NOT NULL,
   `order_dishes_id` INT UNSIGNED NOT NULL,
   `order_count` INT UNSIGNED NOT NULL,
   `order_total_cost` DOUBLE NOT NULL,
   FOREIGN KEY(`order_user_id`)
     REFERENCES `user`(`user_id`)
     ON DELETE CASCADE,
   FOREIGN KEY(`order_dishes_id`)
     REFERENCES `dishes`(`dishes_id`)
     ON DELETE CASCADE,
   PRIMARY KEY ( `order_id` )
)DEFAULT CHARSET=UTF8MB3;

INSERT INTO `dishes`  VALUES (NULL, 1,4,"一品豆腐");
INSERT INTO `dishes`  VALUES (NULL, 1,23,"糖醋鲤鱼");
INSERT INTO `dishes`  VALUES (NULL, 1,3,"葱烧海参");
INSERT INTO `dishes`  VALUES (NULL, 1,6,"三丝鱼翅");
INSERT INTO `dishes`  VALUES (NULL, 1,4,"白扒四宝");
INSERT INTO `dishes`  VALUES (NULL, 1,20,"清汤银耳");
INSERT INTO `dishes`  VALUES (NULL, 1,14,"油泼豆莛");
INSERT INTO `dishes`  VALUES (NULL, 1,6,"糖醋里脊");
INSERT INTO `dishes`  VALUES (NULL, 1,7,"扒原壳鲍鱼");
INSERT INTO `dishes`  VALUES (NULL, 1,28,"招远蒸丸");
INSERT INTO `dishes`  VALUES (NULL, 1,34,"枣庄辣子鸡");
INSERT INTO `dishes`  VALUES (NULL, 1,28,"泰山三美汤");
INSERT INTO `dishes`  VALUES (NULL, 1,16,"锅塌黄鱼");
INSERT INTO `dishes`  VALUES (NULL, 8,32,"粉蒸牛肉");
INSERT INTO `dishes`  VALUES (NULL, 8,37,"宫保鸡丁");
INSERT INTO `dishes`  VALUES (NULL, 8,10,"毛肚火锅");
INSERT INTO `dishes`  VALUES (NULL, 8,18,"干煸牛肉丝");
INSERT INTO `dishes`  VALUES (NULL, 8,46,"夫妻肺片");
INSERT INTO `dishes`  VALUES (NULL, 8,41,"东坡肘子");
INSERT INTO `dishes`  VALUES (NULL, 8,6,"鱼香肉丝");
INSERT INTO `dishes`  VALUES (NULL, 8,25,"担担面");
INSERT INTO `dishes`  VALUES (NULL, 8,32,"灯影牛肉");
INSERT INTO `dishes`  VALUES (NULL, 2,26,"客家酿豆腐");
INSERT INTO `dishes`  VALUES (NULL, 2,28,"梅菜扣肉");
INSERT INTO `dishes`  VALUES (NULL, 2,32,"盐焗鸡");
INSERT INTO `dishes`  VALUES (NULL, 2,50,"猪肚包鸡");
INSERT INTO `dishes`  VALUES (NULL, 2,24,"酿苦瓜");
INSERT INTO `dishes`  VALUES (NULL, 2,7,"三杯鸭");
INSERT INTO `dishes`  VALUES (NULL, 2,45,"客家清炖猪肉汤");
INSERT INTO `dishes`  VALUES (NULL, 2,33,"腌面");
INSERT INTO `dishes`  VALUES (NULL, 2,14,"干炒牛河");
INSERT INTO `dishes`  VALUES (NULL, 2,18,"芙蓉虾");
INSERT INTO `dishes`  VALUES (NULL, 2,29,"豉汁蒸排骨");
INSERT INTO `dishes`  VALUES (NULL, 3,24,"小笼包");
INSERT INTO `dishes`  VALUES (NULL, 3,22,"三套鸭");
INSERT INTO `dishes`  VALUES (NULL, 3,9,"大煮干丝");
INSERT INTO `dishes`  VALUES (NULL, 3,39,"清炖蟹粉狮子头");
INSERT INTO `dishes`  VALUES (NULL, 3,46,"扒烧整猪头");
INSERT INTO `dishes`  VALUES (NULL, 3,9,"羊方藏鱼");
INSERT INTO `dishes`  VALUES (NULL, 3,26,"沛公狗肉");
INSERT INTO `dishes`  VALUES (NULL, 3,37,"生煎馒头");
INSERT INTO `dishes`  VALUES (NULL, 3,50,"蟹壳黄");
INSERT INTO `dishes`  VALUES (NULL, 3,16,"锅贴");
INSERT INTO `dishes`  VALUES (NULL, 4,47,"佛跳墙");
INSERT INTO `dishes`  VALUES (NULL, 4,35,"鸡汤汆海蚌");
INSERT INTO `dishes`  VALUES (NULL, 4,21,"淡糟香螺片");
INSERT INTO `dishes`  VALUES (NULL, 4,5,"醉糟鸡");
INSERT INTO `dishes`  VALUES (NULL, 4,28,"烧肉棕");
INSERT INTO `dishes`  VALUES (NULL, 4,12,"油葱果");
INSERT INTO `dishes`  VALUES (NULL, 4,20,"韭菜盒");
INSERT INTO `dishes`  VALUES (NULL, 4,15,"炒马齿苋");
INSERT INTO `dishes`  VALUES (NULL, 4,50,"狗爪豆");
INSERT INTO `dishes`  VALUES (NULL, 4,13,"香椿芽");
INSERT INTO `dishes`  VALUES (NULL, 4,13,"峡阳桂花糕");
INSERT INTO `dishes`  VALUES (NULL, 4,32,"米冻皮");
INSERT INTO `dishes`  VALUES (NULL, 4,33,"酸辣鱿鱼汤");
INSERT INTO `dishes`  VALUES (NULL, 5,31,"剔骨锅烧河鳗");
INSERT INTO `dishes`  VALUES (NULL, 5,39,"冰糖甲鱼");
INSERT INTO `dishes`  VALUES (NULL, 5,37,"西湖醋鱼");
INSERT INTO `dishes`  VALUES (NULL, 5,14,"雪菜大黄鱼");
INSERT INTO `dishes`  VALUES (NULL, 5,37,"腐皮包黄鱼");
INSERT INTO `dishes`  VALUES (NULL, 5,20,"荷叶粉蒸肉");
INSERT INTO `dishes`  VALUES (NULL, 5,32,"嘉兴肉粽");
INSERT INTO `dishes`  VALUES (NULL, 5,42,"宁波汤圆");
INSERT INTO `dishes`  VALUES (NULL, 5,39,"绍兴臭豆腐");
INSERT INTO `dishes`  VALUES (NULL, 7,35,"毛峰熏鲥鱼");
INSERT INTO `dishes`  VALUES (NULL, 7,39,"火腿炖甲鱼");
INSERT INTO `dishes`  VALUES (NULL, 7,18,"腌鲜鳜鱼");
INSERT INTO `dishes`  VALUES (NULL, 7,23,"黄山炖鸽");
INSERT INTO `dishes`  VALUES (NULL, 7,9,"雪冬烧山鸡");
INSERT INTO `dishes`  VALUES (NULL, 6,22,"东安子鸡");
INSERT INTO `dishes`  VALUES (NULL, 6,20,"剁椒鱼头");
INSERT INTO `dishes`  VALUES (NULL, 6,6,"腊味合蒸");
INSERT INTO `dishes`  VALUES (NULL, 6,15,"组庵鱼翅");
INSERT INTO `dishes`  VALUES (NULL, 6,16,"冰糖湘莲");
INSERT INTO `dishes`  VALUES (NULL, 6,7,"红椒腊牛肉");
INSERT INTO `dishes`  VALUES (NULL, 6,47,"糯米粽子");
INSERT INTO `dishes`  VALUES (NULL, 6,50,"麻仁奶糖");
INSERT INTO `dishes`  VALUES (NULL, 6,32,"浏阳豆豉");
INSERT INTO `dishes`  VALUES (NULL, 6,40,"浏阳茴饼");
INSERT INTO `dishes`  VALUES (NULL, 6,15,"春卷");
INSERT INTO `dishes`  VALUES (NULL, 0,16,"玉米排骨汤");
INSERT INTO `dishes`  VALUES (NULL, 0,31,"红烧肉");
INSERT INTO `dishes`  VALUES (NULL, 0,43,"苦瓜炒肉");
INSERT INTO `dishes`  VALUES (NULL, 0,41,"水蒸蛋");
INSERT INTO `dishes`  VALUES (NULL, 0,36,"西红柿炒鸡蛋");
INSERT INTO `dishes`  VALUES (NULL, 0,46,"蛋炒饭");
INSERT INTO `dishes`  VALUES (NULL, 0,19,"肉末煎蛋");
INSERT INTO `dishes`  VALUES (NULL, 9,31,"蛋挞");
INSERT INTO `dishes`  VALUES (NULL, 9,12,"披萨");
INSERT INTO `dishes`  VALUES (NULL, 9,9,"意大利面");
INSERT INTO `dishes`  VALUES (NULL, 9,34,"冬阴功汤");
INSERT INTO `dishes`  VALUES (NULL, 9,47,"咖喱炒蟹");
INSERT INTO `dishes`  VALUES (NULL, 9,5,"日式拉面");
INSERT INTO `dishes`  VALUES (NULL, 9,9,"刺身");
INSERT INTO `dishes`  VALUES (NULL, 9,17,"法式蜗牛");
INSERT INTO `dishes`  VALUES (NULL, 9,6,"法式甜品");
INSERT INTO `dishes`  VALUES (NULL, 9,8,"韩式拌饭");

INSERT INTO `user` (`user_id`, `user_phone`, `user_name`, `user_pass`, `user_is_admin`, `user_level`) VALUES('1','18926761351','MCTBL','a1b2c3d4f5','1','0');
INSERT INTO `user` (`user_id`, `user_phone`, `user_name`, `user_pass`, `user_is_admin`, `user_level`) VALUES('2','11111111111','admin','1','1','0');
INSERT INTO `user` (`user_id`, `user_phone`, `user_name`, `user_pass`, `user_is_admin`, `user_level`) VALUES('3','88678006449','小红','046546674587074','0','0');
INSERT INTO `user` (`user_id`, `user_phone`, `user_name`, `user_pass`, `user_is_admin`, `user_level`) VALUES('4','79344507235','小明','071404156307810','0','0');
INSERT INTO `user` (`user_id`, `user_phone`, `user_name`, `user_pass`, `user_is_admin`, `user_level`) VALUES('5','85226399474','小兰','285660127393730','0','0');
INSERT INTO `user` (`user_id`, `user_phone`, `user_name`, `user_pass`, `user_is_admin`, `user_level`) VALUES('6','04068438399','小绿','272845620433932','0','0');
INSERT INTO `user` (`user_id`, `user_phone`, `user_name`, `user_pass`, `user_is_admin`, `user_level`) VALUES('7','09365600325','李华','806901023713863','0','0');
INSERT INTO `user` (`user_id`, `user_phone`, `user_name`, `user_pass`, `user_is_admin`, `user_level`) VALUES('8','04434506759','小紫','360939606110640','0','0');
INSERT INTO `user` (`user_id`, `user_phone`, `user_name`, `user_pass`, `user_is_admin`, `user_level`) VALUES('9','08685806674','小鹏','603073371720423','0','0');
INSERT INTO `user` (`user_id`, `user_phone`, `user_name`, `user_pass`, `user_is_admin`, `user_level`) VALUES('10','46809038999','小鬼','740017062019897','0','0');
INSERT INTO `user` (`user_id`, `user_phone`, `user_name`, `user_pass`, `user_is_admin`, `user_level`) VALUES('11','85996049778','小青','860403404004834','0','0');
INSERT INTO `user` (`user_id`, `user_phone`, `user_name`, `user_pass`, `user_is_admin`, `user_level`) VALUES('12','86630046717','小林','684699755425476','0','0');
INSERT INTO `user` (`user_id`, `user_phone`, `user_name`, `user_pass`, `user_is_admin`, `user_level`) VALUES('13','cuser','小林','1','0','0');

INSERT INTO `order` VALUES(NULL, '2023/5/1 1:0:57', 8, 68, 7, 126);
INSERT INTO `order` VALUES(NULL, '2023/5/1 1:46:44', 12, 52, 10, 500);
INSERT INTO `order` VALUES(NULL, '2023/5/1 7:50:25', 7, 55, 5, 160);
INSERT INTO `order` VALUES(NULL, '2023/5/1 19:40:29', 12, 42, 6, 300);
INSERT INTO `order` VALUES(NULL, '2023/5/2 10:31:9', 7, 47, 7, 35);
INSERT INTO `order` VALUES(NULL, '2023/5/2 10:39:1', 3, 24, 7, 196);
INSERT INTO `order` VALUES(NULL, '2023/5/2 11:39:29', 3, 66, 10, 350);
INSERT INTO `order` VALUES(NULL, '2023/5/3 17:43:16', 6, 52, 8, 400);
INSERT INTO `order` VALUES(NULL, '2023/5/3 18:53:25', 8, 35, 6, 132);
INSERT INTO `order` VALUES(NULL, '2023/5/3 23:41:46', 8, 60, 1, 14);
INSERT INTO `order` VALUES(NULL, '2023/5/4 9:27:5', 13, 96, 2, 34);
INSERT INTO `order` VALUES(NULL, '2023/5/4 15:31:4', 5, 36, 6, 54);
INSERT INTO `order` VALUES(NULL, '2023/5/4 20:32:59', 11, 70, 7, 63);
INSERT INTO `order` VALUES(NULL, '2023/5/5 1:19:5', 13, 94, 2, 10);
INSERT INTO `order` VALUES(NULL, '2023/5/5 3:37:42', 11, 19, 10, 410);
INSERT INTO `order` VALUES(NULL, '2023/5/5 6:14:13', 5, 31, 7, 98);
INSERT INTO `order` VALUES(NULL, '2023/5/5 22:7:31', 6, 94, 9, 45);
INSERT INTO `order` VALUES(NULL, '2023/5/7 0:6:51', 1, 11, 3, 102);
INSERT INTO `order` VALUES(NULL, '2023/5/7 21:42:15', 9, 24, 1, 28);
INSERT INTO `order` VALUES(NULL, '2023/5/8 15:10:29', 8, 41, 10, 370);
INSERT INTO `order` VALUES(NULL, '2023/5/8 17:8:26', 10, 58, 5, 195);
INSERT INTO `order` VALUES(NULL, '2023/5/9 6:43:46', 13, 22, 3, 96);
INSERT INTO `order` VALUES(NULL, '2023/5/9 8:47:27', 1, 55, 2, 64);
INSERT INTO `order` VALUES(NULL, '2023/5/9 9:19:18', 9, 45, 7, 245);
INSERT INTO `order` VALUES(NULL, '2023/5/9 9:22:23', 3, 70, 9, 81);
INSERT INTO `order` VALUES(NULL, '2023/5/9 10:18:4', 6, 51, 4, 60);
INSERT INTO `order` VALUES(NULL, '2023/5/9 15:30:34', 9, 83, 10, 310);
INSERT INTO `order` VALUES(NULL, '2023/5/9 18:22:19', 6, 17, 7, 126);
INSERT INTO `order` VALUES(NULL, '2023/5/9 19:53:31', 2, 23, 4, 104);
INSERT INTO `order` VALUES(NULL, '2023/5/10 6:35:41', 5, 26, 2, 100);
INSERT INTO `order` VALUES(NULL, '2023/5/10 12:49:14', 6, 46, 5, 105);
INSERT INTO `order` VALUES(NULL, '2023/5/10 15:49:31', 10, 48, 4, 112);
INSERT INTO `order` VALUES(NULL, '2023/5/11 11:53:17', 4, 12, 6, 168);
INSERT INTO `order` VALUES(NULL, '2023/5/12 4:41:44', 1, 51, 6, 90);
INSERT INTO `order` VALUES(NULL, '2023/5/12 17:40:18', 3, 12, 1, 28);
INSERT INTO `order` VALUES(NULL, '2023/5/12 23:42:1', 6, 85, 3, 123);
INSERT INTO `order` VALUES(NULL, '2023/5/13 0:7:18', 2, 69, 9, 207);
INSERT INTO `order` VALUES(NULL, '2023/5/13 1:27:25', 11, 82, 1, 16);
INSERT INTO `order` VALUES(NULL, '2023/5/13 2:24:29', 13, 79, 8, 256);
INSERT INTO `order` VALUES(NULL, '2023/5/13 6:41:21', 10, 83, 3, 93);
INSERT INTO `order` VALUES(NULL, '2023/5/13 9:32:33', 9, 46, 8, 168);
INSERT INTO `order` VALUES(NULL, '2023/5/13 12:6:43', 10, 73, 9, 54);
INSERT INTO `order` VALUES(NULL, '2023/5/13 12:44:54', 11, 44, 8, 376);
INSERT INTO `order` VALUES(NULL, '2023/5/13 14:12:36', 11, 69, 4, 92);
INSERT INTO `order` VALUES(NULL, '2023/5/13 16:13:9', 12, 29, 5, 225);
INSERT INTO `order` VALUES(NULL, '2023/5/14 7:30:56', 13, 96, 2, 34);
INSERT INTO `order` VALUES(NULL, '2023/5/14 10:34:33', 5, 61, 3, 111);
INSERT INTO `order` VALUES(NULL, '2023/5/14 22:16:50', 2, 37, 3, 117);
INSERT INTO `order` VALUES(NULL, '2023/5/15 1:13:8', 9, 36, 9, 81);
INSERT INTO `order` VALUES(NULL, '2023/5/15 5:14:50', 4, 44, 9, 423);
INSERT INTO `order` VALUES(NULL, '2023/5/15 20:30:22', 11, 81, 5, 75);
INSERT INTO `order` VALUES(NULL, '2023/5/16 8:14:23', 9, 45, 1, 35);
INSERT INTO `order` VALUES(NULL, '2023/5/16 17:40:33', 10, 2, 8, 184);
INSERT INTO `order` VALUES(NULL, '2023/5/16 18:18:30', 9, 9, 6, 42);
INSERT INTO `order` VALUES(NULL, '2023/5/17 9:4:35', 1, 20, 8, 48);
INSERT INTO `order` VALUES(NULL, '2023/5/17 15:27:57', 8, 27, 1, 24);
INSERT INTO `order` VALUES(NULL, '2023/5/17 16:13:25', 5, 62, 7, 140);
INSERT INTO `order` VALUES(NULL, '2023/5/18 1:51:34', 3, 90, 4, 48);
INSERT INTO `order` VALUES(NULL, '2023/5/19 5:30:9', 1, 91, 10, 90);
INSERT INTO `order` VALUES(NULL, '2023/5/19 7:57:7', 1, 50, 6, 120);
INSERT INTO `order` VALUES(NULL, '2023/5/19 14:39:23', 11, 67, 9, 351);
INSERT INTO `order` VALUES(NULL, '2023/5/19 14:47:56', 12, 63, 8, 256);
INSERT INTO `order` VALUES(NULL, '2023/5/19 17:37:11', 5, 65, 4, 156);
INSERT INTO `order` VALUES(NULL, '2023/5/19 19:5:8', 10, 5, 8, 32);
INSERT INTO `order` VALUES(NULL, '2023/5/20 21:1:1', 13, 85, 7, 287);
INSERT INTO `order` VALUES(NULL, '2023/5/21 7:10:2', 3, 44, 3, 141);
INSERT INTO `order` VALUES(NULL, '2023/5/21 12:43:9', 6, 35, 5, 110);
INSERT INTO `order` VALUES(NULL, '2023/5/21 18:51:13', 9, 71, 6, 132);
INSERT INTO `order` VALUES(NULL, '2023/5/22 13:27:0', 10, 56, 7, 231);
INSERT INTO `order` VALUES(NULL, '2023/5/22 18:57:57', 13, 71, 9, 198);
INSERT INTO `order` VALUES(NULL, '2023/5/23 5:31:21', 1, 41, 7, 259);
INSERT INTO `order` VALUES(NULL, '2023/5/23 6:8:14', 8, 36, 8, 72);
INSERT INTO `order` VALUES(NULL, '2023/5/23 18:31:1', 13, 87, 8, 368);
INSERT INTO `order` VALUES(NULL, '2023/5/23 21:59:0', 8, 16, 10, 100);
INSERT INTO `order` VALUES(NULL, '2023/5/24 7:41:17', 9, 56, 4, 132);
INSERT INTO `order` VALUES(NULL, '2023/5/24 9:11:57', 8, 1, 4, 16);
INSERT INTO `order` VALUES(NULL, '2023/5/25 2:39:52', 7, 70, 6, 54);
INSERT INTO `order` VALUES(NULL, '2023/5/25 15:21:32', 6, 73, 5, 30);
INSERT INTO `order` VALUES(NULL, '2023/5/25 18:53:37', 11, 14, 2, 64);
INSERT INTO `order` VALUES(NULL, '2023/5/25 21:27:54', 13, 3, 6, 18);
INSERT INTO `order` VALUES(NULL, '2023/5/26 11:9:24', 6, 47, 2, 10);
INSERT INTO `order` VALUES(NULL, '2023/5/26 11:41:45', 5, 51, 8, 120);
INSERT INTO `order` VALUES(NULL, '2023/5/26 11:56:44', 2, 71, 4, 88);
INSERT INTO `order` VALUES(NULL, '2023/5/26 15:12:40', 10, 54, 3, 39);
INSERT INTO `order` VALUES(NULL, '2023/5/26 23:49:34', 7, 75, 2, 32);
INSERT INTO `order` VALUES(NULL, '2023/5/27 3:9:36', 13, 12, 10, 280);
INSERT INTO `order` VALUES(NULL, '2023/5/27 18:34:26', 12, 23, 5, 130);
INSERT INTO `order` VALUES(NULL, '2023/5/28 15:43:35', 6, 91, 6, 54);
INSERT INTO `order` VALUES(NULL, '2023/5/28 21:30:31', 4, 29, 6, 270);
INSERT INTO `order` VALUES(NULL, '2023/5/29 4:56:5', 11, 36, 9, 81);
INSERT INTO `order` VALUES(NULL, '2023/5/29 20:5:16', 6, 74, 1, 15);
INSERT INTO `order` VALUES(NULL, '2023/5/29 20:54:29', 9, 87, 10, 460);
INSERT INTO `order` VALUES(NULL, '2023/5/29 20:55:51', 2, 95, 9, 81);
INSERT INTO `order` VALUES(NULL, '2023/5/29 21:44:49', 5, 39, 6, 54);
INSERT INTO `order` VALUES(NULL, '2023/5/30 4:14:48', 11, 52, 7, 350);
INSERT INTO `order` VALUES(NULL, '2023/5/30 22:28:26', 7, 2, 3, 69);
INSERT INTO `order` VALUES(NULL, '2023/5/31 4:58:29', 6, 71, 5, 110);
INSERT INTO `order` VALUES(NULL, '2023/5/31 5:41:43', 2, 71, 4, 88);
