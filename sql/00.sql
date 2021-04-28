-- -----------------------------------------------------
-- Table `my_db`.`users`
-- -----------------------------------------------------
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(40) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `last_name` varchar(40) DEFAULT NULL,
  `occupation` varchar(30) DEFAULT NULL,
  `type` int(30) unsigned NOT NULL,
  `password` int(10) unsigned NOT NULL,
  `created_timestamp` int(10) unsigned DEFAULT NULL,
  `updated_timestamp` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`, `type`, `created_timestamp`)
) ENGINE = InnoDB AUTO_INCREMENT = 0 DEFAULT CHARSET = utf8mb4;

-- -----------------------------------------------------
-- Table `my_db`.`points`
-- -----------------------------------------------------
CREATE TABLE `points` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20),
  `arrived_time` int(10) unsigned NOT NULL,
  `lunch` int(10) unsigned NOT NULL,
  `lunch_returned_time` int(10) unsigned NOT NULL,
  `leave_time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 0 DEFAULT CHARSET = utf8mb4;