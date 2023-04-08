DROP SCHEMA IF EXISTS `full-stack-ecommerce`;

CREATE SCHEMA `full-stack-ecommerce`;
USE `full-stack-ecommerce` ;
 
 
CREATE TABLE IF NOT EXISTS `full-stack-ecommerce`.`product_category` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;
 
 
CREATE TABLE IF NOT EXISTS `full-stack-ecommerce`.`product` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `sku` VARCHAR(255) DEFAULT NULL,
  `name` VARCHAR(255) DEFAULT NULL,
  `description` VARCHAR(255) DEFAULT NULL,
  `unit_price` DECIMAL(13,2) DEFAULT NULL,
  `image_url` VARCHAR(255) DEFAULT NULL,
  `active` BIT DEFAULT 1,
  `units_in_stock` INT(11) DEFAULT NULL,
  `date_created` DATETIME(6) DEFAULT NULL,
  `last_updated` DATETIME(6) DEFAULT NULL,
  `category_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category` (`category_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;

INSERT INTO product_category(category_name) VALUES ('Cement');
INSERT INTO product_category(category_name) VALUES ('Sand');
INSERT INTO product_category(category_name) VALUES ('Bricks');
INSERT INTO product_category(category_name) VALUES ('Concrete');
INSERT INTO product_category(category_name) VALUES ('Workers');



INSERT INTO product(sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES
('SKUCM001', 'Portland Cement', 'The most common type of cement used in construction.', 'https://example.com/images/portland-cement.jpg', 1, 1000, 19.99, 1, NOW()),
('SKUCM002', 'Masonry Cement', 'A type of cement used in brick, block, and stone masonry.', 'https://example.com/images/masonry-cement.jpg', 1, 500, 24.99, 1, NOW()),
('SKUCM003', 'White Cement', 'A type of cement that is white in color and is used for decorative purposes.', 'https://example.com/images/white-cement.jpg', 1, 250, 29.99, 1, NOW()),
('SKUCM004', 'Oil Well Cement', 'A type of cement used in the drilling industry to seal wells and prevent gas or oil from escaping.', 'https://example.com/images/oil-well-cement.jpg', 1, 100, 49.99, 1, NOW()),
('SKUCM005', 'Expansive Cement', 'A type of cement that expands slightly during the hydration process, making it useful for repairing cracks in concrete.', 'https://example.com/images/expansive-cement.jpg', 1, 750, 14.99, 1, NOW()),
('SKUCM006', 'High Alumina Cement', 'A type of cement that is resistant to high temperatures and is used in applications such as furnace linings and refractory concretes.', 'https://example.com/images/high-alumina-cement.jpg', 1, 200, 39.99, 1, NOW()),
('SKUCM007', 'Rapid Hardening Cement', 'A type of cement that gains strength quickly, making it useful for repairing roads, bridges, and other structures with minimal downtime.', 'https://example.com/images/rapid-hardening-cement.jpg', 1, 500, 24.99, 1, NOW()),
('SKUCM008', 'Low Heat Cement', 'A type of cement that generates less heat during hydration, making it useful for large concrete structures such as dams and bridges that are at risk of cracking due to heat.', 'https://example.com/images/low-heat-cement.jpg', 1, 300, 34.99, 1, NOW()),
('SKUCM009', 'Sulfate Resistant Cement', 'A type of cement that is resistant to sulfate attacks, which can cause damage to concrete in marine and soil environments.', 'https://example.com/images/sulfate-resistant-cement.jpg', 1, 500, 24.99, 1, NOW()),
('SKUCM010', 'Colored Cement', 'A type of cement that is available in a range of colors and is used for decorative purposes.', 'https://example.com/images/colored-cement.jpg', 1, 250, 29.99, 1, NOW()),
('SKUCM011', 'Blast Furnace Slag Cement', 'A type of cement that is made by mixing blast furnace slag with ordinary Portland cement, making it more durable and resistant to chemicals.', 'https://example.com/images/blast-furnace-slag-cement.jpg', 1, 400, 29.99, 1, NOW()),
('SKUCM012', 'ACC Cement', 'ACC Limited is one of India\'s leading manufacturers of cement and ready mix concrete with a countrywide network of factories and marketing offices.', 'https://example.com/acc-cement.png', 1, 1000, 50.00, 1, NOW()),
('SKUCM013', 'Birla Cement', 'Birla Corporation Limited is one of the leading cement manufacturing companies in India with a capacity of 15.5 MTPA.', 'https://example.com/birla-cement.png', 1, 1100, 48.00, 1, NOW()),
('SKUCM014', 'Dalmia Cement', 'Dalmia Cement is one of the leading cement manufacturing companies in India with a strong presence in the South Indian market.', 'https://example.com/dalmia-cement.png', 1, 800, 42.00, 1, NOW()),
('SKUCM015', 'Emami Cement', 'Emami Cement Limited is a part of the Emami Group of Companies with integrated cement manufacturing plants in West Bengal, Chhattisgarh, and Odisha.', 'https://example.com/emami-cement.png', 1, 900, 47.00, 1, NOW()),
('SKUCM016', 'Fujairah Cement', 'Fujairah Cement Industries (FCI) is a leading cement manufacturing company based in the United Arab Emirates.', 'https://example.com/fujairah-cement.png', 1, 700, 40.00, 1, NOW()),
('SKUCM017', 'Gujarat Sidhee Cement', 'Gujarat Sidhee Cement Limited is a leading cement manufacturing company based in Gujarat with a production capacity of 1.2 MTPA.', 'https://example.com/gujarat-sidhee-cement.png', 1, 600, 35.00, 1, NOW()),
('SKUCM018', 'Grasim Cement', 'Grasim Industries Limited is one of the leading cement manufacturing companies in India with a capacity of 50 MTPA.', 'https://example.com/grasim-cement.png', 1, 1300, 50.00, 1, NOW());


INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES
('SKUSD001', 'Sharp Sand', 'A coarse sand that is commonly used for mixing concrete and mortar.', 'https://example.com/images/sharp-sand.jpg', 1, 1000, 9.99, 2, NOW()),
('SKUSD002', 'Soft Sand', 'A finer sand that is commonly used for bricklaying and plastering.', 'https://example.com/images/soft-sand.jpg', 1, 800, 12.99, 2, NOW()),
('SKUSD003', 'Pit Sand', 'A sand that is extracted from natural pits and is commonly used for construction.', 'https://example.com/images/pit-sand.jpg', 1, 1200, 7.99, 2, NOW()),
('SKUSD004', 'River Sand', 'A sand that is extracted from river beds and is commonly used for construction.', 'https://example.com/images/river-sand.jpg', 1, 1500, 6.99, 2, NOW()),
('SKUSD005', 'Beach Sand', 'A sand that is extracted from beaches and is commonly used for landscaping and recreational purposes.', 'https://example.com/images/beach-sand.jpg', 1, 500, 14.99, 2, NOW()),
('SKUSD006', 'Glass Sand', 'A sand that is made from recycled glass and is used for various construction and landscaping purposes.', 'https://example.com/images/glass-sand.jpg', 1, 100, 29.99, 2, NOW()),
('SKUSD007', 'Polymeric Sand', 'A sand that is mixed with a polymer and is commonly used for filling gaps between pavers and bricks.', 'https://example.com/images/polymeric-sand.jpg', 1, 300, 24.99, 2, NOW()),
('SKUSD008', 'Quartz Sand', 'A sand that is made from high-purity quartz and is commonly used for glass making, foundry molds, and filtration systems.', 'https://example.com/images/quartz-sand.jpg', 1, 200, 39.99, 2, NOW()),
('SKUSD009', 'Silica Sand', 'A sand that is made from silica and is commonly used for construction, glass making, and as a abrasive in sandblasting.', 'https://example.com/images/silica-sand.jpg', 1, 500, 19.99, 2, NOW()),
('SKUSD010', 'Ottawa Sand', 'A sand that is made from crushed quartz and is commonly used as a standard sand for testing concrete.', 'https://example.com/images/ottawa-sand.jpg', 1, 500, 14.99, 2, NOW()),
('SKUSD011', 'Play Sand', 'A sand that is specially treated and is commonly used in children\'s sandboxes and playgrounds.', 'https://example.com/images/play-sand.jpg', 1, 100, 24.99, 2, NOW()),
('SKUSD012', 'Polypropylene Sand', 'A sand that is mixed with polypropylene fibers and is commonly used for erosion control and landscaping.', 'https://example.com/images/polypropylene-sand.jpg', 1, 200, 19.99, 2, NOW());





CREATE TABLE IF NOT EXISTS `full-stack-ecommerce`.`job_categories` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `full-stack-ecommerce`.`job`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `full-stack-ecommerce`.`job` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `sku` VARCHAR(255) DEFAULT NULL,
  `name` VARCHAR(255) DEFAULT NULL,
  `description` VARCHAR(255) DEFAULT NULL,
  `unit_price` DECIMAL(13,2) DEFAULT NULL,
  `image_url` VARCHAR(255) DEFAULT NULL,
  `active` BIT DEFAULT 1,
  `units_in_stock` INT(11) DEFAULT NULL,
  `date_created` DATETIME(6) DEFAULT NULL,
  `last_updated` DATETIME(6) DEFAULT NULL,
  `category_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fu_category` (`category_id`),
  CONSTRAINT `fu_category` FOREIGN KEY (`category_id`) REFERENCES `job_categories` (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Categories
-- -----------------------------------------------------
INSERT INTO job_categories(category_name) VALUES ('building materials');
INSERT INTO job_categories(category_name) VALUES ('Construction equipment');


-- -----------------------------------------------------
-- materials
-- -----------------------------------------------------
INSERT INTO job (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('materials-1', 'bricks', 'for build purpose', 'assets/images/jobs/materials/bricks.jpg', 1, 100, 14.99, 1, NOW());
INSERT INTO job (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('materials-2', 'wooden-planks', 'for doors,windows', 'assets/images/jobs/materials/wooden-planks.jpg', 1, 100, 20.99, 1, NOW());
INSERT INTO job (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('materials-3', 'cement', 'for build', 'assets/images/jobs/materials/cement.jpg', 1, 100, 14.99, 1, NOW());
INSERT INTO job (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('materials-4', 'reinforced-concerete-items', 'for build pupose', 'assets/images/jobs/materials/reinforced-concerete-items.jpg', 1, 100, 13.99, 1, NOW());
INSERT INTO job (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('materials-5', 'limestone', 'for mixing purpose', 'assets/images/jobs/materials/limestone.jpg', 1, 100, 18.99, 1, NOW());



-- -----------------------------------------------------
-- equipments
-- -----------------------------------------------------
INSERT INTO job (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('equipments-1', 'several-hand-tools', 'for build purpose', 'assets/images/jobs/equipments/several-hand-tools.jpg', 1, 100, 14.99, 2, NOW());
INSERT INTO job (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('equipments-2', 'cement-cart', 'for doors,windows', 'assets/images/jobs/equipments/cement-cart.jpg', 1, 100, 20.99, 2, NOW());
INSERT INTO job (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('equipments-3', 'gloves', 'forn safety', 'assets/images/jobs/equipments/gloves.jpg', 1, 100, 14.99, 2, NOW());
INSERT INTO job (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('equipments-4', 'trowel', 'for build pupose', 'assets/images/jobs/equipments/trowel.jpg', 1, 100, 13.99, 2, NOW());
INSERT INTO job (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('equipments-5', 'cement-mixer', 'for mixing purpose', 'assets/images/jobs/equipments/cement-mixer.jpg', 1, 100, 18.99, 2, NOW());



