-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2021 at 02:02 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lab4`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `course_description` text NOT NULL,
  `department_id` int(11) NOT NULL,
  `professor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `course_description`, `department_id`, `professor_id`) VALUES
(1, 'Math IV', 'Algebraic expressions; linear, absolute value equations and inequalities; lines; systems of linear equations; integral exponents; polynomials; factoring.', 1, 1),
(2, 'Chemistry', 'The course introduces to the modern atomic models including a description of chemical bonding in molecules, metals, and ionic solids. The principles underlying the periodic table of elements are derived. A further section is devoted to the stoichiometry of chemical reactions. Finally, an introduction to electrochemistry chemistry and chemical kinetics are given.', 2, 2),
(3, 'Data Structures', 'The course focuses on basic and essential topics in data structures, including array-based lists, linked lists, skiplists, hash tables, recursion, binary trees, scapegoat trees, red–black trees, heaps, sorting algorithms, graphs, and binary trie.', 3, 3),
(4, 'Database Systems', 'It provides a study of data models, data description languages, and query facilities including relational algebra and SQL, data normalization, transactions and their properties, physical data organization and indexing, security issues and object databases.', 3, 3),
(5, 'Signals & Systems', 'Signals and Systems is an introduction to analog and digital signal processing, a topic that forms an integral part of engineering systems in many diverse areas, including seismic data processing, communications, speech processing, image processing, defense electronics, consumer electronics, and consumer products.', 1, 4),
(6, 'Digital Signal Processing', 'The course covers theory and methods for digital signal processing including basic principles governing the analysis and design of discrete-time systems as signal processing devices. Review of discrete-time linear, time-invariant systems, Fourier transforms and z-transforms. Topics include sampling, impulse response, frequency response, finite and infinite impulse response systems, linear phase systems, digital filter design and implementation, discrete-time Fourier transforms, discrete Fourier transform, and the fast Fourier transform algorithms.', 1, 4),
(7, 'Circuits I', 'Includes DC circuits, Ohm\'s and Kirchhoff\'s Laws, DC resistive networks, Thevenin and Norton equivalent circuits, node voltage, and mesh current analysis methods.', 1, 5),
(8, 'Circuits II', 'Advanced topics including three-phase systems, magnetically-coupled systems, resonance and second-order systems, Laplace transform circuit analysis, Fourier series for periodic waveforms and applications to electric circuits, ideal filters, system modeling and two-port networks.', 1, 5),
(9, 'Electronics', 'In this course students interpret the symbols, basic operation and correct circuit configurations for logic gates, resistors, N and P type semiconductors, diodes and transistors. Topics covered in this course include testing of components, soldering and de-soldering procedures, troubleshooting and common applications for digital and semiconductor components.', 3, 5),
(10, 'Discrete Mathematics', 'This course enables students to strengthen and increase the understanding of discrete mathematics with special emphasis on computer science applications. Topics include sets, number systems, the nature of proof, formal logic, functions and relations, combinatorics, recurrence relations, trees and Boolean algebra.', 3, 6),
(11, 'Pattern Recognition', 'Pattern recognition is the scientific discipline whose goal is the classification of objects into a number of categories or classes. These objects can be images (2D signals) or signal waveforms (1D signals) or any type of measurements that need to be classified. The objects are referred using the generic term patterns. Pattern recognition is an integral part of machine intelligence systems.', 3, 6),
(12, 'Artificial Intelligence ', 'The topics may include: AI methodology and fundamentals; intelligent agents; search algorithms; game playing; supervised and unsupervised learning; decision tree learning; neural networks; nearest neighbour methods; dimensionality reduction; clustering; kernel machines; support vector machines; uncertainty and probability theory; probabilistic reasoning in AI; Bayesian networks; statistical learning; fuzzy logic.', 3, 6),
(13, 'Computer Vision', 'This course provides an introduction to computer vision including fundamentals of image formation, camera imaging geometry, feature detection and matching, stereo, motion estimation and tracking, image classification and scene understanding.', 3, 6),
(14, 'Natural Language Processing', 'We will learn how to create systems that can understand and produce language, for applications such as information extraction, machine translation, automatic summarization, question-answering, and interactive dialogue systems. The course will cover linguistic (knowledge-based) and statistical approaches to language processing in the three major subfields of NLP.', 3, 6),
(15, 'Control Systems', 'Control Systems is the study of the analysis and regulation of the output behaviors of dynamical systems subject to input signals.', 1, 7),
(16, 'Digital Communication', 'The course focuses on the technologies underlying these systems, which constitute the field of digital communications. Topics include digital transmission and reception, signal space representations, spectral analysis of digitally modulated waveforms,\r\ndesign considerations for bandlimited channels, introductory concepts of information theory, and error correction coding.\r\n', 1, 7),
(17, 'Analog Communication', 'Provides students with all necessary requirements to analyze continuous Introduction to communication systems. Linear modulation: amplitude modulation, AM, DSB, SSB. Exponential Modulation: frequency modulation, FM, and phase modulation, PM. Multiplexing: FDM. Mixing. Superheterodyne receivers. Sampling techniques.', 1, 7),
(18, 'Math I', 'This module is designed to provide an introduction to fundamental mathematical techniques used in engineering.', 3, 8),
(19, 'Math II', 'Differentiation and integration techniques and their applications\r\n(area, volumes, work), improper integrals, approximate integration, analytic geometry, vectors, infinite series, power series, Taylor series.', 3, 8),
(20, 'Math III', 'This course is about the mathematics that is most widely used in the mechanical engineering core subjects: An introduction to linear algebra and ordinary differential equations (ODEs), including general numerical approaches to solving systems of equations. Topics covered include linear systems of equations, existence and uniqueness of solutions, Gaussian elimination.', 3, 8),
(21, 'Numerical Analysis', 'This course is an introduction to the numerical analysis. The primary objective of the course is to\r\ndevelop the basic understanding of numerical algorithms and skills to implement algorithms to\r\nsolve mathematical problems on the computer.', 3, 8),
(22, 'Physics I', 'A course in elementary physics, covers the basic concepts, principles and history of physics. Course topics will include selected topics in mechanics, heat, light, sound, electricity and magnetism, and modern physics.', 1, 9),
(23, 'Physics II', 'Physics II introduces electrical and magnetic phenomena in nature, including the concepts of electrical charges, electric and magnetic fields, the application of Gauss\' Law, electric potential, conductors and insulators, currents, basic circuits, and induction. ', 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`) VALUES
(1, 'Electrical Department'),
(2, 'Chemistry Department'),
(3, 'Computer Engineering Department');

-- --------------------------------------------------------

--
-- Table structure for table `professor`
--

CREATE TABLE `professor` (
  `professor_id` int(11) NOT NULL,
  `professor_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `professor`
--

INSERT INTO `professor` (`professor_id`, `professor_name`) VALUES
(1, 'Omar'),
(2, 'Ihab'),
(3, 'Hicham'),
(4, 'Tarras'),
(5, 'Fahhar'),
(6, 'Marwan'),
(7, 'Hassan'),
(8, 'Amr'),
(9, 'Keshk');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `FK_department` (`department_id`),
  ADD KEY `FK_professor` (`professor_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`professor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `professor`
--
ALTER TABLE `professor`
  MODIFY `professor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `FK_department` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_professor` FOREIGN KEY (`professor_id`) REFERENCES `professor` (`professor_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
