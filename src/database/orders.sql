CREATE TABLE `orders`(
	`id` VARCHAR(20) NOT NULL PRIMARY KEY COMMENT "大部分金流的API他們的 ID 都要求你是一個亂數的字串",
	`total` int unsigned NOT NULL DEFAULT 0,
	`created_at` DATETIME NOT NULL DEFAULT now(),
	`updated_at` DATETIME NOT NULL DEFAULT now(),
	`payment_provider` ENUM("PAYPAL" , "ECPAY"),
	`payment_way` ENUM("CSV" , "CC" , "ATM" , "PAYPAL"),
	`status` ENUM("WAITTING" , "SUCCESS" , "FAILED" , "CANCEL"),
	`comment` JSON DEFAULT NULL COMMENT "商品內容 [{商品ID ,商品數量, 商品價格}]"
);
