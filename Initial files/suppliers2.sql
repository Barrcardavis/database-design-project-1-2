create database tijan;
 use tijan;



CREATE TABLE suppliers (
    supplier_id INT PRIMARY KEY AUTO_INCREMENT,
    supplier_name VARCHAR(100),
    contact_person VARCHAR(100),
    phone_number VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(255),
    city VARCHAR(50),
    country VARCHAR(50),
    delivery_days VARCHAR(50)
);

INSERT INTO suppliers (
  supplier_name, contact_person, phone_number, email, address, city, country, delivery_days
) VALUES
('Supplier A','Alice','4258881001','s1@sonko.com','120 Greenway Blvd','Seattle','USA','MonThu'),
('Supplier B','Bob','2067772323','s2@etallinding.com','57 Harbor Road','Tacoma','USA','TueFri'),
('Supplier C','Cara','3605557483','s3@tijan.com','14 Riverbend Ave','Portland','USA','WedSat'),
('Supplier D','Dan','5093339021','s4@yahoo.com','202 Milk Lane','Spokane','USA','MonWedFri'),
('Supplier E','Eve','442044552201','s5@gmail.com','45 Kings Market St','London','UK','TueThu'),
('Supplier F','Finn','3059018877','s6@something.com','89 Palm Street','Miami','USA','MonThuSat'),
('Supplier G','Gina','6134322309','s7@ottaw.com','302 Maple Grove Rd','Ottawa','Canada','WedFri'),
('Supplier H','Hank','49307789440','s8@gambia.com','19 Berliner Strasse','Berlin','Germany','TueFri'),
('Supplier I','Ivy','27113056577','s9@senegal.com','67 Market Way','Johannesburg','South Africa','ThuSun'),
('Supplier J','Jae','6562218009','s10@sonko.com','25 Orchard Road','Singapore City','Singapore','MonWedFri'),
('Supplier H','Hank','49307789440','s8@gambia.com','19 Berliner Strasse','Berlin','Germany','TueFri'),
('Supplier I','Ivy','27113056577','s9@senegal.com','67 Market Way','Johannesburg','South Africa','ThuSun'),
('Supplier J','Jae','6562218009','s10@sonko.com','25 Orchard Road','Singapore City','Singapore','MonWedFri'),
('Supplier K','Karl','2138897754','s11@zurichem.com','78 Lakeview Blvd','Zurich','Switzerland','TueThu'),
('Supplier L','Lena','6127743399','s12@oslofoods.com','142 Fjord Avenue','Oslo','Norway','MonWedFri'),
('Supplier M','Mona','9724408812','s13@telavivtraders.com','56 Palm Grove','Tel Aviv','Israel','WedSat'),
('Supplier N','Noah','3585552311','s14@helsinkitech.com','300 Baltic Road','Helsinki','Finland','MonThu'),
('Supplier O','Omar','8139924777','s15@tokyotrade.co.jp','99 Sakura Lane','Tokyo','Japan','TueFri'),
('Supplier P','Paula','39028844201','s16@milanosupply.it','210 Via Roma','Milan','Italy','WedSat'),
('Supplier Q','Quinn','33142559899','s17@parismart.fr','80 Rue des Champs','Paris','France','TueThu'),
('Supplier R','Ravi','912202337118','s18@mumbaiimports.in','33 Gateway Plaza','Mumbai','India','MonWedFri'),
('Supplier S','Sara','6129987342','s19@sydneygoods.au','78 Harbor View','Sydney','Australia','WedFri'),
('Supplier T','Tariq','971509933882','s20@dubaitrade.ae','88 Creek Street','Dubai','UAE','TueFri'),
('Supplier U','Uma','351211778300','s21@lisbonsupply.pt','27 Avenida Mar','Lisbon','Portugal','MonThuSat'),
('Supplier V','Victor','551199007231','s22@rioprod.com','64 Copacabana Blvd','Rio de Janeiro','Brazil','WedSat'),
('Supplier W','Wendy','861081552339','s23@beijingexport.cn','22 Dragon Road','Beijing','China','ThuSun'),
('Supplier X','Xavier','48224331001','s24@warsawtrade.pl','10 Vistula St','Warsaw','Poland','MonWedFri'),
('Supplier Y','Yara','2023349211','s25@cairofresh.eg','48 Nile View','Cairo','Egypt','TueThu'),
('Supplier Z','Zane','27613322011','s26@capetownlogistics.za','103 Table Bay Rd','Cape Town','South Africa','WedFri'),
('Supplier AA','Ava','2348094432211','s27@lagosglobal.ng','45 Marina Avenue','Lagos','Nigeria','MonWedFri'),
('Supplier AB','Ben','441209776554','s28@manchesterfoods.uk','14 Riverbend St','Manchester','UK','TueFri'),
('Supplier AC','Clara','14165544322','s29@torontosupply.ca','21 Maple Avenue','Toronto','Canada','ThuSun'),
('Supplier AD','Dylan','12125550933','s30@newyorktrade.us','500 Madison Street','New York','USA','MonWedFri');


select * from suppliers;

