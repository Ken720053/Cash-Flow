CREATE TABLE `products` (
    `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY,
    `name` varchar(255) NOT NULL DEFAULT '',
    `amount` int UNSIGNED NOT NULL DEFAULT 0,
    `description` text,
    `pre_order` int UNSIGNED NOT NULL DEFAULT 0,
    `price` int UNSIGNED not null default 0
);
ALTER TABLE `products` ADD `price` int UNSIGNED not null default 0;
