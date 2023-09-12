-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2023 at 04:10 PM
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
  `Image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`Doctor_ID`, `Doctor_Name`, `Password`, `Designation`, `Email`, `PhoneNo`, `Address`, `SLMC`, `Image`) VALUES
('D001', 'Pradi', 'sha', 'Pidi', 'Pradi11@gmail.com', 798645125, 'nuwara', 'SGHDHG', '');

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
(4, '3562645', 'Eye Drops', 'Drops', '1-2 ml', 'Medications like artificial tears or prescription eye drops are used to treat various eye conditions, including dry eyes, allergies, and glaucoma.'),
(5, '1469253', 'Insulin', 'Injections', '2-10 Units', 'Insulin injections are used to manage diabetes by regulating blood sugar levels. People with type 1 diabetes and some with type 2 diabetes need insulin injections to help their bodies use glucose for energy.'),
(6, '6414325', 'Aspirin', 'Tablet', '81-325 mg', 'Aspirin is a nonsteroidal anti-inflammatory drug (NSAID) used to relieve pain, reduce fever, and lower inflammation. It can also be used to prevent blood clots and reduce the risk of heart attack or stroke.'),
(8, '9685145', 'Fluconazole', 'Tablet', '50-200 mg', 'Fluconazole is an antifungal medication used to treat and prevent fungal infections, including those caused by Candida species.It may be prescribed for patients with compromised immune systems, such as those with HIV/AIDS or undergoing chemotherapy.'),
(9, '4695134', 'Heparin', 'Tablet', '5000-10000 unit', 'Heparin is an anticoagulant used to prevent blood clot formation and manage conditions like deep vein thrombosis.It may be administered to patients at risk of clotting, such as those undergoing surgery or confined to bed rest.'),
(10, '0758365', 'Acetaminophen', 'Suppositories', '120-650 mg', 'Acetaminophen suppositories are used for fever reduction and pain relief when oral administration is not feasible.Suppositories typically contain 120 mg to 650 mg of acetaminophen, depending on the brand and formulation.'),
(11, '9658145', 'Histrelin', 'Implants', '50-75 mg', 'Histrelin is used to treat advanced prostate cancer. The implant releases histrelin over a period of time to suppress testosterone production.Implants are available in strengths of 50 mg and 75 mg and provide hormone suppression for several months.'),
(12, '2567986', 'Gabapentin', 'Capsules', '100-300 mg', ' Gabapentin is an anticonvulsant used to manage seizures and nerve pain (neuropathy) caused by various conditions.Capsules are available in strengths such as 100 mg, 300 mg, and 600 mg. Dosages for nerve pain typically start low and may increase gradually.'),
(13, '3965121', 'Cetirizine', 'Liquid ', '5-10 ml', 'Cetirizine is an antihistamine used to relieve allergy symptoms like runny nose, sneezing, and itchy eyes.Available in different concentrations (e.g., 5 mg/5 mL, 10 mg/10 mL). Dosages vary based on the child\'s age and weight. For example, a common dosage might be 2.5-5 mg once daily.'),
(14, '8548260', 'Hydrocortisone', 'Topical', '0.5- 2.5 mg', 'Hydrocortisone is a mild corticosteroid used to relieve itching, inflammation, and redness associated with skin conditions like eczema, insect bites, and allergic reactions.Available in different strengths (e.g., 0.5%, 1%, 2.5%). Apply a thin layer to the affected area 2-4 times daily or as directed by your healthcare provider.'),
(15, '1546322', 'Intramuscular', 'Injections', '1000mcg', 'An intramuscular (IM) Vitamin B12 injection is a medical procedure in which Vitamin B12 is administered directly into a muscle, typically the upper arm, thigh, or buttock. Vitamin B12, also known as cobalamin, is a water-soluble vitamin that plays a crucial role in various bodily functions, including the production of red blood cells, DNA synthesis, nerve function, and energy metabolism.'),
(43, '4518245', 'Acetaminophen', 'Suppositories', '120-650 mg', 'Acetaminophen suppositories are used for fever reduction and pain relief when oral administration is not feasible.Suppositories typically contain 120 mg to 650 mg of acetaminophen, depending on the brand and formulation.'),
(55, '7895258', 'Amoxicillin', 'Capsules', '250-500mg', 'Amoxicillin is an antibiotic that belongs to the penicillin group. It is used to treat a wide range of bacterial infections, such as respiratory tract infections, ear infections, and urinary tract infections.');

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
(72, '0758365', '', 2000, '0000-00-00'),
(73, '1469253', '', 250, '0000-00-00'),
(74, '1546322', '', 0, '0000-00-00'),
(75, '2567986', '', 0, '0000-00-00'),
(76, '3562645', '', 550, '0000-00-00'),
(77, '3965121', '', 0, '0000-00-00'),
(78, '4518245', '', 0, '0000-00-00'),
(79, '4695134', '', 0, '0000-00-00'),
(80, '6414325', '', 600, '0000-00-00'),
(81, '7548254', '', 1000, '0000-00-00'),
(82, '8548260', '', 0, '0000-00-00'),
(83, '9658145', '', 0, '0000-00-00'),
(84, '9685145', '', 350, '0000-00-00');

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
  `Prescription_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicalrecord`
--

INSERT INTO `medicalrecord` (`MedicalRecord_ID`, `Patient_ID`, `Doctor_ID`, `DateandTime`, `Patientcomplaint`, `OnExamination`, `Tests`, `Confirmeddiagnosis`, `Prescription_ID`) VALUES
(6, 'cst20008', 'D001', '2023-09-10 19:14:30', 'drg', 'ert', 'erg', 'ergr', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `medicalrequest`
--

CREATE TABLE `medicalrequest` (
  `MedicalRequest_ID` int(11) NOT NULL,
  `Patient_ID` varchar(10) NOT NULL,
  `Doctor_ID` varchar(10) NOT NULL,
  `ConsultationDate` date NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `Message` text NOT NULL,
  `State` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `PhoneNo` int(10) NOT NULL,
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
(24, '2343', 'cvxc', '2023-09-05', 'Male', 760072186, 'powsipowsihan07@gmail.com', '33/8 ,Rajeswari Road,Nayanmarkaddu', 'B+', 'cxvxc', NULL, NULL),
(26, '3243', 'dsf', '2023-09-04', 'Male', 760072186, 'powsipowsihan07@gmail.com', '33/8 ,Rajeswari Road,Nayanmarkaddu', 'A+', 'asd', NULL, NULL),
(27, 'cst20008', 'asd', '2023-09-05', 'Male', 0, 'asd', 'sadsa', 'A-', 'sad', NULL, NULL),
(30, 'cst20061', 'Pradishan', '2000-08-31', 'male', 774057922, 'k.pradeeshan4@gmail.com', 'sri lanka', 'B+', 'sha', NULL, NULL);

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
  `Prescription_ID` int(11) DEFAULT NULL,
  `Patient_ID` varchar(30) NOT NULL,
  `Drug_ID` varchar(30) NOT NULL,
  `Doctor_ID` varchar(30) NOT NULL,
  `Pharmacist_ID` varchar(30) DEFAULT NULL,
  `TDS` varchar(10) NOT NULL,
  `Time` varchar(50) NOT NULL,
  `Days` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prescription_record`
--

CREATE TABLE `prescription_record` (
  `Prescription_ID` int(11) NOT NULL,
  `Patient_ID` varchar(30) NOT NULL,
  `Doctor_ID` varchar(30) NOT NULL,
  `Pharmacist_ID` varchar(30) DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `TimeP` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `druginventory`
--
ALTER TABLE `druginventory`
  MODIFY `DrugInventory_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `medicalrecord`
--
ALTER TABLE `medicalrecord`
  MODIFY `MedicalRecord_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `prescription_list`
--
ALTER TABLE `prescription_list`
  MODIFY `Prescription_list_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `prescription_record`
--
ALTER TABLE `prescription_record`
  MODIFY `Prescription_ID` int(11) NOT NULL AUTO_INCREMENT;

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
  ADD CONSTRAINT `medicalrecord_ibfk_3` FOREIGN KEY (`Prescription_ID`) REFERENCES `prescription_record` (`Prescription_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `medicalrecord_ibfk_4` FOREIGN KEY (`Patient_ID`) REFERENCES `patient` (`Patient_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

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
  ADD CONSTRAINT `prescription_list_ibfk_1` FOREIGN KEY (`Prescription_ID`) REFERENCES `prescription_record` (`Prescription_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prescription_list_ibfk_2` FOREIGN KEY (`Doctor_ID`) REFERENCES `doctor` (`Doctor_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prescription_list_ibfk_5` FOREIGN KEY (`Pharmacist_ID`) REFERENCES `pharmacist` (`Pharmacist_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prescription_list_ibfk_6` FOREIGN KEY (`Drug_ID`) REFERENCES `drug` (`Drug_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prescription_list_ibfk_7` FOREIGN KEY (`Patient_ID`) REFERENCES `patient` (`Patient_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

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
