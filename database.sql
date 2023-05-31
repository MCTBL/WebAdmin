CREATE TABLE IF NOT EXISTS `user`(
   `user_id` INT UNSIGNED AUTO_INCREMENT,
   `user_phone` VARCHAR(11) NOT NULL,
   `user_name` VARCHAR(10) NOT NULL,
   `user_pass` VARCHAR(10) NOT NULL,
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