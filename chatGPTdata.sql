-- Inserting into `users` table
INSERT INTO `users` (`id`, `email`, `password`, `phone`, `name`, `first_access_flag`, `created_at`) VALUES
(1, 'riccardo@pwm.it', '1234567890', '3334445588', 'Riccardo Parisi', 0, '2024-07-05 15:56:08');

-- Inserting into `product_categories` table
INSERT INTO `product_categories` (`id`, `name`, `hero_image_url`, `description`) VALUES
(1, 'CPU', 'cpu_hero.jpg', 'Central Processing Units'),
(2, 'GPU', 'gpu_hero.jpg', 'Graphics Processing Units'),
(3, 'Motherboard', 'motherboard_hero.jpg', 'Motherboards'),
(4, 'RAM', 'ram_hero.jpg', 'Memory Modules'),
(5, 'Storage', 'storage_hero.jpg', 'Storage Devices'),
(6, 'Case', 'case_hero.jpg', 'Computer Cases'),
(7, 'PSU', 'psu_hero.jpg', 'Power Supply Units'),
(8, 'Laptop', 'laptop_hero.jpg', 'Laptops'),
(9, 'Tower PC', 'tower_pc_hero.jpg', 'Desktop Tower PCs'),
(10, 'Midtower PC', 'midtower_pc_hero.jpg', 'Midtower Desktop PCs'),
(11, 'All-in-One PC', 'aio_pc_hero.jpg', 'All-in-One Desktop PCs');

-- Inserting into `products` table
INSERT INTO `products` (`id`, `type`, `name`, `description`, `category_id`, `class`, `price`, `stock`, `image_url`, `created_at`) VALUES
(1, 'Component', 'Intel Core i9-12900K', 'Desktop Processor', 1, 'Gaming', 599.99, 100, 'i9-12900k.jpg', '2024-07-05 16:00:00'),
(2, 'Component', 'NVIDIA GeForce RTX 4080', 'Graphics Card', 2, 'Gaming', 899.99, 50, 'rtx-4080.jpg', '2024-07-05 16:00:00'),
(3, 'Component', 'ASUS ROG Crosshair VIII Hero', 'AMD Motherboard', 3, 'Gaming', 349.99, 30, 'crosshair-viii-hero.jpg', '2024-07-05 16:00:00'),
(4, 'Component', 'Corsair Vengeance LPX 32GB (2 x 16GB)', 'DDR4 RAM', 4, 'Standard', 199.99, 100, 'vengeance-lpx-32gb.jpg', '2024-07-05 16:00:00'),
(5, 'Component', 'Samsung 1TB 970 EVO Plus', 'NVMe SSD', 5, 'Standard', 149.99, 200, '970-evo-plus-1tb.jpg', '2024-07-05 16:00:00'),
(6, 'Component', 'Fractal Design Meshify C', 'ATX Mid Tower Case', 6, 'Standard', 89.99, 150, 'meshify-c.jpg', '2024-07-05 16:00:00'),
(7, 'Component', 'Corsair RM850x', '850W Power Supply', 7, 'Standard', 129.99, 80, 'rm850x.jpg', '2024-07-05 16:00:00'),
(8, 'PC', 'Alienware m15 R7', 'Gaming Laptop', 8, 'Gaming', 1999.99, 20, 'alienware-m15-r7.jpg', '2024-07-05 16:00:00'),
(9, 'PC', 'CyberPowerPC Gamer Xtreme', 'Gaming Desktop', 9, 'Gaming', 1499.99, 15, 'cyberpowerpc-gamer-xtreme.jpg', '2024-07-05 16:00:00'),
(10, 'PC', 'HP Pavilion 24-k0010 All-in-One', 'All-in-One Desktop', 11, 'Standard', 899.99, 10, 'hp-pavilion-24-aio.jpg', '2024-07-05 16:00:00');

-- Inserting into `addresses` table
INSERT INTO `addresses` (`id`, `user_id`, `address_line1`, `address_line2`, `city`, `state`, `country`, `postal_code`) VALUES
(1, 1, '123 Main St', NULL, 'New York', 'NY', 'USA', '10001');

-- Inserting into `builder_configurations` table
INSERT INTO `builder_configurations` (`id`, `user_id`, `name`, `cpu_id`, `gpu_id`, `ram_id`, `storage_id`, `motherboard_id`, `case_id`, `psu_id`, `created_at`) VALUES
(1, 1, 'Gaming Build', 1, 2, 4, 5, 3, 6, 7, '2024-07-05 16:30:00');

-- Inserting into `orders` table
INSERT INTO `orders` (`id`, `user_id`, `total_amount`, `order_date`, `status`) VALUES
(1, 1, 1499.99, '2024-07-05 17:00:00', 'Pending');

-- Inserting into `order_items` table
INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `unit_price`) VALUES
(1, 1, 9, 1, 1499.99);

-- Inserting into `shipping` table
INSERT INTO `shipping` (`id`, `order_id`, `build_id`, `address_id`, `shipping_date`, `status`) VALUES
(1, 1, NULL, 1, NULL, 'Pending');

-- Inserting into `payments` table
INSERT INTO `payments` (`id`, `user_id`, `card_number`, `expiry_date`, `cvv`, `card_holder_name`) VALUES
(1, 1, '1234567890123456', '12/25', '123', 'Riccardo Parisi');

-- Inserting into `product_attributes` table
INSERT INTO `product_attributes` (`id`, `product_id`, `attribute_name`, `attribute_value`) VALUES
(1, 1, 'Socket Type', 'LGA 1700'),
(2, 1, 'Clock Speed', '3.2 GHz'),
(3, 2, 'Memory', '16GB GDDR6X'),
(4, 2, 'CUDA Cores', '10240'),
(5, 3, 'Chipset', 'AMD X570'),
(6, 3, 'Socket Type', 'AM4'),
(7, 4, 'Speed', '3200MHz'),
(8, 4, 'Capacity', '32GB (2 x 16GB)'),
(9, 5, 'Interface', 'PCIe Gen 3.0 x4'),
(10, 5, 'Capacity', '1TB'),
(11, 6, 'Form Factor', 'Mid Tower'),
(12, 6, 'Color', 'Black'),
(13, 7, 'Efficiency', '80 Plus Gold'),
(14, 8, 'Display Size', '15.6" FHD'),
(15, 8, 'Processor', 'Intel Core i7-11800H'),
(16, 9, 'Processor', 'AMD Ryzen 7 5800X'),
(17, 9, 'Graphics', 'NVIDIA GeForce RTX 3060 Ti'),
(18, 10, 'Display Size', '23.8" FHD'),
(19, 10, 'Processor', 'Intel Core i5-11400F');