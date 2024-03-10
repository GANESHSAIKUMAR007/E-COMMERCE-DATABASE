
DROP TABLE ordered_products;
DROP TABLE cart_products;
DROP TABLE orderTable;
DROP TABLE userTable;
DROP TABLE Products_option;
DROP TABLE products_belong_category;
DROP TABLE products;
DROP TABLE category;
DROP TABLE optionTable;


CREATE TABLE category (
   category_id VARCHAR(20) NOT NULL PRIMARY KEY,
   category_name TEXT NOT NULL
);





INSERT INTO category (category_id, category_name) 
VALUES 
    ('4000', 'Laptops'),
    ('4100', 'Mobile_phones'),
    ('4200', 'Tablets'),
    ('4300', 'Servers'),
    ('4400', 'PC'),
    ('4500', 'Cables'),
    ('4600', 'Headphones');
    
CREATE TABLE optionTable (
   option_id VARCHAR(20) NOT NULL PRIMARY KEY,
   option_name  TEXT  NOT NULL
);

INSERT INTO optionTable (option_id, option_name) VALUES 
    ('1201', 'Macbook_Pro_13.3-inch'),
    ('1202', 'Macbook_Pro_15.4-inch'),
    ('1301', 'Macbook_Air_11.6-inch'),
    ('1302', 'Macbook_Air_13-inch'),
    ('1401', 'Iphone_X_128GB'),
    ('1402', 'Iphone_X_256GB'),
    ('1501', 'Iphone_7_64GB'),
    ('1502', 'Iphone_7_32GB'),
    ('1601', 'Iphone_8_64GB'),
    ('1602', 'Iphone_8_128GB'),
    ('1701', 'Ipad_Air_9.7-inch'),
    ('1702', 'Ipad_Air_12-inch'),
    ('1801', 'Ipad_Mini_7.9-inch'),
    ('1802', 'Ipad_Mini_10-inch'),
    ('1901', 'ESC8000_G3_-_8_G_Intel_Xeon_E5-1603_V4'),
    ('1902', 'ESC8000_G3_-_8_G_Intel_Xeon_E5-1620_v3'),
    ('2001', 'ESC8000_G4_-_8_G_Intel_Xeon_E5-1603_v3'),
    ('2002', 'ESC8000_G4_-_8_G_Intel_Xeon_E5-1620_v3'),
    ('2101', 'XPS_13_-_5080_8GB_LPDDR3_1866MHz'),
    ('2102', 'XPS_13_-_5080_16GB_LPDDR3_1866MHz'),
    ('2201', 'XPS_15-_5070_256GB_PCIe_Solid_State_Drive'),
    ('2202', 'XPS_15-_5070_500GB_PCIe_Solid_State_Drive'),
    ('2301', 'Monoprice_Ultra_Slim_Series_High_Speed_HDMI_Cable_-_4K_-_Length_-_1ft'),
    ('2302', 'Monoprice_Ultra_Slim_Series_High_Speed_HDMI_Cable_-_4K_-_Length_-_1.5ft'),
    ('2401', 'Monoprice_Ultra_Slim_Series_High_Speed_HDMI_Cable_-_4K_-_Length_-_3ft'),
    ('2402', 'Monoprice_Ultra_Slim_Series_High_Speed_HDMI_Cable_-_4K_-_Length_-_5ft'),
    ('2501', 'COWIN_E7_PRO_-_Black'),
    ('2502', 'COWIN_E7_PRO_-_Red'),
    ('2601', 'COWIN_E7_PRO_-_Pink'),
    ('2602', 'COWIN_E7_PRO_-_White');


CREATE TABLE products (
   product_id     VARCHAR(20) NOT NULL PRIMARY KEY,
   product_name   TEXT NOT NULL,
   descriptions   TEXT NOT NULL
);

INSERT INTO products (product_id, product_name, descriptions) VALUES 
    ('1200', 'Macbook Pro (2017)', 'The ultimate pro notebook. MacBook Pro features faster processors, upgraded memory, the Apple T2 chip, and a Retina display with True Tone technology.'),
    ('1300', 'Macbook Air (2015)', 'MacBook Air lasts up to an incredible 12 hours between charges. So from your morning coffee till your evening commute, you can work unplugged. When it’s time to kick back and relax, you can get up to 12 hours of iTunes movie playback.'),
    ('1400', 'Iphone X', 'The iPhone X display is so immersive the device itself disappears into the experience.'),
    ('1500', 'Iphone 7', 'Great connectivity of this device includes Bluetooth 4.2 version with A2DP.'),
    ('1600', 'Iphone 8', 'iPhone 8 introduces a glass design. The glass back enables easy wireless charging.'),
    ('1700', 'Ipad Air 4th gen', 'The iPad Air is unbelievably thin and light. And yet it is so much more powerful and capable.'),
    ('1800', 'Ipad Mini 3th gen', '3th gen Everything you love about iPad – the beautiful screen and fast.'),
    ('1900', 'ESC8000 G3', 'G3 High-density GPU server with hybrid computing power. ASUS-patented Adaptable Topology design.'),
    ('2000', 'ESC8000 G4', 'G4 High performance ASUS 2U server with hybrid-storage design and high power-efficiency.'),
    ('2100', 'XPS 13 - 5080', 'Thinner and more powerful than ever, the Dell XPS reinforces its lofty standing with an 8th Gen Intel Core processor, immaculate 4K UHD display, and super-slim build.'),
    ('2200', 'XPS 15 - 5070', 'Ultra-thin and distinctly refined, the stylish Dell Inspiron gives definitive elegance to a powerful and expansive PC experience.'),
    ('2300', 'Monoprice Ultra Slim Series High Speed HDMI Cable', 'The Monoprice Ultra Slim Active High Speed HDMI Cable series is designed with the thinnest TVs in mind.'),
    ('2400', 'Monoprice Ultra Slim Series High Speed HDMI Cable - 4K', 'Monoprice Commercial Cable supports the following HDMI features: 4K resolution at 24Hz. 3D video.'),
    ('2500', 'Avantree HT3189 Wireless Headphones', 'Avantree HT3189 Wireless Headphones for TV Watching & PC Gaming with Bluetooth.'),
    ('2600', 'COWIN E7 PRO', 'Active Noise Cancelling Headphone Bluetooth Headphones with Microphone Hi-Fi Deep Bass Wireless Headphones Over Ear 30H Playtime for Travel Work TV Computer Phone.');



CREATE TABLE userTable (
   user_id     VARCHAR(20) NOT NULL PRIMARY KEY,
   username    VARCHAR(8) NOT NULL,
   password    VARCHAR(9) NOT NULL,
   full_name   VARCHAR(30) NOT NULL,
   address     TEXT NOT NULL,
   email       VARCHAR(34) NOT NULL,
   phone       VARCHAR(20)
);

INSERT INTO userTable (user_id, username, password, full_name, address, email, phone) VALUES 
    ('100', 'anna0', 'white00', 'Anna Addison', 'San Francisco CA 96123', 'anna.addison@yahoo.com', '3841019535'),
    ('101', 'carol1', 'orange01', 'Carol Campbell', 'Gainesville FL 85321', 'carol.campbell@aol.com', '2548952651'),
    ('102', 'julia2', 'yellow02', 'Julia Jones', 'Seattle WA 32569', 'jolie.jones@msn.com', '3651469235'),
    ('103', 'irene3', 'blue03', 'Irene Everly', 'Houston TX 28562', 'irene.everly@gmail.com', '9859423698'),
    ('104', 'rachel4', 'red04', 'Rachel Rose', 'Boston MA 43625', 'rachel.rose@hotmail.com', '2945632543'),
    ('105', 'sophie5', 'green05', 'Sophie Sutton', 'Portland OR 65842', 'sophie.sutton@yahoo.com', '5169525614'),
    ('106', 'wendy6', 'purple06', 'Wendy West', 'Chicago IL 73215', 'wendy.west@gmail.com', '6645936156');


CREATE TABLE orderTable (
   order_id          VARCHAR(20) NOT NULL PRIMARY KEY,
   total_item        INT NOT NULL,
   shipping_fee      NUMERIC(7,4) NOT NULL,
   tax               NUMERIC(7,4) NOT NULL,
   total_cost        NUMERIC(6,2) NOT NULL,
   order_date        DATE NOT NULL,
   delivery_date     DATE NOT NULL,
   ship_name         TEXT NOT NULL,
   ship_address      TEXT NOT NULL,
   tracking_number   VARCHAR(10) NOT NULL,
   delivery_status   BIT NOT NULL,
   user_id           VARCHAR(20) NOT NULL,
   FOREIGN KEY (user_id) REFERENCES userTable(user_id)
);

INSERT INTO orderTable (order_id, total_item, shipping_fee, tax, total_cost, order_date, delivery_date, ship_name, ship_address, tracking_number, delivery_status, user_id) VALUES 
    ('1000', '4', '7', 0.0925, 50.02, '2018-10-17', '2018-10-20', 'Anna_Addison', 'San_Francisco_CA_96123', 'ZW60001', 1, '100'),
    ('1001', '5', '8', 0.06, 62.45, '2018-10-15', '2018-10-18', 'Carol_Campbell', 'Gainesville_FL_85321', 'AB61001', 0, '101'),
    ('1002', '7', '10', 0.087, 40.33, '2018-10-14', '2018-10-17', 'Julia_Jones', 'Seattle_WA_32569', 'CD62001', 1, '102'),
    ('1003', '9', '20', 0.0625, 70.98, '2018-10-12', '2018-10-15', 'Irene_Everly', 'Houston_TX_28562', 'KB63001', 0, '103'),
    ('1004', '6', '7', 0.0625, 30.45, '2018-10-16', '2018-10-19', 'Rachel_Rose', 'Boston_MA_43625', 'IK64001', 1, '104'),
    ('1005', '5', '8', 0.0625, 100.2, '2018-10-13', '2018-10-16', 'Sophie_Sutton', 'Portland_OR_65842', 'OP65001', 0, '105'),
    ('1006', '3', '5', 0.1025, 58.52, '2018-10-21', '2018-10-24', 'Wendy_West', 'Chicago_IL_73215', 'XH66001', 1, '106');

CREATE TABLE ordered_products (
   order_id   VARCHAR(20) NOT NULL,
   product_id VARCHAR(20) NOT NULL,
   PRIMARY KEY (order_id, product_id),
   FOREIGN KEY (order_id) REFERENCES orderTable(order_id),
   FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO ordered_products (order_id, product_id) VALUES 
    ('1000', '1200'),
    ('1000', '1300'),
    ('1001', '1400'),
    ('1001', '1500'),
    ('1002', '1600'),
    ('1002', '1700'),
    ('1003', '1800'),
    ('1003', '1900'),
    ('1004', '2000'),
    ('1004', '2100'),
    ('1004', '2200'),
    ('1005', '2300'),
    ('1005', '2400'),
    ('1006', '2400'),
    ('1006', '2500'),
    ('1006', '2600');

CREATE TABLE cart_products (
    shopping_cart_id VARCHAR(20),
    product_id VARCHAR(20),
    PRIMARY KEY (shopping_cart_id, product_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO cart_products (shopping_cart_id, product_id)
VALUES 
    ('3000', '1200'),
    ('3000', '1300'),
    ('3100', '1400'),
    ('3100', '1500'),
    ('3200', '1600'),
    ('3200', '1700'),
    ('3300', '1800'),
    ('3300', '1900'),
    ('3400', '2000'),
    ('3400', '2100'),
    ('3400', '2200'),
    ('3500', '2300'),
    ('3500', '2400'),
    ('3600', '2500'),
    ('3600', '2600');
    
    
    
CREATE TABLE products_belong_category (
   product_id   VARCHAR(20) NOT NULL,
   category_id  VARCHAR(20) NOT NULL,
   PRIMARY KEY (product_id),
   FOREIGN KEY (product_id) REFERENCES products(product_id),
   FOREIGN KEY (category_id) REFERENCES category(category_id)
);

INSERT INTO products_belong_category (product_id, category_id) VALUES 
    ('1200', '4000'),
    ('1300', '4000'),
    ('1400', '4100'),
    ('1500', '4100'),
    ('1600', '4100'),
    ('1700', '4200'),
    ('1800', '4200'),
    ('1900', '4300'),
    ('2000', '4300'),
    ('2100', '4400'),
    ('2200', '4400'),
    ('2300', '4500'),
    ('2400', '4500'),
    ('2500', '4600'),
    ('2600', '4600');




CREATE TABLE Products_option (
   product_id VARCHAR(20) NOT NULL ,
   option_id  VARCHAR(20) NOT NULL,
   quantity   INTEGER NOT NULL,
   PRIMARY KEY (product_id, option_id),
   FOREIGN KEY (product_id) REFERENCES products(product_id),
   FOREIGN KEY (option_id) REFERENCES optionTable(option_id)
);

INSERT INTO Products_option (product_id, option_id, quantity) VALUES 
    ('1200', '1201', 2),
    ('1200', '1202', 1),
    ('1300', '1301', 3),
    ('1300', '1302', 2),
    ('1400', '1401', 1),
    ('1400', '1402', 1),
    ('1500', '1501', 2),
    ('1500', '1502', 3),
    ('1600', '1601', 2),
    ('1600', '1602', 1),
    ('1700', '1701', 1),
    ('1700', '1702', 3),
    ('1800', '1801', 1),
    ('1800', '1802', 2),
    ('1900', '1901', 1),
    ('1900', '1902', 2),
    ('2000', '2001', 2),
    ('2000', '2002', 3),
    ('2100', '2101', 1),
    ('2100', '2102', 3),
    ('2200', '2201', 2),
    ('2200', '2202', 3),
    ('2300', '2301', 1),
    ('2300', '2302', 1),
    ('2400', '2401', 3),
    ('2400', '2402', 2),
    ('2500', '2501', 3),
    ('2500', '2502', 1),
    ('2600', '2601', 2),
    ('2600', '2602', 1);

SELECT * FROM userTable;
SELECT * FROM Products_option;
SELECT * FROM products_belong_category;
SELECT * FROM ordered_products;
SELECT * FROM cart_products;
SELECT * FROM category;
SELECT * FROM optionTable;
SELECT * FROM orderTable;
SELECT * FROM products;

SHOW TABLES;

-- transaction

DROP PROCEDURE IF EXISTS process_order;
DELIMITER //
CREATE PROCEDURE process_order()
BEGIN
    START TRANSACTION;
    UPDATE Products_option 
    SET quantity = quantity - 1 
    WHERE product_id = '1200' AND option_id = '1201' AND quantity >= 1;

    SELECT ROW_COUNT() INTO @affected_rows;
    IF @affected_rows = 0 THEN
        ROLLBACK;
    ELSE
        INSERT INTO ordered_products (order_id, product_id) 
        VALUES ('1007', '1200');
        COMMIT;
    END IF;
END //
DELIMITER ;
 
 -- GRANT SELECT, INSERT ON [PROJECT_DB].[userTable] TO public_user@localhost;
 
 -- Procedure to process an order while locking the quantity attribute
-- locking
DROP PROCEDURE IF EXISTS process_order_with_lock;

DELIMITER //
CREATE PROCEDURE process_order_with_lock(IN p_product_id VARCHAR(20), IN p_option_id VARCHAR(20))
BEGIN
    DECLARE available_quantity INT;
    
    START TRANSACTION ;
    LOCK TABLE Products_option WRITE;
    SELECT quantity INTO available_quantity FROM Products_option WHERE product_id = p_product_id AND option_id = p_option_id FOR UPDATE;
    IF available_quantity > 0 THEN
        UPDATE Products_option SET quantity = quantity - 1 WHERE product_id = p_product_id AND option_id = p_option_id;
        INSERT INTO ordered_products (order_id, product_id) VALUES ('1007', p_product_id);
        COMMIT;
    ELSE
        ROLLBACK;
    END IF;
    UNLOCK TABLE;
END //
DELIMITER ;

-- trigger
DROP TRIGGER IF EXISTS update_quantity_trigger;

DELIMITER //
CREATE TRIGGER update_quantity_trigger
AFTER INSERT ON ordered_products
FOR EACH ROW
BEGIN
    UPDATE Products_option
    SET quantity = quantity - 1
    WHERE product_id = NEW.product_id; 
END //
DELIMITER ;


