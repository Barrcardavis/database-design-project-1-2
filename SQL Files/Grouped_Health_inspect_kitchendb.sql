-- ==========================================================
-- Week 7 Quarterly Database Project Part 2 - Cod
-- Based on the Quarterly Database Project Part 1 from week 3
-- Using Health_Inspection_KitchenDB database for my section of code to be added to main code
-- New database name may be selected with all 4 members of team join code.ALTER
-- Code testing will involve queries after code passes normalization Forms 1 thru 3.
-- ==========================================================





CREATE SCHEMA Grouped_Health_Inspect_KitchenDB;

USE Grouped_Health_Inspect_KitchenDB;

-- Creating Table for Kitchen Personell.
-- Random Data delivered from Mockaroo data creation site
-- https://www.mockaroo.com/
-- this website can make sql data file and deliver directly to MySQL for insertion into table data fields

CREATE TABLE KitchenPersonnel (
    StaffID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    StaffRole VARCHAR(50),
    Certification VARCHAR(100),
    Phone VARCHAR(20),
    Email VARCHAR(100),
    HireDate DATE,
    StationAssigned VARCHAR(50)
  );

insert into KitchenPersonnel (StaffID, FirstName, LastName, StaffRole, Certification, Phone, Email, HireDate, StationAssigned) values (1, 'Lorianne', 'Upham', 'Bartender', 'Food Handler Permit', '900-345-7077', 'lupham0@php.net', '2024-12-31', 'Dish Pit');
insert into KitchenPersonnel (StaffID, FirstName, LastName, StaffRole, Certification, Phone, Email, HireDate, StationAssigned) values (2, 'Jemima', 'Bandt', 'Garde Manger', 'ServSafe Manager', '389-659-3745', 'jbandt1@live.com', '2025-03-25', 'Pastry');
insert into KitchenPersonnel (StaffID, FirstName, LastName, StaffRole, Certification, Phone, Email, HireDate, StationAssigned) values (3, 'Ethyl', 'Hancill', 'Pantry Cook', 'OSHA Kitchen Safety', '699-789-1607', 'ehancill2@xinhuanet.com', '2025-01-02', 'Cold Prep');
insert into KitchenPersonnel (StaffID, FirstName, LastName, StaffRole, Certification, Phone, Email, HireDate, StationAssigned) values (4, 'Lenard', 'Anthoney', 'Fryer Operator', 'Allergen Safety', '866-274-3597', 'lanthoney3@gizmodo.com', '2024-11-23', 'Garde Manger');
insert into KitchenPersonnel (StaffID, FirstName, LastName, StaffRole, Certification, Phone, Email, HireDate, StationAssigned) values (5, 'Vin', 'Grayne', 'Pantry Cook', 'ServSafe Manager', '895-597-4223', 'vgrayne4@clickbank.net', '2024-12-31', 'Saucier');
insert into KitchenPersonnel (StaffID, FirstName, LastName, StaffRole, Certification, Phone, Email, HireDate, StationAssigned) values (6, 'Liana', 'Golborn', 'Expediter', 'ServSafe Manager', '911-570-8741', 'lgolborn5@cam.ac.uk', '2025-04-16', 'Hot Line');
insert into KitchenPersonnel (StaffID, FirstName, LastName, StaffRole, Certification, Phone, Email, HireDate, StationAssigned) values (7, 'Minnie', 'Enriquez', 'Server', 'OSHA Kitchen Safety', '911-299-7890', 'menriquez6@globo.com', '2025-04-27', 'Expediting');
insert into KitchenPersonnel (StaffID, FirstName, LastName, StaffRole, Certification, Phone, Email, HireDate, StationAssigned) values (8, 'Vickie', 'Joll', 'Host', 'Allergen Safety', '604-185-2857', 'vjoll7@spiegel.de', '2025-08-31', 'Fryer');
insert into KitchenPersonnel (StaffID, FirstName, LastName, StaffRole, Certification, Phone, Email, HireDate, StationAssigned) values (9, 'Homer', 'Navarijo', 'Garde Manger', 'ServSafe Manager', '611-569-2640', 'hnavarijo8@microsoft.com', '2024-11-29', 'Grill');
insert into KitchenPersonnel (StaffID, FirstName, LastName, StaffRole, Certification, Phone, Email, HireDate, StationAssigned) values (10, 'Chris', 'Bruckenthal', 'Saucier', 'Allergen Safety', '381-986-2135', 'cbruckenthal9@uol.com.br', '2025-06-24', 'Fryer');
insert into KitchenPersonnel (StaffID, FirstName, LastName, StaffRole, Certification, Phone, Email, HireDate, StationAssigned) values (11, 'Wald', 'Cheyenne', 'Server', 'Food Handler Permit', '511-890-7185', 'wcheyennea@accuweather.com', '2025-09-03', 'Dish Pit');
insert into KitchenPersonnel (StaffID, FirstName, LastName, StaffRole, Certification, Phone, Email, HireDate, StationAssigned) values (12, 'Ammamaria', 'Winthrop', 'Saucier', 'Allergen Safety', '314-898-8752', 'awinthropb@cloudflare.com', '2025-02-07', 'Pantry');
insert into KitchenPersonnel (StaffID, FirstName, LastName, StaffRole, Certification, Phone, Email, HireDate, StationAssigned) values (13, 'Oliviero', 'Nornable', 'Server', 'ServSafe Manager', '794-341-4630', 'onornablec@sourceforge.net', '2024-12-16', 'Saucier');
insert into KitchenPersonnel (StaffID, FirstName, LastName, StaffRole, Certification, Phone, Email, HireDate, StationAssigned) values (14, 'Rahal', 'Corbert', 'Pantry Cook', 'Knife Safety Training', '287-499-4247', 'rcorbertd@netvibes.com', '2025-04-19', 'Dish Pit');
insert into KitchenPersonnel (StaffID, FirstName, LastName, StaffRole, Certification, Phone, Email, HireDate, StationAssigned) values (15, 'Dannye', 'Goadbie', 'Pastry Chef', 'HACCP Level 1', '130-784-2811', 'dgoadbiee@issuu.com', '2025-03-26', 'Saucier');
insert into KitchenPersonnel (StaffID, FirstName, LastName, StaffRole, Certification, Phone, Email, HireDate, StationAssigned) values (16, 'Tanny', 'Humbatch', 'Barback', 'Allergen Safety', '356-346-4549', 'thumbatchf@jimdo.com', '2025-03-22', 'Pantry');
insert into KitchenPersonnel (StaffID, FirstName, LastName, StaffRole, Certification, Phone, Email, HireDate, StationAssigned) values (17, 'Tomi', 'Benezeit', 'Bartender', 'HACCP Level 1', '253-274-0408', 'tbenezeitg@addtoany.com', '2025-10-23', 'Saucier');
insert into KitchenPersonnel (StaffID, FirstName, LastName, StaffRole, Certification, Phone, Email, HireDate, StationAssigned) values (18, 'Carlotta', 'Von Brook', 'Garde Manger', 'ServSafe Manager', '192-398-7952', 'cvonbrookh@cbsnews.com', '2025-09-18', 'Grill');
insert into KitchenPersonnel (StaffID, FirstName, LastName, StaffRole, Certification, Phone, Email, HireDate, StationAssigned) values (19, 'Ambur', 'Andries', 'Pastry Chef', 'HACCP Level 1', '595-356-6119', 'aandriesi@samsung.com', '2025-03-17', 'Dish Pit');
insert into KitchenPersonnel (StaffID, FirstName, LastName, StaffRole, Certification, Phone, Email, HireDate, StationAssigned) values (20, 'Addy', 'Defond', 'Bartender', 'Allergen Safety', '113-628-1916', 'adefondj@youtu.be', '2025-02-27', 'Hot Line');
insert into KitchenPersonnel (StaffID, FirstName, LastName, StaffRole, Certification, Phone, Email, HireDate, StationAssigned) values (21, 'Goraud', 'Olohan', 'Sous Chef', 'Allergen Safety', '716-879-0506', 'golohank@booking.com', '2025-01-20', 'Grill');
insert into KitchenPersonnel (StaffID, FirstName, LastName, StaffRole, Certification, Phone, Email, HireDate, StationAssigned) values (22, 'Irwin', 'Abrahmovici', 'Line Cook', 'ServSafe Manager', '324-663-2199', 'iabrahmovicil@discuz.net', '2025-05-23', 'Expediting');
insert into KitchenPersonnel (StaffID, FirstName, LastName, StaffRole, Certification, Phone, Email, HireDate, StationAssigned) values (23, 'Emmy', 'Schapero', 'Prep Cook', 'Allergen Safety', '141-579-4362', 'eschaperom@google.pl', '2024-12-19', 'Grill');
insert into KitchenPersonnel (StaffID, FirstName, LastName, StaffRole, Certification, Phone, Email, HireDate, StationAssigned) values (24, 'Marti', 'Fance', 'Sous Chef', 'ServSafe Manager', '206-512-5299', 'mfancen@netvibes.com', '2025-04-12', 'Pastry');
insert into KitchenPersonnel (StaffID, FirstName, LastName, StaffRole, Certification, Phone, Email, HireDate, StationAssigned) values (25, 'Bjorn', 'Lemmanbie', 'Pastry Chef', 'Knife Safety Training', '822-100-7576', 'blemmanbieo@netlog.com', '2024-12-06', 'Fryer');
insert into KitchenPersonnel (StaffID, FirstName, LastName, StaffRole, Certification, Phone, Email, HireDate, StationAssigned) values (26, 'Sosanna', 'Covotto', 'Saucier', 'OSHA Kitchen Safety', '623-947-7412', 'scovottop@facebook.com', '2025-02-08', 'Pantry');
insert into KitchenPersonnel (StaffID, FirstName, LastName, StaffRole, Certification, Phone, Email, HireDate, StationAssigned) values (27, 'Raynard', 'Gullivan', 'Fryer Operator', 'Food Handler Permit', '661-385-2462', 'rgullivanq@independent.co.uk', '2025-06-07', 'Cold Prep');
insert into KitchenPersonnel (StaffID, FirstName, LastName, StaffRole, Certification, Phone, Email, HireDate, StationAssigned) values (28, 'Nathanial', 'Silverwood', 'Sous Chef', 'Food Handler Permit', '949-415-5481', 'nsilverwoodr@meetup.com', '2025-04-25', 'Hot Line');
insert into KitchenPersonnel (StaffID, FirstName, LastName, StaffRole, Certification, Phone, Email, HireDate, StationAssigned) values (29, 'Drud', 'Castellone', 'Saucier', 'Food Handler Permit', '289-564-5028', 'dcastellones@vk.com', '2024-11-18', 'Pantry');
insert into KitchenPersonnel (StaffID, FirstName, LastName, StaffRole, Certification, Phone, Email, HireDate, StationAssigned) values (30, 'Jobi', 'Abadam', 'Expediter', 'HACCP Level 1', '611-578-9922', 'jabadamt@goo.gl', '2025-04-16', 'Pastry');


# Mockaroo random data selects failed to add executive chef to list so manually changed last data entry.

UPDATE KitchenPersonnel
SET StaffRole = 'Executive Chef',
    Certification = 'ServSafe Manager Certification',
    StationAssigned = 'Expediting'
WHERE StaffID = 30;

# First sub personnel table

CREATE TABLE PersonnelCompetencies (
    CompetencyID INT AUTO_INCREMENT PRIMARY KEY,
    StaffID INT NOT NULL,
    CompetencyName VARCHAR(100) NOT NULL, -- Skill or Certification name
    IsCertified BOOLEAN DEFAULT FALSE,
    IssuedDate DATE,                      -- Nullable if not certified
    ExpiryDate DATE,                      -- Nullable if not certified
    IssuingAuthority VARCHAR(100),       -- Nullable if not certified
    FOREIGN KEY (StaffID) REFERENCES KitchenPersonnel(StaffID)
);

insert into PersonnelCompetencies (CompetencyID, StaffID, CompetencyName, IsCertified, IssuedDate, ExpiryDate, IssuingAuthority) values (1, 2, 'Saute', true, '2020-04-03', '2026-06-02', 'OSHA');
insert into PersonnelCompetencies (CompetencyID, StaffID, CompetencyName, IsCertified, IssuedDate, ExpiryDate, IssuingAuthority) values (2, 30, 'OSHA Kitchen Safety', true, '2020-12-04', '2026-11-15', 'State Health Dept');
insert into PersonnelCompetencies (CompetencyID, StaffID, CompetencyName, IsCertified, IssuedDate, ExpiryDate, IssuingAuthority) values (3, 27, 'OSHA Kitchen Safety', true, '2023-04-22', '2026-07-20', 'ServSafe');
insert into PersonnelCompetencies (CompetencyID, StaffID, CompetencyName, IsCertified, IssuedDate, ExpiryDate, IssuingAuthority) values (4, 13, 'Pastry', false, '2025-05-07', '2026-08-20', 'OSHA');
insert into PersonnelCompetencies (CompetencyID, StaffID, CompetencyName, IsCertified, IssuedDate, ExpiryDate, IssuingAuthority) values (5, 20, 'Pastry', false, '2025-06-29', '2026-07-11', 'Internal Training');
insert into PersonnelCompetencies (CompetencyID, StaffID, CompetencyName, IsCertified, IssuedDate, ExpiryDate, IssuingAuthority) values (6, 25, 'Saute', false, '2022-07-30', '2026-03-09', 'ServSafe');
insert into PersonnelCompetencies (CompetencyID, StaffID, CompetencyName, IsCertified, IssuedDate, ExpiryDate, IssuingAuthority) values (7, 17, 'Saute', false, '2024-01-20', '2024-12-01', 'OSHA');
insert into PersonnelCompetencies (CompetencyID, StaffID, CompetencyName, IsCertified, IssuedDate, ExpiryDate, IssuingAuthority) values (8, 12, 'Food Handler Permit', true, '2021-01-12', '2025-12-27', 'State Health Dept');
insert into PersonnelCompetencies (CompetencyID, StaffID, CompetencyName, IsCertified, IssuedDate, ExpiryDate, IssuingAuthority) values (9, 27, 'Saute', true, '2022-06-21', '2025-02-16', 'State Health Dept');
insert into PersonnelCompetencies (CompetencyID, StaffID, CompetencyName, IsCertified, IssuedDate, ExpiryDate, IssuingAuthority) values (10, 14, 'OSHA Kitchen Safety', false, '2024-08-06', '2026-07-12', 'OSHA');
insert into PersonnelCompetencies (CompetencyID, StaffID, CompetencyName, IsCertified, IssuedDate, ExpiryDate, IssuingAuthority) values (11, 5, 'Pastry', true, '2020-08-12', '2026-01-13', 'Internal Training');
insert into PersonnelCompetencies (CompetencyID, StaffID, CompetencyName, IsCertified, IssuedDate, ExpiryDate, IssuingAuthority) values (12, 5, 'Pastry', false, '2022-03-26', '2025-11-28', 'Internal Training');
insert into PersonnelCompetencies (CompetencyID, StaffID, CompetencyName, IsCertified, IssuedDate, ExpiryDate, IssuingAuthority) values (13, 21, 'Pastry', true, '2022-06-09', '2026-01-10', 'State Health Dept');
insert into PersonnelCompetencies (CompetencyID, StaffID, CompetencyName, IsCertified, IssuedDate, ExpiryDate, IssuingAuthority) values (14, 22, 'Pastry', true, '2020-09-08', '2025-11-13', 'OSHA');
insert into PersonnelCompetencies (CompetencyID, StaffID, CompetencyName, IsCertified, IssuedDate, ExpiryDate, IssuingAuthority) values (15, 2, 'OSHA Kitchen Safety', false, '2025-07-14', '2024-11-23', 'State Health Dept');
insert into PersonnelCompetencies (CompetencyID, StaffID, CompetencyName, IsCertified, IssuedDate, ExpiryDate, IssuingAuthority) values (16, 20, 'Knife Safety', true, '2021-03-05', '2025-09-16', 'State Health Dept');
insert into PersonnelCompetencies (CompetencyID, StaffID, CompetencyName, IsCertified, IssuedDate, ExpiryDate, IssuingAuthority) values (17, 14, 'Pastry', false, '2025-07-28', '2025-12-10', 'Internal Training');
insert into PersonnelCompetencies (CompetencyID, StaffID, CompetencyName, IsCertified, IssuedDate, ExpiryDate, IssuingAuthority) values (18, 30, 'Pastry', true, '2020-06-07', '2026-12-11', 'State Health Dept');
insert into PersonnelCompetencies (CompetencyID, StaffID, CompetencyName, IsCertified, IssuedDate, ExpiryDate, IssuingAuthority) values (19, 23, 'Food Handler Permit', false, '2024-07-22', '2024-11-08', 'Internal Training');
insert into PersonnelCompetencies (CompetencyID, StaffID, CompetencyName, IsCertified, IssuedDate, ExpiryDate, IssuingAuthority) values (20, 6, 'OSHA Kitchen Safety', true, '2022-01-15', '2025-07-15', 'OSHA');
insert into PersonnelCompetencies (CompetencyID, StaffID, CompetencyName, IsCertified, IssuedDate, ExpiryDate, IssuingAuthority) values (21, 5, 'Saute', false, '2020-01-10', '2025-08-21', 'State Health Dept');
insert into PersonnelCompetencies (CompetencyID, StaffID, CompetencyName, IsCertified, IssuedDate, ExpiryDate, IssuingAuthority) values (22, 30, 'Pastry', false, '2020-06-05', '2025-11-08', 'Internal Training');
insert into PersonnelCompetencies (CompetencyID, StaffID, CompetencyName, IsCertified, IssuedDate, ExpiryDate, IssuingAuthority) values (23, 1, 'Saute', true, '2024-06-08', '2026-01-08', 'ServSafe');
insert into PersonnelCompetencies (CompetencyID, StaffID, CompetencyName, IsCertified, IssuedDate, ExpiryDate, IssuingAuthority) values (24, 22, 'OSHA Kitchen Safety', false, '2025-09-09', '2026-03-21', 'ServSafe');
insert into PersonnelCompetencies (CompetencyID, StaffID, CompetencyName, IsCertified, IssuedDate, ExpiryDate, IssuingAuthority) values (25, 18, 'Pastry', false, '2021-05-08', '2026-05-02', 'State Health Dept');
insert into PersonnelCompetencies (CompetencyID, StaffID, CompetencyName, IsCertified, IssuedDate, ExpiryDate, IssuingAuthority) values (26, 24, 'OSHA Kitchen Safety', true, '2021-10-24', '2025-02-20', 'ServSafe');
insert into PersonnelCompetencies (CompetencyID, StaffID, CompetencyName, IsCertified, IssuedDate, ExpiryDate, IssuingAuthority) values (27, 2, 'OSHA Kitchen Safety', false, '2024-03-06', '2026-04-17', 'OSHA');
insert into PersonnelCompetencies (CompetencyID, StaffID, CompetencyName, IsCertified, IssuedDate, ExpiryDate, IssuingAuthority) values (28, 11, 'Pastry', true, '2023-08-17', '2025-04-11', 'ServSafe');
insert into PersonnelCompetencies (CompetencyID, StaffID, CompetencyName, IsCertified, IssuedDate, ExpiryDate, IssuingAuthority) values (29, 17, 'Knife Safety', true, '2021-07-02', '2024-10-30', 'Internal Training');
insert into PersonnelCompetencies (CompetencyID, StaffID, CompetencyName, IsCertified, IssuedDate, ExpiryDate, IssuingAuthority) values (30, 6, 'Pastry', true, '2021-12-20', '2026-11-20', 'ServSafe');

# Second Sub personnel table

CREATE TABLE PersonnelSanitationLogs (
    LogID INT AUTO_INCREMENT PRIMARY KEY,
    StaffID INT NOT NULL,
    AreaCleaned VARCHAR(100),
    CleaningDate DATE,
    CleaningTime TIME,
    Notes TEXT,
    FOREIGN KEY (StaffID) REFERENCES KitchenPersonnel(StaffID)
);

insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (1, 11, 'Dry Storage', '2025-11-23', '0:35:27', 'Spot cleaned only');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (2, 5, 'Dish Pit', '2025-11-01', '14:24:42', 'No visible debris');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (3, 6, 'Dish Pit', '2026-03-01', '18:15:57', 'Spot cleaned only');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (4, 8, 'Saute Station', '2026-01-29', '22:45:15', 'Degreased thoroughly');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (5, 12, 'Dish Pit', '2026-06-07', '8:06:59', 'Logged in sanitation binder');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (6, 17, 'Walk-In Fridge', '2026-01-29', '9:52:27', 'Degreased thoroughly');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (7, 23, 'Dish Pit', '2025-10-10', '6:08:30', 'Logged in sanitation binder');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (8, 28, 'Dish Pit', '2026-03-16', '6:35:46', 'Degreased thoroughly');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (9, 20, 'Saute Station', '2025-08-17', '2:16:37', 'Used bleach solution');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (10, 15, 'Grill Station', '2026-04-03', '22:36:20', 'No visible debris');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (11, 10, 'Pantry', '2026-02-02', '3:10:20', 'No visible debris');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (12, 29, 'Walk-In Fridge', '2026-03-05', '9:38:51', 'Used bleach solution');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (13, 13, 'Dish Pit', '2025-09-13', '16:51:05', 'No visible debris');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (14, 3, 'Prep Counter', '2025-08-27', '1:27:13', 'Spot cleaned only');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (15, 18, 'Dish Pit', '2025-03-10', '19:43:17', 'Logged in sanitation binder');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (16, 25, 'Saute Station', '2025-01-05', '9:58:36', 'Used bleach solution');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (17, 26, 'Prep Counter', '2025-04-05', '15:01:20', 'Wiped down with sanitizer');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (18, 12, 'Dry Storage', '2025-09-08', '18:57:31', 'Logged in sanitation binder');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (19, 27, 'Grill Station', '2024-11-14', '9:16:44', 'Wiped down with sanitizer');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (20, 7, 'Walk-In Fridge', '2025-02-20', '19:50:09', 'Used bleach solution');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (21, 1, 'Walk-In Fridge', '2026-04-12', '4:32:08', 'Spot cleaned only');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (22, 17, 'Walk-In Fridge', '2026-06-21', '15:54:57', 'Degreased thoroughly');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (23, 25, 'Walk-In Fridge', '2025-05-31', '6:30:57', 'Wiped down with sanitizer');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (24, 22, 'Dish Pit', '2025-09-16', '10:42:41', 'Logged in sanitation binder');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (25, 7, 'Dish Pit', '2025-03-01', '0:20:04', 'No visible debris');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (26, 7, 'Walk-In Fridge', '2025-06-06', '1:34:53', 'Spot cleaned only');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (27, 28, 'Dish Pit', '2025-08-02', '1:18:56', 'Degreased thoroughly');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (28, 16, 'Dish Pit', '2025-12-25', '2:12:33', 'Wiped down with sanitizer');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (29, 20, 'Dish Pit', '2026-06-27', '18:03:19', 'Spot cleaned only');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (30, 4, 'Walk-In Fridge', '2025-06-15', '7:12:11', 'Used bleach solution');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (31, 26, 'Dish Pit', '2025-04-18', '5:20:47', 'No visible debris');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (32, 3, 'Grill Station', '2025-11-03', '13:08:16', 'Logged in sanitation binder');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (33, 29, 'Pantry', '2025-03-10', '23:47:50', 'Logged in sanitation binder');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (34, 6, 'Dish Pit', '2025-11-26', '16:47:46', 'Logged in sanitation binder');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (35, 17, 'Walk-In Fridge', '2026-03-03', '1:48:03', 'Degreased thoroughly');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (36, 26, 'Dish Pit', '2025-01-25', '8:51:19', 'Degreased thoroughly');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (37, 19, 'Dish Pit', '2026-05-18', '3:51:32', 'Spot cleaned only');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (38, 24, 'Walk-In Fridge', '2025-06-10', '2:57:04', 'No visible debris');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (39, 14, 'Dish Pit', '2026-06-22', '13:57:11', 'Logged in sanitation binder');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (40, 13, 'Grill Station', '2026-03-19', '2:29:57', 'No visible debris');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (41, 24, 'Dry Storage', '2026-03-21', '9:05:00', 'Spot cleaned only');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (42, 18, 'Grill Station', '2025-04-18', '9:48:22', 'No visible debris');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (43, 17, 'Saute Station', '2026-01-01', '5:18:16', 'Used bleach solution');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (44, 18, 'Walk-In Fridge', '2025-08-02', '0:37:44', 'Used bleach solution');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (45, 5, 'Dish Pit', '2025-05-26', '1:05:49', 'Wiped down with sanitizer');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (46, 29, 'Pantry', '2025-03-16', '21:55:37', 'Wiped down with sanitizer');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (47, 7, 'Dry Storage', '2025-05-16', '6:32:49', 'Wiped down with sanitizer');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (48, 15, 'Walk-In Fridge', '2026-04-29', '22:17:08', 'Spot cleaned only');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (49, 23, 'Saute Station', '2026-03-16', '14:28:47', 'Wiped down with sanitizer');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (50, 24, 'Dish Pit', '2026-06-16', '8:21:23', 'Degreased thoroughly');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (51, 7, 'Walk-In Fridge', '2026-01-21', '5:52:40', 'Degreased thoroughly');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (52, 15, 'Prep Counter', '2025-10-28', '0:31:28', 'Used bleach solution');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (53, 1, 'Saute Station', '2026-04-08', '13:00:40', 'Degreased thoroughly');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (54, 14, 'Dry Storage', '2025-03-19', '2:10:57', 'Degreased thoroughly');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (55, 30, 'Grill Station', '2025-01-04', '17:23:16', 'Spot cleaned only');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (56, 28, 'Walk-In Fridge', '2025-08-12', '8:35:24', 'Spot cleaned only');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (57, 23, 'Walk-In Fridge', '2026-05-17', '14:03:03', 'Degreased thoroughly');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (58, 22, 'Saute Station', '2025-10-18', '17:02:45', 'Degreased thoroughly');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (59, 28, 'Walk-In Fridge', '2025-03-20', '19:40:56', 'No visible debris');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (60, 23, 'Dry Storage', '2025-02-09', '14:55:42', 'Logged in sanitation binder');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (61, 13, 'Dry Storage', '2025-11-10', '2:24:49', 'Logged in sanitation binder');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (62, 23, 'Dish Pit', '2026-05-10', '10:33:56', 'Used bleach solution');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (63, 29, 'Dry Storage', '2025-10-29', '11:05:50', 'Wiped down with sanitizer');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (64, 25, 'Saute Station', '2026-04-24', '15:36:21', 'Spot cleaned only');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (65, 29, 'Grill Station', '2026-06-11', '7:51:51', 'Spot cleaned only');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (66, 29, 'Dry Storage', '2025-04-04', '16:12:30', 'Spot cleaned only');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (67, 29, 'Dish Pit', '2025-02-03', '2:50:20', 'Spot cleaned only');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (68, 9, 'Dish Pit', '2025-02-01', '7:10:35', 'Logged in sanitation binder');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (69, 12, 'Saute Station', '2025-05-02', '20:24:02', 'No visible debris');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (70, 29, 'Dish Pit', '2026-03-16', '17:10:59', 'Used bleach solution');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (71, 8, 'Dish Pit', '2025-09-02', '12:18:19', 'Logged in sanitation binder');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (72, 3, 'Saute Station', '2026-05-25', '11:51:33', 'Spot cleaned only');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (73, 15, 'Dish Pit', '2025-04-10', '23:33:46', 'Logged in sanitation binder');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (74, 23, 'Pantry', '2025-02-25', '8:47:07', 'Wiped down with sanitizer');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (75, 14, 'Prep Counter', '2025-09-27', '11:47:11', 'Used bleach solution');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (76, 7, 'Saute Station', '2025-01-12', '22:36:42', 'No visible debris');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (77, 26, 'Walk-In Fridge', '2025-04-21', '19:24:54', 'No visible debris');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (78, 22, 'Prep Counter', '2024-12-01', '8:50:58', 'Wiped down with sanitizer');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (79, 3, 'Dry Storage', '2026-04-17', '4:59:07', 'Degreased thoroughly');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (80, 18, 'Dish Pit', '2026-04-25', '0:01:58', 'Logged in sanitation binder');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (81, 27, 'Dry Storage', '2025-03-21', '23:05:41', 'Wiped down with sanitizer');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (82, 29, 'Pantry', '2026-02-23', '17:02:01', 'Wiped down with sanitizer');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (83, 29, 'Walk-In Fridge', '2025-01-21', '5:19:09', 'Wiped down with sanitizer');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (84, 12, 'Grill Station', '2026-03-30', '20:33:40', 'Logged in sanitation binder');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (85, 18, 'Saute Station', '2026-01-22', '13:09:29', 'Degreased thoroughly');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (86, 14, 'Saute Station', '2025-08-13', '10:45:41', 'No visible debris');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (87, 20, 'Dry Storage', '2025-05-15', '3:14:58', 'Spot cleaned only');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (88, 2, 'Saute Station', '2025-10-13', '21:44:05', 'Wiped down with sanitizer');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (89, 30, 'Walk-In Fridge', '2025-04-09', '4:20:53', 'No visible debris');
insert into PersonnelSanitationLogs (LogID, StaffID, AreaCleaned, CleaningDate, CleaningTime, Notes) values (90, 21, 'Saute Station', '2025-06-20', '14:10:24', 'Spot cleaned only');

# third personnel sub table

CREATE TABLE PersonnelViolations (
    ViolationID INT AUTO_INCREMENT PRIMARY KEY,
    StaffID INT NOT NULL,
    ViolationType VARCHAR(100),
    SeverityLevel ENUM('Low', 'Moderate', 'High'),
    Description_Violation_Details TEXT,
    ViolationDate DATE NOT NULL,
    CorrectiveActionTaken BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (StaffID) REFERENCES KitchenPersonnel(StaffID)
);

insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (1, 20, 'Unsafe Knife Use', 'Low', 'Observed handling raw meat without gloves', '2024-12-11', true);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (2, 29, 'Dress Code Violation', 'High', 'creating a slip hazard.', '2023-03-18', true);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (3, 27, 'Late Arrival', 'Low', 'Failed to wash hands after handling raw poultry', '2024-05-11', true);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (4, 27, 'Improper Food Handling', 'Low', 'Failed to wash hands after handling raw poultry', '2023-01-25', true);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (5, 8, 'Unsafe Knife Use', 'Low', 'creating a slip hazard.', '2024-04-16', false);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (6, 9, 'Unsafe Knife Use', 'Low', 'observed during lunch prep. Left mop bucket unattended in high-traffic area', '2023-02-05', true);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (7, 15, 'Missed Sanitation Log', 'High', 'Staff failed to log sanitation duties', '2023-03-21', true);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (8, 4, 'Unsafe Knife Use', 'High', 'Observed handling raw meat without gloves', '2025-07-06', true);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (9, 20, 'Unsafe Knife Use', 'High', 'Staff failed to log sanitation duties', '2025-11-04', false);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (10, 14, 'Unsafe Knife Use', 'Low', 'Observed handling raw meat without gloves', '2024-04-20', false);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (11, 30, 'Late Arrival', 'Moderate', 'observed during lunch prep. Left mop bucket unattended in high-traffic area', '2023-07-01', true);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (12, 14, 'Unsafe Knife Use', 'High', 'Observed handling raw meat without gloves', '2024-08-12', false);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (13, 29, 'Improper Food Handling', 'Moderate', 'Failed to wash hands after handling raw poultry', '2026-09-10', true);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (14, 26, 'Missed Sanitation Log', 'Moderate', 'Staff failed to log sanitation duties', '2024-11-01', false);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (15, 30, 'Improper Food Handling', 'Moderate', 'Failed to wash hands after handling raw poultry', '2026-02-16', false);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (16, 18, 'Dress Code Violation', 'High', 'Staff failed to log sanitation duties', '2025-08-06', false);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (17, 26, 'Missed Sanitation Log', 'Low', 'creating a slip hazard.', '2026-03-14', true);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (18, 21, 'Improper Food Handling', 'Moderate', 'Observed handling raw meat without gloves', '2023-04-24', true);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (19, 4, 'Improper Food Handling', 'Moderate', 'creating a slip hazard.', '2023-06-24', true);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (20, 20, 'Late Arrival', 'High', 'Staff failed to log sanitation duties', '2026-04-02', false);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (21, 19, 'Unsafe Knife Use', 'Moderate', 'Failed to wash hands after handling raw poultry', '2023-12-13', false);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (22, 10, 'Unsafe Knife Use', 'High', 'Observed handling raw meat without gloves', '2023-09-01', true);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (23, 19, 'Late Arrival', 'High', 'Failed to wash hands after handling raw poultry', '2025-11-13', false);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (24, 5, 'Missed Sanitation Log', 'Low', 'Failed to wash hands after handling raw poultry', '2026-07-08', false);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (25, 7, 'Late Arrival', 'Low', 'Observed handling raw meat without gloves', '2025-01-13', true);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (26, 10, 'Unsafe Knife Use', 'Low', 'observed during lunch prep. Left mop bucket unattended in high-traffic area', '2024-02-07', false);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (27, 2, 'Dress Code Violation', 'High', 'Failed to wash hands after handling raw poultry', '2026-08-21', false);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (28, 3, 'Missed Sanitation Log', 'Moderate', 'Observed handling raw meat without gloves', '2024-04-14', false);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (29, 23, 'Missed Sanitation Log', 'Moderate', 'Staff failed to log sanitation duties', '2025-12-21', true);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (30, 14, 'Late Arrival', 'Low', 'Staff failed to log sanitation duties', '2026-07-12', false);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (31, 26, 'Late Arrival', 'Moderate', 'creating a slip hazard.', '2025-07-11', true);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (32, 28, 'Dress Code Violation', 'Moderate', 'Failed to wash hands after handling raw poultry', '2026-08-23', false);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (33, 16, 'Unsafe Knife Use', 'Moderate', 'creating a slip hazard.', '2026-12-16', false);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (34, 12, 'Dress Code Violation', 'High', 'Observed handling raw meat without gloves', '2024-02-14', false);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (35, 24, 'Unsafe Knife Use', 'Low', 'observed during lunch prep. Left mop bucket unattended in high-traffic area', '2025-04-17', false);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (36, 6, 'Unsafe Knife Use', 'Low', 'Observed handling raw meat without gloves', '2025-06-27', true);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (37, 1, 'Improper Food Handling', 'High', 'Observed handling raw meat without gloves', '2025-06-03', false);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (38, 15, 'Missed Sanitation Log', 'Moderate', 'observed during lunch prep. Left mop bucket unattended in high-traffic area', '2023-07-22', false);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (39, 28, 'Dress Code Violation', 'Low', 'Staff failed to log sanitation duties', '2025-12-12', false);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (40, 18, 'Improper Food Handling', 'Low', 'observed during lunch prep. Left mop bucket unattended in high-traffic area', '2026-11-01', true);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (41, 16, 'Improper Food Handling', 'Moderate', 'observed during lunch prep. Left mop bucket unattended in high-traffic area', '2024-05-03', true);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (42, 10, 'Improper Food Handling', 'Moderate', 'observed during lunch prep. Left mop bucket unattended in high-traffic area', '2026-08-29', true);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (43, 11, 'Dress Code Violation', 'Moderate', 'Observed handling raw meat without gloves', '2025-09-13', false);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (44, 1, 'Unsafe Knife Use', 'Low', 'observed during lunch prep. Left mop bucket unattended in high-traffic area', '2023-10-10', false);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (45, 19, 'Improper Food Handling', 'Moderate', 'Observed handling raw meat without gloves', '2023-08-15', true);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (46, 14, 'Unsafe Knife Use', 'Moderate', 'observed during lunch prep. Left mop bucket unattended in high-traffic area', '2025-10-24', false);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (47, 27, 'Late Arrival', 'High', 'Failed to wash hands after handling raw poultry', '2024-02-25', false);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (48, 29, 'Late Arrival', 'Low', 'creating a slip hazard.', '2024-03-22', false);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (49, 19, 'Unsafe Knife Use', 'High', 'observed during lunch prep. Left mop bucket unattended in high-traffic area', '2025-03-09', false);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (50, 29, 'Late Arrival', 'Moderate', 'Staff failed to log sanitation duties', '2024-04-25', true);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (51, 8, 'Missed Sanitation Log', 'Moderate', 'creating a slip hazard.', '2024-01-18', false);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (52, 23, 'Missed Sanitation Log', 'High', 'observed during lunch prep. Left mop bucket unattended in high-traffic area', '2026-09-07', true);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (53, 16, 'Late Arrival', 'Low', 'observed during lunch prep. Left mop bucket unattended in high-traffic area', '2025-04-22', true);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (54, 23, 'Dress Code Violation', 'Moderate', 'creating a slip hazard.', '2026-05-12', false);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (55, 11, 'Improper Food Handling', 'Low', 'Failed to wash hands after handling raw poultry', '2026-04-30', true);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (56, 22, 'Late Arrival', 'High', 'Observed handling raw meat without gloves', '2026-08-05', true);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (57, 24, 'Unsafe Knife Use', 'High', 'Staff failed to log sanitation duties', '2026-11-19', true);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (58, 29, 'Improper Food Handling', 'Moderate', 'Staff failed to log sanitation duties', '2026-04-19', true);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (59, 3, 'Missed Sanitation Log', 'High', 'Observed handling raw meat without gloves', '2024-05-06', false);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (60, 7, 'Dress Code Violation', 'High', 'Staff failed to log sanitation duties', '2024-05-14', false);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (61, 23, 'Missed Sanitation Log', 'High', 'Staff failed to log sanitation duties', '2023-06-25', true);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (62, 27, 'Unsafe Knife Use', 'High', 'observed during lunch prep. Left mop bucket unattended in high-traffic area', '2023-12-16', false);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (63, 4, 'Late Arrival', 'Low', 'Staff failed to log sanitation duties', '2023-12-11', true);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (64, 1, 'Unsafe Knife Use', 'High', 'Observed handling raw meat without gloves', '2025-04-29', true);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (65, 21, 'Missed Sanitation Log', 'Moderate', 'observed during lunch prep. Left mop bucket unattended in high-traffic area', '2025-01-04', true);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (66, 12, 'Improper Food Handling', 'Low', 'creating a slip hazard.', '2026-05-25', false);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (67, 21, 'Improper Food Handling', 'High', 'Staff failed to log sanitation duties', '2025-07-02', false);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (68, 15, 'Improper Food Handling', 'Low', 'Observed handling raw meat without gloves', '2025-07-11', false);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (69, 20, 'Unsafe Knife Use', 'Low', 'creating a slip hazard.', '2025-07-28', false);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (70, 19, 'Missed Sanitation Log', 'Moderate', 'Failed to wash hands after handling raw poultry', '2023-03-08', false);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (71, 2, 'Dress Code Violation', 'Moderate', 'Observed handling raw meat without gloves', '2024-11-19', false);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (72, 18, 'Dress Code Violation', 'Moderate', 'creating a slip hazard.', '2026-06-21', true);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (73, 8, 'Missed Sanitation Log', 'Low', 'observed during lunch prep. Left mop bucket unattended in high-traffic area', '2023-03-01', true);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (74, 19, 'Late Arrival', 'Moderate', 'creating a slip hazard.', '2025-06-09', false);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (75, 4, 'Dress Code Violation', 'Low', 'Staff failed to log sanitation duties', '2023-09-29', true);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (76, 10, 'Late Arrival', 'Low', 'Observed handling raw meat without gloves', '2024-07-30', true);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (77, 29, 'Dress Code Violation', 'Low', 'Observed handling raw meat without gloves', '2024-10-18', true);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (78, 4, 'Unsafe Knife Use', 'Low', 'Failed to wash hands after handling raw poultry', '2024-05-11', true);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (79, 11, 'Dress Code Violation', 'Moderate', 'Observed handling raw meat without gloves', '2023-09-01', true);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (80, 17, 'Late Arrival', 'Moderate', 'observed during lunch prep. Left mop bucket unattended in high-traffic area', '2026-09-12', true);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (81, 27, 'Dress Code Violation', 'High', 'creating a slip hazard.', '2026-12-20', false);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (82, 1, 'Late Arrival', 'High', 'creating a slip hazard.', '2024-11-16', false);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (83, 22, 'Unsafe Knife Use', 'Moderate', 'creating a slip hazard.', '2024-09-27', false);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (84, 3, 'Dress Code Violation', 'Moderate', 'creating a slip hazard.', '2023-10-09', false);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (85, 11, 'Dress Code Violation', 'High', 'Staff failed to log sanitation duties', '2025-02-18', false);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (86, 29, 'Dress Code Violation', 'Moderate', 'Observed handling raw meat without gloves', '2026-07-24', true);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (87, 8, 'Improper Food Handling', 'Low', 'observed during lunch prep. Left mop bucket unattended in high-traffic area', '2023-08-12', true);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (88, 9, 'Dress Code Violation', 'High', 'Staff failed to log sanitation duties', '2025-06-02', true);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (89, 18, 'Unsafe Knife Use', 'High', 'Staff failed to log sanitation duties', '2026-05-19', false);
insert into PersonnelViolations (ViolationID, StaffID, ViolationType, SeverityLevel, Description_Violation_Details, ViolationDate, CorrectiveActionTaken) values (90, 16, 'Dress Code Violation', 'Low', 'Staff failed to log sanitation duties', '2025-01-09', true);


# Consumables Table code Completed by Evalyn. Check constraints added to Consumable_quantity & Consumable_calories
# expanded Consumable_allergen to VARCHAR (50) for flexibility.

CREATE TABLE Consumables (
	Consumable_id INT AUTO_INCREMENT PRIMARY KEY,
	Consumable_name VARCHAR(50),
	Consumable_expiration_date DATE,
	Consumable_initial_date DATE, -- date when consumable arrives to restaurant
	Consumable_quantity INT CHECK (Consumable_quantity >= 0),
	Consumable_price DECIMAL(9,2),
	Consumable_calories INT CHECK (Consumable_calories >= 0),
	Consumable_allergen VARCHAR(50)
);

INSERT INTO Consumables (Consumable_id, Consumable_name, Consumable_expiration_date, Consumable_initial_date, Consumable_quantity, Consumable_price, Consumable_calories, Consumable_allergen) VALUES
(1, 'Chicken', '2025-11-10', '2025-10-31', 10, 5.99, 165, 'none'),
(2, 'Beef', '2025-11-12', '2025-10-30', 8, 6.49, 250, 'none'),
(3, 'Pork', '2025-11-08', '2025-10-29', 6, 5.29, 242, 'none'),
(4, 'Salmon', '2025-11-05', '2025-10-31', 4, 9.99, 208, 'fish'),
(5, 'Shrimp', '2025-11-06', '2025-10-30', 5, 12.49, 99, 'shellfish'),
(6, 'Bacon', '2025-11-15', '2025-10-28', 7, 4.99, 43, 'none'),
(7, 'Lobster', '2025-11-04', '2025-10-31', 3, 19.99, 89, 'shellfish'),
(8, 'Ground beef', '2025-11-09', '2025-10-30', 10, 5.79, 270, 'none'),
(9, 'Cream cheese', '2025-11-20', '2025-10-25', 6, 3.49, 99, 'dairy'),
(10, 'Mozzarella', '2025-11-18', '2025-10-27', 5, 4.29, 85, 'dairy'),
(11, 'Parmesan', '2025-12-01', '2025-10-26', 4, 6.99, 110, 'dairy'),
(12, 'Ricotta', '2025-11-22', '2025-10-28', 3, 3.99, 174, 'dairy'),
(13, 'Goat cheese', '2025-11-25', '2025-10-29', 2, 5.49, 103, 'dairy'),
(14, 'Sour cream', '2025-11-19', '2025-10-30', 4, 2.99, 60, 'dairy'),
(15, 'Butter', '2025-12-05', '2025-10-25', 6, 3.79, 102, 'dairy'),
(16, 'Milk', '2025-11-07', '2025-10-31', 8, 2.49, 150, 'dairy'),
(17, 'Heavy cream', '2025-11-10', '2025-10-30', 3, 3.99, 52, 'dairy'),
(18, 'Spinach', '2025-11-03', '2025-10-31', 5, 1.99, 23, 'none'),
(19, 'Artichoke hearts', '2025-12-10', '2025-10-30', 2, 4.59, 60, 'none'),
(20, 'Mushrooms', '2025-11-06', '2025-10-31', 6, 2.49, 22, 'none'),
(21, 'Tomatoes', '2025-11-05', '2025-10-31', 10, 1.89, 18, 'none'),
(22, 'Basil', '2025-11-15', '2025-10-30', 3, 1.29, 5, 'none'),
(23, 'Garlic', '2025-12-01', '2025-10-29', 4, 0.99, 4, 'none'),
(24, 'Onions', '2025-11-20', '2025-10-28', 7, 1.49, 40, 'none'),
(25, 'Carrots', '2025-11-10', '2025-10-31', 6, 1.29, 25, 'none'),
(26, 'Celery', '2025-11-08', '2025-10-30', 5, 1.19, 16, 'none'),
(27, 'Bell peppers', '2025-11-09', '2025-10-31', 6, 1.99, 30, 'none'),
(28, 'Asparagus', '2025-11-07', '2025-10-30', 4, 3.49, 20, 'none'),
(29, 'Zucchini', '2025-11-06', '2025-10-31', 5, 1.79, 17, 'none'),
(30, 'Potatoes', '2025-12-15', '2025-10-25', 10, 2.49, 130, 'none'),
(31, 'Lettuce', '2025-11-03', '2025-10-31', 5, 1.49, 15, 'none'),
(32, 'Cabbage', '2025-11-10', '2025-10-30', 4, 1.29, 22, 'none'),
(33, 'Ginger', '2025-12-01', '2025-10-29', 3, 2.99, 80, 'none'),
(34, 'Scallions', '2025-11-05', '2025-10-31', 6, 1.19, 32, 'none'),
(35, 'Dates', '2025-12-15', '2025-10-25', 5, 4.99, 277, 'none'),
(36, 'Apples', '2025-11-20', '2025-10-30', 8, 0.99, 95, 'none'),
(37, 'Lemons', '2025-11-25', '2025-10-29', 6, 0.89, 17, 'none'),
(38, 'Berries (mixed)', '2025-11-07', '2025-10-31', 4, 3.99, 70, 'none'),
(39, 'Vanilla beans', '2026-01-01', '2025-10-25', 2, 6.99, 12, 'none'),
(40, 'Flour', '2026-03-01', '2025-10-25', 10, 2.49, 455, 'gluten'),
(41, 'Sugar', '2026-04-01', '2025-10-25', 10, 1.99, 387, 'none'),
(42, 'Brown sugar', '2026-04-01', '2025-10-25', 8, 2.29, 400, 'none'),
(43, 'Cocoa powder', '2026-02-01', '2025-10-25', 5, 3.49, 196, 'none'),
(44, 'Coffee', '2026-05-01', '2025-10-25', 6, 4.99, 2, 'none'),
(45, 'Ladyfingers', '2025-12-01', '2025-10-25', 4, 3.99, 120, 'gluten'),
(46, 'Breadcrumbs', '2026-01-01', '2025-10-25', 5, 2.49, 110, 'gluten'),
(47, 'Panko', '2026-01-01', '2025-10-25', 5, 2.99, 118, 'gluten'),
(48, 'Lasagna noodles', '2026-03-01', '2025-10-25', 6, 3.49, 210, 'gluten'),
(49, 'Pasta', '2026-03-01', '2025-10-25', 10, 2.99, 200, 'gluten'),
(50, 'Arborio rice', '2026-04-01', '2025-10-25', 5, 4.49, 170, 'none'),
(51, 'Bread (baguette)', '2025-11-05', '2025-10-31', 4, 2.99, 250, 'gluten'),
(52, 'Spring roll wrappers', '2025-12-01', '2025-10-25', 3, 3.49, 100, 'gluten'),
(53, 'Olive oil', '2026-06-01', '2025-10-25', 2, 6.99, 119, 'none'),
(54, 'Balsamic vinegar', '2026-06-01', '2025-10-25', 2, 5.49, 14, 'none'),
(55, 'Soy sauce', '2026-05-01', '2025-10-25', 3, 3.99, 10, 'soy'),
(56, 'Red wine', '2026-12-01', '2025-10-25', 2, 9.99, 125, 'none'),
(57, 'Apple cider', '2025-12-01', '2025-10-25', 3, 4.99, 120, 'none'),
(58, 'Honey', '2026-07-01', '2025-10-25', 2, 5.99, 64, 'none'),
(59, 'Dijon mustard', '2026-01-01', '2025-10-25', 2, 3.49, 15, 'none'),
(60, 'Marsala wine', '2026-12-01', '2025-10-25', 2, 8.99, 140, 'none'),
(61, 'Truffle oil', '2026-06-01', '2025-10-25', 1, 12.99, 120, 'none'),
(62, 'Capers', '2026-01-01', '2025-10-25', 2, 3.99, 2, 'none'),
(63, 'Rosemary', '2025-12-01', '2025-10-25', 3, 1.99, 5, 'none'),
(64, 'Thyme', '2025-12-01', '2025-10-25', 3, 1.99, 5, 'none'),
(65, 'Oregano', '2025-12-01', '2025-10-25', 3, 1.99, 5, 'none'),
(66, 'Dill', '2025-12-01', '2025-10-25', 3, 1.99, 5, 'none'),
(67, 'Parsley', '2025-12-01', '2025-10-25', 3, 1.99, 5, 'none'),
(68, 'Cinnamon', '2026-01-01', '2025-10-25', 2, 2.99, 6, 'none'),
(69, 'Nutmeg', '2026-01-01', '2025-10-25', 2, 2.99, 12, 'none'),
(70, 'Salt', '2026-12-01', '2025-10-25', 5, 0.99, 0, 'none'),
(71, 'Black pepper', '2026-12-01', '2025-10-25', 5, 1.49, 0, 'none'),
(72, 'Red pepper flakes', '2026-12-01', '2025-10-25', 5, 1.49, 6, 'none'),
(73, 'Eggs', '2025-11-10', '2025-10-31', 12, 2.99, 70, 'egg'),
(74, 'Baking powder', '2026-03-01', '2025-10-25', 2, 1.99, 0, 'none'),
(75, 'Baking soda', '2026-03-01', '2025-10-25', 2, 1.49, 0, 'none'),
(76, 'Graham crackers', '2025-12-01', '2025-10-25', 4, 3.49, 130, 'gluten'),
(77, 'Powdered sugar', '2026-04-01', '2025-10-25', 5, 2.49, 400, 'none'),
(78, 'Cocoa', '2026-02-01', '2025-10-25', 4, 3.49, 196, 'none'),
(79, 'Mascarpone', '2025-11-20', '2025-10-30', 2, 4.99, 120, 'dairy'),
(80, 'Ice cream (vanilla)', '2025-11-30', '2025-10-25', 3, 5.49, 207, 'dairy'),
(81, 'Macaroni', '2026-03-01', '2025-10-25', 6, 2.99, 210, 'gluten'),
(82, 'Cheddar cheese', '2025-11-25', '2025-10-30', 5, 4.49, 113, 'dairy');

# Added auto increment and primary key to Recipe_id. changed ingredients to text. 
# Renamed Category from Catagory. Added Recipe_creation_date, Recipe_difficulty_level. 
# Added StaffID as foreign key to link to Kitchen_Personnel table. 

CREATE TABLE Recipe_Table (
  recipe_id INT AUTO_INCREMENT PRIMARY KEY,
  Recipe_name VARCHAR(83) NOT NULL,
  Ingredients TEXT,
  Category VARCHAR(20),
  Recipe_creation_date DATE,
  Recipe_difficulty_level VARCHAR(20),
  StaffID INT,
  FOREIGN KEY (StaffID) REFERENCES KitchenPersonnel(StaffID)
);

insert into Recipe_Table (Recipe_id, Recipe_name, Ingredients, Category) values (1, 'Surf and Turf Platter', 'Berries', 'Entree');
insert into Recipe_Table (Recipe_id, Recipe_name, Ingredients, Category) values (2, 'Tiramisu', 'Dates', 'Appetizer');
insert into Recipe_Table (Recipe_id, Recipe_name, Ingredients, Category) values (3, 'Bacon-Wrapped Dates', 'Heavy cream', 'Special');
insert into Recipe_Table (Recipe_id, Recipe_name, Ingredients, Category) values (4, 'Crispy Spring Rolls', 'Cheddar cheese', 'Dessert');
insert into Recipe_Table (Recipe_id, Recipe_name, Ingredients, Category) values (5, 'Herb-Roasted Chicken      Beef Bourguignon Stew      Grilled Salmon with Lemon Dill', 'Nutmeg', 'Entree');
insert into Recipe_Table (Recipe_id, Recipe_name, Ingredients, Category) values (6, 'New York Cheesecake', 'Sugar', 'Appetizer');
insert into Recipe_Table (Recipe_id, Recipe_name, Ingredients, Category) values (7, 'Mushroom Risotto', 'Ricotta', 'Special');
insert into Recipe_Table (Recipe_id, Recipe_name, Ingredients, Category) values (8, 'Mushroom Risotto', 'Ground beef', 'Dessert');
insert into Recipe_Table (Recipe_id, Recipe_name, Ingredients, Category) values (9, 'Stuffed Mushroom Caps', 'Lobster', 'Entree');
insert into Recipe_Table (Recipe_id, Recipe_name, Ingredients, Category) values (10, 'Spinach Artichoke Dip', 'Berries', 'Appetizer');
insert into Recipe_Table (Recipe_id, Recipe_name, Ingredients, Category) values (11, 'Herb-Roasted Chicken      Beef Bourguignon Stew      Grilled Salmon with Lemon Dill', 'Tomatoes', 'Special');
insert into Recipe_Table (Recipe_id, Recipe_name, Ingredients, Category) values (12, 'Tiramisu', 'Bread', 'Dessert');
insert into Recipe_Table (Recipe_id, Recipe_name, Ingredients, Category) values (13, 'Vegetable Lasagna', 'Truffle oil', 'Entree');
insert into Recipe_Table (Recipe_id, Recipe_name, Ingredients, Category) values (14, 'Shrimp Scampi Pasta', 'Oregano', 'Appetizer');
insert into Recipe_Table (Recipe_id, Recipe_name, Ingredients, Category) values (15, 'Tiramisu', 'Lettuce', 'Special');
insert into Recipe_Table (Recipe_id, Recipe_name, Ingredients, Category) values (16, 'Herb-Roasted Chicken      Beef Bourguignon Stew      Grilled Salmon with Lemon Dill', 'Apple cider', 'Dessert');
insert into Recipe_Table (Recipe_id, Recipe_name, Ingredients, Category) values (17, 'Stuffed Mushroom Caps', 'Arborio rice', 'Entree');
insert into Recipe_Table (Recipe_id, Recipe_name, Ingredients, Category) values (18, 'Surf and Turf Platter', 'Mozzarella', 'Appetizer');
insert into Recipe_Table (Recipe_id, Recipe_name, Ingredients, Category) values (19, 'Pork Tenderloin with Apple Glaze', 'Onions', 'Special');
insert into Recipe_Table (Recipe_id, Recipe_name, Ingredients, Category) values (20, 'Tiramisu', 'Butter', 'Dessert');
insert into Recipe_Table (Recipe_id, Recipe_name, Ingredients, Category) values (21, 'Stuffed Mushroom Caps', 'Arborio rice', 'Entree');
insert into Recipe_Table (Recipe_id, Recipe_name, Ingredients, Category) values (22, 'Stuffed Mushroom Caps', 'Celery', 'Appetizer');
insert into Recipe_Table (Recipe_id, Recipe_name, Ingredients, Category) values (23, 'Pork Tenderloin with Apple Glaze', 'Balsamic vinegar', 'Special');
insert into Recipe_Table (Recipe_id, Recipe_name, Ingredients, Category) values (24, 'Surf and Turf Platter', 'Sour cream', 'Dessert');
insert into Recipe_Table (Recipe_id, Recipe_name, Ingredients, Category) values (25, 'Surf and Turf Platter', 'Vanilla beans', 'Entree');
insert into Recipe_Table (Recipe_id, Recipe_name, Ingredients, Category) values (26, 'Chef''s Seasonal Special (changes weekly)', 'Cheddar cheese', 'Appetizer');
insert into Recipe_Table (Recipe_id, Recipe_name, Ingredients, Category) values (27, 'Bruschetta with Tomato Basil', 'Potatoes', 'Special');
insert into Recipe_Table (Recipe_id, Recipe_name, Ingredients, Category) values (28, 'Herb-Roasted Chicken      Beef Bourguignon Stew      Grilled Salmon with Lemon Dill', 'Graham crackers', 'Dessert');
insert into Recipe_Table (Recipe_id, Recipe_name, Ingredients, Category) values (29, 'Vegetable Lasagna', 'Bacon', 'Entree');
insert into Recipe_Table (Recipe_id, Recipe_name, Ingredients, Category) values (30, 'Apple Pie with Vanilla Ice Cream', 'Arborio rice', 'Appetizer');

UPDATE Recipe_Table SET Recipe_creation_date = '2023-10-28', Recipe_difficulty_level = 'easy', StaffID = 1 WHERE Recipe_id = 1;
UPDATE Recipe_Table SET Recipe_creation_date = '2022-03-23', Recipe_difficulty_level = 'medium', StaffID = 2 WHERE Recipe_id = 2;
UPDATE Recipe_Table SET Recipe_creation_date = '2025-05-13', Recipe_difficulty_level = 'easy', StaffID = 3 WHERE Recipe_id = 3;
UPDATE Recipe_Table SET Recipe_creation_date = '2023-11-20', Recipe_difficulty_level = 'Hard', StaffID = 4 WHERE Recipe_id = 4;
UPDATE Recipe_Table SET Recipe_creation_date = '2025-10-23', Recipe_difficulty_level = 'medium', StaffID = 5 WHERE Recipe_id = 5;
UPDATE Recipe_Table SET Recipe_creation_date = '2025-07-29', Recipe_difficulty_level = 'easy', StaffID = 6 WHERE Recipe_id = 6;
UPDATE Recipe_Table SET Recipe_creation_date = '2023-12-03', Recipe_difficulty_level = 'medium', StaffID = 7 WHERE Recipe_id = 7;
UPDATE Recipe_Table SET Recipe_creation_date = '2023-08-03', Recipe_difficulty_level = 'easy', StaffID = 8 WHERE Recipe_id = 8;
UPDATE Recipe_Table SET Recipe_creation_date = '2025-09-22', Recipe_difficulty_level = 'medium', StaffID = 9 WHERE Recipe_id = 9;
UPDATE Recipe_Table SET Recipe_creation_date = '2023-12-22', Recipe_difficulty_level = 'easy', StaffID = 10 WHERE Recipe_id = 10;
UPDATE Recipe_Table SET Recipe_creation_date = '2024-07-26', Recipe_difficulty_level = 'medium', StaffID = 11 WHERE Recipe_id = 11;
UPDATE Recipe_Table SET Recipe_creation_date = '2025-04-02', Recipe_difficulty_level = 'medium', StaffID = 12 WHERE Recipe_id = 12;
UPDATE Recipe_Table SET Recipe_creation_date = '2024-11-21', Recipe_difficulty_level = 'Hard', StaffID = 13 WHERE Recipe_id = 13;
UPDATE Recipe_Table SET Recipe_creation_date = '2023-02-22', Recipe_difficulty_level = 'Hard', StaffID = 14 WHERE Recipe_id = 14;
UPDATE Recipe_Table SET Recipe_creation_date = '2022-06-20', Recipe_difficulty_level = 'easy', StaffID = 15 WHERE Recipe_id = 15;
UPDATE Recipe_Table SET Recipe_creation_date = '2022-07-16', Recipe_difficulty_level = 'easy', StaffID = 16 WHERE Recipe_id = 16;
UPDATE Recipe_Table SET Recipe_creation_date = '2022-07-13', Recipe_difficulty_level = 'Hard', StaffID = 17 WHERE Recipe_id = 17;
UPDATE Recipe_Table SET Recipe_creation_date = '2024-05-04', Recipe_difficulty_level = 'medium', StaffID = 18 WHERE Recipe_id = 18;
UPDATE Recipe_Table SET Recipe_creation_date = '2024-08-13', Recipe_difficulty_level = 'easy', StaffID = 19 WHERE Recipe_id = 19;
UPDATE Recipe_Table SET Recipe_creation_date = '2023-06-05', Recipe_difficulty_level = 'medium', StaffID = 20 WHERE Recipe_id = 20;
UPDATE Recipe_Table SET Recipe_creation_date = '2025-09-18', Recipe_difficulty_level = 'easy', StaffID = 21 WHERE Recipe_id = 21;
UPDATE Recipe_Table SET Recipe_creation_date = '2022-04-18', Recipe_difficulty_level = 'medium', StaffID = 22 WHERE Recipe_id = 22;
UPDATE Recipe_Table SET Recipe_creation_date = '2022-09-29', Recipe_difficulty_level = 'Hard', StaffID = 23 WHERE Recipe_id = 23;
UPDATE Recipe_Table SET Recipe_creation_date = '2023-03-31', Recipe_difficulty_level = 'easy', StaffID = 24 WHERE Recipe_id = 24;
UPDATE Recipe_Table SET Recipe_creation_date = '2023-09-12', Recipe_difficulty_level = 'easy', StaffID = 25 WHERE Recipe_id = 25;
UPDATE Recipe_Table SET Recipe_creation_date = '2022-03-14', Recipe_difficulty_level = 'easy', StaffID = 26 WHERE Recipe_id = 26;
UPDATE Recipe_Table SET Recipe_creation_date = '2024-03-17', Recipe_difficulty_level = 'Hard', StaffID = 27 WHERE Recipe_id = 27;
UPDATE Recipe_Table SET Recipe_creation_date = '2023-09-11', Recipe_difficulty_level = 'Hard', StaffID = 28 WHERE Recipe_id = 28;
UPDATE Recipe_Table SET Recipe_creation_date = '2022-09-13', Recipe_difficulty_level = 'Hard', StaffID = 29 WHERE Recipe_id = 29;
UPDATE Recipe_Table SET Recipe_creation_date = '2025-01-20', Recipe_difficulty_level = 'Hard', StaffID = 30 WHERE Recipe_id = 30;


# Supplier table creation by Tijan
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
('Supplier K','Hank','49307789440','s8@gambia.com','19 Berliner Strasse','Berlin','Germany','TueFri'),
('Supplier L','Ivy','27113056577','s9@senegal.com','67 Market Way','Johannesburg','South Africa','ThuSun'),
('Supplier M','Jae','6562218009','s10@sonko.com','25 Orchard Road','Singapore City','Singapore','MonWedFri'),
('Supplier N','Karl','2138897754','s11@zurichem.com','78 Lakeview Blvd','Zurich','Switzerland','TueThu'),
('Supplier O','Lena','6127743399','s12@oslofoods.com','142 Fjord Avenue','Oslo','Norway','MonWedFri'),
('Supplier P','Mona','9724408812','s13@telavivtraders.com','56 Palm Grove','Tel Aviv','Israel','WedSat'),
('Supplier Q','Noah','3585552311','s14@helsinkitech.com','300 Baltic Road','Helsinki','Finland','MonThu'),
('Supplier R','Omar','8139924777','s15@tokyotrade.co.jp','99 Sakura Lane','Tokyo','Japan','TueFri'),
('Supplier S','Paula','39028844201','s16@milanosupply.it','210 Via Roma','Milan','Italy','WedSat'),
('Supplier T','Quinn','33142559899','s17@parismart.fr','80 Rue des Champs','Paris','France','TueThu'),
('Supplier U','Ravi','912202337118','s18@mumbaiimports.in','33 Gateway Plaza','Mumbai','India','MonWedFri'),
('Supplier V','Sara','6129987342','s19@sydneygoods.au','78 Harbor View','Sydney','Australia','WedFri'),
('Supplier W','Tariq','971509933882','s20@dubaitrade.ae','88 Creek Street','Dubai','UAE','TueFri'),
('Supplier X','Uma','351211778300','s21@lisbonsupply.pt','27 Avenida Mar','Lisbon','Portugal','MonThuSat'),
('Supplier Y','Victor','551199007231','s22@rioprod.com','64 Copacabana Blvd','Rio de Janeiro','Brazil','WedSat'),
('Supplier Z','Wendy','861081552339','s23@beijingexport.cn','22 Dragon Road','Beijing','China','ThuSun'),
('Supplier AA','Xavier','48224331001','s24@warsawtrade.pl','10 Vistula St','Warsaw','Poland','MonWedFri'),
('Supplier AB','Yara','2023349211','s25@cairofresh.eg','48 Nile View','Cairo','Egypt','TueThu'),
('Supplier AC','Zane','27613322011','s26@capetownlogistics.za','103 Table Bay Rd','Cape Town','South Africa','WedFri'),
('Supplier AD','Ava','2348094432211','s27@lagosglobal.ng','45 Marina Avenue','Lagos','Nigeria','MonWedFri'),
('Supplier AE','Ben','441209776554','s28@manchesterfoods.uk','14 Riverbend St','Manchester','UK','TueFri'),
('Supplier AF','Clara','14165544322','s29@torontosupply.ca','21 Maple Avenue','Toronto','Canada','ThuSun'),
('Supplier AG','Dylan','12125550933','s30@newyorktrade.us','500 Madison Street','New York','USA','MonWedFri');


# Junction table created to track which consumables used in which recipes
# wich suppliers provide what consumables

CREATE TABLE Recipe_Consumables_Suppliers (
  recipe_id INT,
  consumable_id INT,
  supplier_id INT,
  quantity_used DECIMAL(10,2),
  supply_price DECIMAL(10,2),
  PRIMARY KEY (recipe_id, consumable_id, supplier_id),
  FOREIGN KEY (recipe_id) REFERENCES Recipe_Table(Recipe_id),
  FOREIGN KEY (consumable_id) REFERENCES Consumables(consumable_id),
  FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id)
);
