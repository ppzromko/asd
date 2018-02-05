DROP DATABASE IF EXISTS avto_bazar;
CREATE DATABASE avto_bazar;



DROP TABLE IF EXISTS car;
CREATE TABLE car(

	car_id int NOT NULL auto_increment primary key,
    sell_price decimal(9,2) NOT NULL ,
    make_id int ,
    car_seller_id int 


);

DROP TABLE IF EXISTS car_make;
CREATE TABLE car_make(

	make_id int NOT NULL auto_increment primary key,
	make_title VARCHAR(40) UNIQUE,
	manufacture_year YEAR ,
	model_id int 

);


DROP TABLE IF EXISTS car_model;
CREATE TABLE car_model(

	model_id int NOT NULL auto_increment primary key,
    model_title VARCHAR(40) ,
    engine_capacity_id int ,
    fuel_type_id int ,
    color_id int 
    
);

DROP TABLE IF EXISTS car_color;
CREATE TABLE car_color (
    color_id INT NOT NULL auto_increment primary key,
    color VARCHAR(30)  
);


DROP TABLE IF EXISTS car_engine_capacity;
CREATE TABLE car_engine_capacity(

	engine_capacity_id int NOT NULL auto_increment primary key,
    engine_capacity decimal(5,2) 
    
);


DROP TABLE IF EXISTS car_fuel_type;
CREATE TABLE car_fuel_type(

	fuel_type_id int NOT NULL auto_increment primary key,
    fuel_type VARCHAR(20)
    
);

DROP TABLE IF EXISTS car_seller;
CREATE TABLE car_seller(

	 car_seller_id int NOT NULL auto_increment primary key,
     first_name VARCHAR(40),
     last_name VARCHAR(40) ,
     age int,
     phone_number decimal (15,2) 
	
);	




ALTER TABLE car ADD FOREIGN KEY (make_id) REFERENCES car_make(make_id);
ALTER TABLE car ADD FOREIGN KEY (car_seller_id) REFERENCES car_seller(car_seller_id);
ALTER TABLE car_make ADD FOREIGN KEY (model_id) REFERENCES car_model(model_id);
ALTER TABLE car_model ADD FOREIGN KEY (engine_capacity_id) REFERENCES car_engine_capacity(engine_capacity_id);
ALTER TABLE car_model ADD FOREIGN KEY (fuel_type_id) REFERENCES car_fuel_type(fuel_type_id);
ALTER TABLE car_model ADD FOREIGN KEY (color_id) REFERENCES car_color(color_id);

INSERT INTO car(sell_price)
VALUES 
(25000.00),(45000.00),(23000.00),(24000.00),(14000.00),(55000.00),(65000.00),(26000.00),(27000.00),(85000.00),(29000.00),(99000.00),(23444.12),(32233.33),(12332.33);

INSERT INTO car_make(make_title,manufacture_year)
VALUES 
("nissan",1999),("dodge",2000),("alfa romeo",2005),("audi",2012),("fiat",2004),("wolksvagen",2014),("ferrari",2016),("bmw",2010),("lomborghini",2011),("volvo",2018),("opel",2012),("reno",2018),("peugeot",1999),("mersedes-benz",2013),("honda",1986);

INSERT INTO car_model(model_title)
VALUES 
("qashqai"),("chellenger"),("brera"),("a6"),("scudo"),("golf"),("laferrari"),("524"),("adventodor"),("xc90"),("vectra"),("duster"),("expert"),("vito"),("civic");

INSERT INTO car_color(color)
VALUES 
("blue"),("red"),("white"),("yellow"),("black"),("brown"),("purple"),("grey"),("green"),("dark green"),("dark blue"),("gold"),("silver"),("dark red"),("orange");

INSERT INTO car_engine_capacity(engine_capacity)
VALUES 
(150),(500),(200),(250),(120),(150),(600),(180),(550),(200),(112),(150),(120),(150),(150);

INSERT INTO car_fuel_type(fuel_type)
VALUES 
("petrol"),("petrol"),("petrol"),("petrol"),("DIESEL"),("petrol"),("petrol"),("petrol"),("petrol"),("petrol"),("DIESEL"),("petrol"),("DIESEL"),("DIESEL"),("petrol");

INSERT INTO car_seller(first_name,last_name,age,phone_number)
VALUES 
("leon" , "ononoki" ,17   ,0985464566  ),

("smidt" , "vasiv" ,23   ,09851234566  ),

("vitalka" , "petriv" ,33   ,0985464566  ),

("sabene" , "kostiv" ,43   ,0985464266  ),

("iluha" , "ulanov" ,43   ,0985443566  ),

("ura" , "orexov" ,54   ,0985564566  ),

("romko" , " uzumaki" ,31   ,0985454566  ),

("bal" , "sato" ,32   ,0985466566  ),

("vasa" , "suzuki" ,41   ,0985764566  ),

("peta" , "watanabe" ,51   ,0985466566  ),

("vova" , "yamamoto" ,23   ,0985467566  ),

("kira" , "yoshida" ,43   ,0985487566  ),

("kirya" , "saito" ,53   ,0985984566  ),

("kirito" , "inoto" ,42   ,0988994566  ),

("ararragit" , "kishimoto" ,32   ,0985489966  )

















