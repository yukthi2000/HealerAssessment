-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2023 at 05:37 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `healerz`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Admin_ID` varchar(30) NOT NULL,
  `Admin_Name` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_ID`, `Admin_Name`, `Password`) VALUES
('admin', 'admin', '123');

-- --------------------------------------------------------

--
-- Table structure for table `clubadmin`
--

CREATE TABLE `clubadmin` (
  `ClubAdmin_ID` varchar(10) NOT NULL,
  `ClubAdmin_Name` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `Doctor_ID` varchar(10) NOT NULL,
  `Doctor_Name` varchar(30) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Designation` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `PhoneNo` int(10) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `SLMC` varchar(30) NOT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `online` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`Doctor_ID`, `Doctor_Name`, `Password`, `Designation`, `Email`, `PhoneNo`, `Address`, `SLMC`, `Image`, `online`) VALUES
('D001', 'Pradi', 'sha', 'Pidi', 'Pradi11@gmail.com', 798645125, 'nuwara', 'SGHDHG', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `drug`
--

CREATE TABLE `drug` (
  `ID` int(10) NOT NULL,
  `Drug_ID` varchar(30) NOT NULL,
  `Drug_Name` varchar(30) NOT NULL,
  `Category` varchar(30) NOT NULL,
  `Drug_dosage` varchar(20) NOT NULL,
  `Descriptions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `drug`
--

INSERT INTO `drug` (`ID`, `Drug_ID`, `Drug_Name`, `Category`, `Drug_dosage`, `Descriptions`) VALUES
(3, '7548254', 'Melatonin', 'Capsules', '0.5 -5 mg', 'Melatonin capsules contain the hormone melatonin, which helps regulate sleep-wake cycles. They are commonly used to manage sleep disorders and jet lag.Melatonin should be taken under the guidance of a healthcare provider, especially in cases of chronic sleep issues.'),
(4, '3562645', 'Eye Drops', 'Drops', '1-2 ml', 'Medications like artificial tears or prescription eye drops are used to treat various eye conditions, including dry eyes, allergies, and glaucoma.Eye drops are used to relieve dryness, redness, or discomfort in the eyes. Artificial tears provide moisture, while other types may contain medications for specific eye conditions.'),
(5, '1469253', 'Insulin', 'Injections', '2-10 Units', 'Insulin injections are used to manage diabetes by regulating blood sugar levels. People with type 1 diabetes and some with type 2 diabetes need insulin injections to help their bodies use glucose for energy.'),
(6, '6414325', 'Aspirin', 'Tablet', '81-325 mg', 'Aspirin is a nonsteroidal anti-inflammatory drug (NSAID) used to relieve pain, reduce fever, and lower inflammation. It can also be used to prevent blood clots and reduce the risk of heart attack or stroke.'),
(8, '9685145', 'Fluconazole', 'Tablet', '50-200 mg', 'Fluconazole is an antifungal medication used to treat and prevent fungal infections, including those caused by Candida species.It may be prescribed for patients with compromised immune systems, such as those with HIV/AIDS or undergoing chemotherapy.'),
(9, '4695134', 'Heparin', 'Tablet', '5000-10000 unit', 'Heparin is an anticoagulant used to prevent blood clot formation and manage conditions like deep vein thrombosis.It may be administered to patients at risk of clotting, such as those undergoing surgery or confined to bed rest.'),
(11, '9658145', 'Histrelin', 'Implants', '50-75 mg', 'Histrelin is used to treat advanced prostate cancer. The implant releases histrelin over a period of time to suppress testosterone production.Implants are available in strengths of 50 mg and 75 mg and provide hormone suppression for several months.'),
(12, '2567986', 'Gabapentin', 'Capsules', '100-300 mg', ' Gabapentin is an anticonvulsant used to manage seizures and nerve pain (neuropathy) caused by various conditions.Capsules are available in strengths such as 100 mg, 300 mg, and 600 mg. Dosages for nerve pain typically start low and may increase gradually.'),
(13, '3965121', 'Cetirizine', 'Liquid ', '5-10 ml', 'Cetirizine is an antihistamine used to relieve allergy symptoms like runny nose, sneezing, and itchy eyes.Available in different concentrations (e.g., 5 mg/5 mL, 10 mg/10 mL). Dosages vary based on the child\'s age and weight. For example, a common dosage might be 2.5-5 mg once daily.'),
(14, '8548260', 'Hydrocortisone', 'Topical', '0.5- 2.5 mg', 'Hydrocortisone is a mild corticosteroid used to relieve itching, inflammation, and redness associated with skin conditions like eczema, insect bites, and allergic reactions.Available in different strengths (e.g., 0.5%, 1%, 2.5%). Apply a thin layer to the affected area 2-4 times daily or as directed by your healthcare provider.'),
(15, '1546322', 'Intramuscular', 'Injections', '1000mcg', 'An intramuscular (IM) Vitamin B12 injection is a medical procedure in which Vitamin B12 is administered directly into a muscle, typically the upper arm, thigh, or buttock. Vitamin B12, also known as cobalamin, is a water-soluble vitamin that plays a crucial role in various bodily functions, including the production of red blood cells, DNA synthesis, nerve function, and energy metabolism.'),
(43, '4518245', 'Acetaminophen', 'Suppositories', '120-650 mg', 'Acetaminophen suppositories are used for fever reduction and pain relief when oral administration is not feasible.Suppositories typically contain 120 mg to 650 mg of acetaminophen, depending on the brand and formulation.'),
(55, '7895258', 'Amoxicillin', 'Capsules', '250-500mg', 'Amoxicillin is an antibiotic that belongs to the penicillin group. It is used to treat a wide range of bacterial infections, such as respiratory tract infections, ear infections, and urinary tract infections.'),
(56, '3587649', 'Benadryl', 'Liquid', '10-15ml', 'Liquid allergy medications contain antihistamines and are used to relieve allergy symptoms like sneezing, runny nose, and itching.Follow the dosing instructions on the product label or as directed by a healthcare provider. Dosages may vary based on age and weight, so it\'s important to use the correct amount.'),
(57, '4296875', 'Nasal Drops', 'Drops', '2-3ml', 'Nasal drops are used to relieve nasal congestion, dryness, or allergies. Saline drops help moisturize the nasal passages, while decongestant drops can reduce nasal swelling.For saline drops, typically 1-2 drops in each nostril as needed. Decongestant drops should be used as directed on the product label, as they may have specific usage guidelines.'),
(58, '8975642', 'Antidepressants', 'Tablet', '300-700mg', 'Antidepressant tablets are used to treat various mood disorders, including depression and anxiety. They affect the levels of neurotransmitters in the brain. It may take several weeks for these medications to show their full effect, so it\'s important to follow the prescribed regimen.'),
(59, '7454365', 'Simvastatin', 'Tablet', '350-500mg', 'These tablets are used to lower high cholesterol levels in the blood, reducing the risk of cardiovascular disease.The dosage varies depending on the medication and the patient\'s cholesterol levels. It\'s typically taken once daily, often in the evening.'),
(60, '6984568', 'Epinephrine', 'Injections', '5-8 Units', 'EpiPen is an injectable medication containing epinephrine (adrenaline) used for emergency treatment of severe allergic reactions (anaphylaxis).The dosage is typically one injection into the thigh muscle. It is administered as soon as symptoms of an allergic reaction occur, and emergency medical help should be sought immediately afterward.'),
(61, '2256487', 'Sertraline', 'Tablet', '500-800 mg', 'Antidepressant tablets are used to treat various mood disorders, including depression and anxiety. They affect the levels of neurotransmitters in the brain.The dosage varies depending on the specific medication and the patient\'s condition. It may take several weeks for these medications to show their full effect, so it\'s important to follow the prescribed regimen.'),
(62, '8462573', 'Combination ', 'Tablet', '100-450 mg', 'Birth control pills are taken daily to prevent pregnancy. Combination pills contain both estrogen and progestin, while progestin-only pills contain only a synthetic form of progesterone.Follow the instructions provided with your specific birth control pill. It\'s crucial to take them at the same time each day to maximize their effectiveness.');

-- --------------------------------------------------------

--
-- Table structure for table `druginventory`
--

CREATE TABLE `druginventory` (
  `DrugInventory_ID` int(11) NOT NULL,
  `Drug_ID` varchar(10) NOT NULL,
  `Pharmacist _ID` varchar(10) NOT NULL,
  `StockCount` int(10) NOT NULL,
  `ExpiredDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `druginventory`
--

INSERT INTO `druginventory` (`DrugInventory_ID`, `Drug_ID`, `Pharmacist _ID`, `StockCount`, `ExpiredDate`) VALUES
(71, '7895258', '', 600, '0000-00-00'),
(73, '1469253', '', 250, '0000-00-00'),
(74, '1546322', '', 400, '0000-00-00'),
(75, '2567986', '', 780, '0000-00-00'),
(76, '3562645', '', 550, '0000-00-00'),
(77, '3965121', '', 0, '0000-00-00'),
(78, '4518245', '', 80, '0000-00-00'),
(79, '4695134', '', 50, '0000-00-00'),
(80, '6414325', '', 600, '0000-00-00'),
(81, '7548254', '', 1000, '0000-00-00'),
(82, '8548260', '', 75, '0000-00-00'),
(83, '9658145', '', 1200, '0000-00-00'),
(84, '9685145', '', 350, '0000-00-00'),
(85, '3587649', '', 950, '0000-00-00'),
(86, '4296875', '', 50, '0000-00-00'),
(87, '8975642', '', 1400, '0000-00-00'),
(88, '7454365', '', 980, '0000-00-00'),
(89, '6984568', '', 150, '0000-00-00'),
(90, '2256487', '', 1100, '0000-00-00'),
(91, '8462573', '', 820, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `Event_ID` varchar(10) NOT NULL,
  `Event_Name` varchar(20) NOT NULL,
  `Event_date` date NOT NULL,
  `ClubAdmin_ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eventapplication`
--

CREATE TABLE `eventapplication` (
  `EventApplication_ID` varchar(10) NOT NULL,
  `ClubAdmin_ID` varchar(10) NOT NULL,
  `Event_ID` varchar(10) NOT NULL,
  `Patient_ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medicalrecord`
--

CREATE TABLE `medicalrecord` (
  `MedicalRecord_ID` int(11) NOT NULL,
  `Patient_ID` varchar(10) NOT NULL,
  `Doctor_ID` varchar(10) NOT NULL,
  `DateandTime` datetime NOT NULL,
  `Patientcomplaint` text NOT NULL,
  `OnExamination` text NOT NULL,
  `Tests` text NOT NULL,
  `Confirmeddiagnosis` text NOT NULL,
  `Prescription_ID` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicalrecord`
--

INSERT INTO `medicalrecord` (`MedicalRecord_ID`, `Patient_ID`, `Doctor_ID`, `DateandTime`, `Patientcomplaint`, `OnExamination`, `Tests`, `Confirmeddiagnosis`, `Prescription_ID`) VALUES
(66, 'cst20061', 'D001', '2023-09-11 12:02:01', 'emty', 'sdfds', 'sdf', 'sdf', NULL),
(69, 'cst20061', 'D001', '2023-09-12 14:31:30', 'fun', 'test', 'one', 'two', 'cst20061_1694521890');

-- --------------------------------------------------------

--
-- Table structure for table `medicalrequest`
--

CREATE TABLE `medicalrequest` (
  `MedicalRequest_ID` int(11) NOT NULL,
  `Patient_ID` varchar(10) NOT NULL,
  `Doctor_ID` varchar(10) DEFAULT NULL,
  `ConsultationDate` datetime NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `Message` text NOT NULL,
  `State` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicalrequest`
--

INSERT INTO `medicalrequest` (`MedicalRequest_ID`, `Patient_ID`, `Doctor_ID`, `ConsultationDate`, `StartDate`, `EndDate`, `Message`, `State`) VALUES
(1, 'cst20061', NULL, '2023-09-11 12:02:01', '2023-09-12', '2023-09-12', 'testing', 'Requested'),
(3, 'cst20008', NULL, '2023-09-12 22:01:40', '2023-09-12', '2023-09-16', 'testtin2', 'Rejected'),
(4, 'cst20083', NULL, '2023-09-11 12:02:01', '2023-09-12', '2023-09-12', 'testing', 'Requested');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `Notification_ID` varchar(10) NOT NULL,
  `Patient_ID` varchar(10) NOT NULL,
  `Doctor_ID` varchar(10) NOT NULL,
  `Content` text NOT NULL,
  `Too` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `ID` int(11) NOT NULL,
  `Patient_ID` varchar(10) NOT NULL,
  `PatientName` varchar(30) NOT NULL,
  `DateOfBirth` date NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `PhoneNo` varchar(10) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `BloodGroup` varchar(10) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Profile` varchar(255) DEFAULT NULL,
  `SpecialDisease` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`ID`, `Patient_ID`, `PatientName`, `DateOfBirth`, `Gender`, `PhoneNo`, `Email`, `Address`, `BloodGroup`, `Password`, `Profile`, `SpecialDisease`) VALUES
(30, 'cst20061', 'Pradishan', '2000-08-31', 'male', 774057922, 'k.pradeeshan4@gmail.com', 'sri lanka', 'B+', 'sha', NULL, NULL),
(31, 'cst20035', 'farhath', '2023-09-06', 'Female', 760072186, 'cst20035@std.uwu.ac.lk', 'puthalam', 'AB+', '705R5A2q', NULL, NULL),
(32, 'cst20008', 'Powsihan', '2000-04-25', 'Male', 760072186, 'cst20008@std.uwu.ac.lk', '33/8 ,Rajeswari Road,Nayanmarkaddu', 'B+', 'Iac9Cwu1', NULL, NULL),
(33, 'cst20109', 'Mahthy Hasan', '1999-04-18', 'Male', 769074027, 'cst20109@std.uwu.ac.lk', 'Eravur,Batticoloa', 'B+', 'wK3Y4UzQ', NULL, NULL),
(34, 'enm20068', 'Enazir', '2000-01-18', 'Male', 785647989, 'enm20068@std.uwu.ac.lk', 'Nuwaraeliya', 'O-', 'IrIU5fbW', NULL, NULL),
(35, 'cst20083', 'Nusnan', '1999-02-12', 'Male', 767316191, 'cst20083@std.uwu.ac.lk', 'Samanthurai,Ampara', 'O+', 'BCAiork9', NULL, NULL),
(36, 'cst20046', 'Thanushika', '2000-04-25', 'Female', 769114523, 'cst20046@std.uwu.ac.lk', 'Kilinochchi', 'B-', '0wROw3gs', NULL, NULL),
(37, 'cst20020', 'Saalujan', '2000-01-20', 'Male', 769687425, 'cst20020@std.uwu.ac.lk', 'Arasadi,Nallur', 'AB+', 'xUB2lqKr', NULL, NULL),
(38, 'cst20039', 'Sainthavi', '1999-02-03', 'Female', 779865482, 'cst20039@std.uwu.ac.lk', 'Udupiddy,Jaffna', 'AB-', 'WgcjY6Dw', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pharmacist`
--

CREATE TABLE `pharmacist` (
  `Pharmacist_ID` varchar(10) NOT NULL,
  `Pharmacist_Name` varchar(30) NOT NULL,
  `Designation` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `PhoneNo` int(10) NOT NULL,
  `Address` varchar(30) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `SLMC` varchar(30) NOT NULL,
  `Image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pharmacist`
--

INSERT INTO `pharmacist` (`Pharmacist_ID`, `Pharmacist_Name`, `Designation`, `Email`, `PhoneNo`, `Address`, `Password`, `SLMC`, `Image`) VALUES
('powsi', 'Powsi', 'YDB', 'powsipowsihan07@gmail.com', 760072186, '33/8 ,Rajeswari Road,Nayanmark', '123', 'SGHDHG', '');

-- --------------------------------------------------------

--
-- Table structure for table `prescription_list`
--

CREATE TABLE `prescription_list` (
  `Prescription_list_ID` int(11) NOT NULL,
  `Prescription_ID` varchar(100) DEFAULT NULL,
  `Patient_ID` varchar(30) NOT NULL,
  `Drug_ID` varchar(30) NOT NULL,
  `Doctor_ID` varchar(30) NOT NULL,
  `Pharmacist_ID` varchar(30) DEFAULT NULL,
  `TDS` varchar(10) NOT NULL,
  `Time` varchar(50) NOT NULL,
  `Days` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prescription_list`
--

INSERT INTO `prescription_list` (`Prescription_list_ID`, `Prescription_ID`, `Patient_ID`, `Drug_ID`, `Doctor_ID`, `Pharmacist_ID`, `TDS`, `Time`, `Days`) VALUES
(24, 'cst20061_1694521890', 'cst20061', '3562645', 'D001', NULL, '1+1+1', 'Atfer Meal', 10),
(25, 'cst20061_1694521890', 'cst20061', '3965121', 'D001', NULL, '1+1+1', 'Atfer Meal', 3);

-- --------------------------------------------------------

--
-- Table structure for table `prescription_record`
--

CREATE TABLE `prescription_record` (
  `Prescription_ID` varchar(100) NOT NULL,
  `Patient_ID` varchar(30) NOT NULL,
  `Doctor_ID` varchar(30) NOT NULL,
  `Pharmacist_ID` varchar(30) DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `TimeP` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prescription_record`
--

INSERT INTO `prescription_record` (`Prescription_ID`, `Patient_ID`, `Doctor_ID`, `Pharmacist_ID`, `status`, `TimeP`) VALUES
('cst20061_1694521890', 'cst20061', 'D001', NULL, 'Waiting', '2023-09-12 14:31:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_ID`);

--
-- Indexes for table `clubadmin`
--
ALTER TABLE `clubadmin`
  ADD PRIMARY KEY (`ClubAdmin_ID`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`Doctor_ID`);

--
-- Indexes for table `drug`
--
ALTER TABLE `drug`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Drug_ID` (`Drug_ID`);

--
-- Indexes for table `druginventory`
--
ALTER TABLE `druginventory`
  ADD PRIMARY KEY (`DrugInventory_ID`),
  ADD UNIQUE KEY `Drug_ID_2` (`Drug_ID`),
  ADD KEY `Drug_ID` (`Drug_ID`),
  ADD KEY `Pharmacist _ID` (`Pharmacist _ID`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`Event_ID`),
  ADD KEY `ClubAdmin_ID` (`ClubAdmin_ID`);

--
-- Indexes for table `eventapplication`
--
ALTER TABLE `eventapplication`
  ADD PRIMARY KEY (`EventApplication_ID`),
  ADD KEY `ClubAdmin_ID` (`ClubAdmin_ID`),
  ADD KEY `Event_ID` (`Event_ID`),
  ADD KEY `Patient_ID` (`Patient_ID`);

--
-- Indexes for table `medicalrecord`
--
ALTER TABLE `medicalrecord`
  ADD PRIMARY KEY (`MedicalRecord_ID`),
  ADD KEY `Doctor_ID` (`Doctor_ID`),
  ADD KEY `Patient_ID` (`Patient_ID`),
  ADD KEY `Prescription_ID` (`Prescription_ID`);

--
-- Indexes for table `medicalrequest`
--
ALTER TABLE `medicalrequest`
  ADD PRIMARY KEY (`MedicalRequest_ID`),
  ADD KEY `Doctor_ID` (`Doctor_ID`),
  ADD KEY `Patient_ID` (`Patient_ID`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`Notification_ID`),
  ADD KEY `Doctor_ID` (`Doctor_ID`),
  ADD KEY `Patient_ID` (`Patient_ID`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Patient_ID` (`Patient_ID`);

--
-- Indexes for table `pharmacist`
--
ALTER TABLE `pharmacist`
  ADD PRIMARY KEY (`Pharmacist_ID`);

--
-- Indexes for table `prescription_list`
--
ALTER TABLE `prescription_list`
  ADD PRIMARY KEY (`Prescription_list_ID`),
  ADD KEY `Prescription_ID` (`Prescription_ID`),
  ADD KEY `Doctor_ID` (`Doctor_ID`),
  ADD KEY `Patient_ID` (`Patient_ID`),
  ADD KEY `Drug_ID` (`Drug_ID`),
  ADD KEY `Pharmacist_ID` (`Pharmacist_ID`);

--
-- Indexes for table `prescription_record`
--
ALTER TABLE `prescription_record`
  ADD PRIMARY KEY (`Prescription_ID`),
  ADD KEY `Patient_ID` (`Patient_ID`),
  ADD KEY `Doctor_ID` (`Doctor_ID`),
  ADD KEY `Pharmacist_ID` (`Pharmacist_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `drug`
--
ALTER TABLE `drug`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `druginventory`
--
ALTER TABLE `druginventory`
  MODIFY `DrugInventory_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `medicalrecord`
--
ALTER TABLE `medicalrecord`
  MODIFY `MedicalRecord_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `medicalrequest`
--
ALTER TABLE `medicalrequest`
  MODIFY `MedicalRequest_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `prescription_list`
--
ALTER TABLE `prescription_list`
  MODIFY `Prescription_list_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `druginventory`
--
ALTER TABLE `druginventory`
  ADD CONSTRAINT `druginventory_ibfk_1` FOREIGN KEY (`Drug_ID`) REFERENCES `drug` (`Drug_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `event_ibfk_1` FOREIGN KEY (`ClubAdmin_ID`) REFERENCES `clubadmin` (`ClubAdmin_ID`);

--
-- Constraints for table `eventapplication`
--
ALTER TABLE `eventapplication`
  ADD CONSTRAINT `eventapplication_ibfk_1` FOREIGN KEY (`ClubAdmin_ID`) REFERENCES `clubadmin` (`ClubAdmin_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `eventapplication_ibfk_2` FOREIGN KEY (`Event_ID`) REFERENCES `event` (`Event_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `eventapplication_ibfk_3` FOREIGN KEY (`Patient_ID`) REFERENCES `patient` (`Patient_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `medicalrecord`
--
ALTER TABLE `medicalrecord`
  ADD CONSTRAINT `medicalrecord_ibfk_1` FOREIGN KEY (`Doctor_ID`) REFERENCES `doctor` (`Doctor_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `medicalrecord_ibfk_4` FOREIGN KEY (`Patient_ID`) REFERENCES `patient` (`Patient_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `medicalrecord_ibfk_5` FOREIGN KEY (`Prescription_ID`) REFERENCES `prescription_record` (`Prescription_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `medicalrequest`
--
ALTER TABLE `medicalrequest`
  ADD CONSTRAINT `medicalrequest_ibfk_1` FOREIGN KEY (`Doctor_ID`) REFERENCES `doctor` (`Doctor_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `medicalrequest_ibfk_2` FOREIGN KEY (`Patient_ID`) REFERENCES `patient` (`Patient_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `notification_ibfk_1` FOREIGN KEY (`Doctor_ID`) REFERENCES `doctor` (`Doctor_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notification_ibfk_2` FOREIGN KEY (`Patient_ID`) REFERENCES `patient` (`Patient_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `prescription_list`
--
ALTER TABLE `prescription_list`
  ADD CONSTRAINT `prescription_list_ibfk_2` FOREIGN KEY (`Doctor_ID`) REFERENCES `doctor` (`Doctor_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prescription_list_ibfk_5` FOREIGN KEY (`Pharmacist_ID`) REFERENCES `pharmacist` (`Pharmacist_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prescription_list_ibfk_6` FOREIGN KEY (`Drug_ID`) REFERENCES `drug` (`Drug_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prescription_list_ibfk_7` FOREIGN KEY (`Patient_ID`) REFERENCES `patient` (`Patient_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prescription_list_ibfk_8` FOREIGN KEY (`Prescription_ID`) REFERENCES `prescription_record` (`Prescription_ID`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `prescription_record`
--
ALTER TABLE `prescription_record`
  ADD CONSTRAINT `prescription_record_ibfk_2` FOREIGN KEY (`Doctor_ID`) REFERENCES `doctor` (`Doctor_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prescription_record_ibfk_3` FOREIGN KEY (`Pharmacist_ID`) REFERENCES `pharmacist` (`Pharmacist_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prescription_record_ibfk_4` FOREIGN KEY (`Patient_ID`) REFERENCES `patient` (`Patient_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
