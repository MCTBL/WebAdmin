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
