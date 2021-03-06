CREATE TABLE IF NOT EXISTS `ecm_order_refund` (
`id` INT( 10 ) UNSIGNED NOT NULL AUTO_INCREMENT,
`order_id` INT( 10 ) UNSIGNED NOT NULL ,
`order_sn` VARCHAR( 20 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`sender_id` INT( 10 ) UNSIGNED NOT NULL ,
`sender_name` VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`receiver_id` INT( 10 ) UNSIGNED NOT NULL ,
`receiver_name` VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`refund_reason` VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`refund_amount` DECIMAL( 10, 2 ) NOT NULL ,
`refund_intro` VARCHAR( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci ,
`create_time` INT( 10 ) UNSIGNED NOT NULL ,
`pay_time` INT UNSIGNED NOT NULL ,
`apply_amount` DECIMAL( 10, 2 ) NOT NULL ,
`status` TINYINT( 3 ) UNSIGNED NOT NULL DEFAULT '0',
`closed` TINYINT( 3 ) UNSIGNED NOT NULL DEFAULT '0',
`type` TINYINT( 3 ) UNSIGNED NOT NULL DEFAULT '0',
`invoice_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
`dl_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
`dl_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
`dl_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
PRIMARY KEY ( `id` ) ,
INDEX ( `order_id` , `order_sn` , `sender_id` , `receiver_id`,`status` )
) ENGINE = MYISAM DEFAULT CHARSET=utf8;
    	