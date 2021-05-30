-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2021 at 05:31 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testbazydanych`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategorie`
--

CREATE TABLE `kategorie` (
  `id` int(11) NOT NULL,
  `nazwa` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategorie`
--

INSERT INTO `kategorie` (`id`, `nazwa`) VALUES
(1, 'Modyfikowanie tabeli'),
(2, 'Dodawanie uzytkownika'),
(3, 'Dodawanie danych'),
(4, 'Tworzenie kwerend'),
(5, 'Inne');

-- --------------------------------------------------------

--
-- Table structure for table `pytania`
--

CREATE TABLE `pytania` (
  `id` int(11) NOT NULL,
  `kategoria` int(11) NOT NULL,
  `pytanie` text NOT NULL,
  `punkty` int(11) NOT NULL,
  `odp1` text NOT NULL,
  `odp2` text NOT NULL,
  `odp3` text NOT NULL,
  `odp4` text NOT NULL,
  `odp1_dobra` tinyint(1) NOT NULL,
  `odp2_dobra` tinyint(1) NOT NULL,
  `odp3_dobra` tinyint(1) NOT NULL,
  `odp4_dobra` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pytania`
--

INSERT INTO `pytania` (`id`, `kategoria`, `pytanie`, `punkty`, `odp1`, `odp2`, `odp3`, `odp4`, `odp1_dobra`, `odp2_dobra`, `odp3_dobra`, `odp4_dobra`) VALUES
(1, 1, 'Aby stworzyć tebelę o nazwie „produkty” z kolumnami „id” oraz „nazwa” należy użyć polecenia:', 1, 'CREATE TABLE produkty (id INT, nazwa TEXT);', 'ADD TABLE produkty (INT, TEXT);', 'TABLE produkty (id; nazwa);', 'MAKE TABLE produkty (id INT, nazwa TEXT);', 1, 0, 0, 0),
(2, 1, 'Do stworzenia kolumny klucza podstawowego używa się typu danych:', 1, 'INT', 'TEXT', 'VARCHAR', 'NUMBER', 1, 0, 0, 0),
(3, 1, 'Do czego służy polecenie SELECT:', 2, 'do wybrania konkretnych pól', 'do wyświetlania wybranych danych', 'do zaznaczania pól i ich usunięcia', 'nie istnieje takie polecenie', 1, 0, 0, 0),
(4, 1, 'Ile maksymalnie może istnieć tabel w jednej bazie danych:', 1, 'może ich być nieskończenie wiele', '1024', 'około 1.2 mln', 'dokładnie 10 mln', 1, 0, 0, 0),
(5, 2, 'Aby dodać użytkownika o nazwie „admin” z hasłem „12345” należy użyć polecenia:', 2, 'CREATE USER \"admin\" IDENTIFIED BY \"12345\";', 'MAKE USER \"admin\" PASSWORD 12345;', 'USER CREATE \"admin\" NEW PASSWORD ‘12345’;', 'konto można stworzyć tylko w panelu phpMyAdmin', 1, 0, 0, 0),
(6, 2, 'Ile maksymalnie użytkowników może mieć uprawnienie „admin”?', 3, 'nieskończenie wiele', '2', '2000', 'nie wiadomo', 1, 0, 0, 0),
(7, 2, 'Ilu jest użytkowników o nazwie „root”?', 1, '1', '2', '20', '0', 1, 0, 0, 0),
(8, 3, 'Aby dodać nowy rekord do tabeli należy użyć polecenia:', 3, 'INSERT INTO nazwa_tabeli (nazwa1, nazwa2) VALUES (wartosc1, wartosc2);', 'INSERT (wartosc1, wartosc2) INTO nazwa_tabeli;', 'nowe rekordy dodają się automatycznie', 'należy edytować główny plik *.sql', 1, 0, 0, 0),
(9, 3, 'Ile rekordów maksymalnie można dodać do bazy danych?', 1, 'nieskończenie wiele', '15', '10 mld', 'blisko 10000', 1, 0, 0, 0),
(10, 4, 'Aby stworzyć kwerendę wyświetlającą wszystkie pola z tabeli „produkty” należy użyć polecenia:', 5, 'SELECT `produkty`.* FROM `produkty`;', 'SHOW WHOLE produkty;', 'SELECT FROM ‘produkty’;', 'kwerendy można stworzyć tylko w panelu phpMyAdmin', 1, 0, 0, 0),
(11, 4, 'Jakiego polecenia należy użyć, aby policzyć ile rekordów ma dana tabela?', 1, 'COUNT', 'SELECT', 'HOWMANY', 'NUMBER ', 1, 0, 0, 0),
(12, 5, 'Aby zalogować się na konto użytkownika „root” należy użyć polecenia:', 1, 'mysql -u root -p', 'sql root', 'LOGIN root', 'LOGIN mysql', 1, 0, 0, 0),
(13, 5, 'Program używanu do tworzenia lokalnych serwerów mySQL nazywa się:', 1, 'XAMPP', 'Microsoft Server', 'Free Server Maker', 'mySQL EMULATOR', 1, 0, 0, 0),
(14, 5, 'Jak nazywa się zakładka w phpMyAdmin, która umożliwia modyfikację relacji:', 2, 'Designer', 'Relation Editor', 'Triggers', 'relacje można zmieniać tylko za pomocą poleceń', 1, 0, 0, 0),
(15, 5, 'Kto obecnie zajmuje się rozwijaniem języka mySQL?', 1, 'Oracle Corporation', 'Microsoft', 'Mozilla', 'Bagny Ted', 1, 0, 0, 0),
(16, 5, 'W którym roku powstał język mySQL?', 1, '1995', '2005', '1993', '2001', 1, 0, 0, 0),
(17, 5, 'Jaka jest data ostatniej aktualizacji mySQL (na dzien 30.05.2021)?', 2, '11 maja 2021', '10 maja 2021', '12 maja 2021', '13 maja 2021', 1, 0, 0, 0),
(18, 5, 'Jakiego polecenia użyjemy aby zmienić typ pola?', 1, 'MODIFY', 'EDIT', 'ZMIEN', 'POPRAW', 1, 0, 0, 0),
(19, 5, 'Jaki klucz musi zawierać każda tabela?', 1, 'podstawowy', 'obowiązkowy', 'indeksowania', 'wiolinowy', 1, 0, 0, 0),
(20, 5, 'W jakim języku pisze się bazy danych?', 3, 'SQL', 'Python', 'C#', 'HTML', 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `ID` int(11) NOT NULL,
  `nazwa` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `haslo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`ID`, `nazwa`, `email`, `haslo`) VALUES
(1, 'Al Pacino', 'siema@siema.pl', '5c15607d2afcb8a4b6d72a19287029bd'),
(2, 'Mariusz', 'mariusz@siema.pl', '6377b99feb5884dfd2eef168ef87892e'),
(3, 'Kolega', 'kumpel@siema.pl', '36f0784ad9aa2b1452cf33340d68aef9');

-- --------------------------------------------------------

--
-- Table structure for table `wykonane_testy`
--

CREATE TABLE `wykonane_testy` (
  `id` int(11) NOT NULL,
  `uzytkownik` int(11) NOT NULL,
  `data` date NOT NULL,
  `pytanie` int(11) NOT NULL,
  `odp1` tinyint(1) NOT NULL,
  `odp2` tinyint(1) NOT NULL,
  `odp3` tinyint(1) NOT NULL,
  `odp4` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wykonane_testy`
--

INSERT INTO `wykonane_testy` (`id`, `uzytkownik`, `data`, `pytanie`, `odp1`, `odp2`, `odp3`, `odp4`) VALUES
(1, 1, '2021-05-11', 11, 0, 1, 0, 0),
(2, 3, '2021-05-01', 12, 1, 0, 0, 0),
(3, 2, '2021-05-05', 9, 0, 0, 0, 1),
(4, 3, '2021-05-12', 15, 1, 0, 0, 0),
(5, 2, '2021-05-07', 14, 0, 1, 0, 0),
(6, 3, '2021-05-02', 18, 0, 1, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategorie`
--
ALTER TABLE `kategorie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pytania`
--
ALTER TABLE `pytania`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kategoria` (`kategoria`);

--
-- Indexes for table `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `wykonane_testy`
--
ALTER TABLE `wykonane_testy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uzytkownik` (`uzytkownik`,`pytanie`),
  ADD KEY `pytanie` (`pytanie`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategorie`
--
ALTER TABLE `kategorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pytania`
--
ALTER TABLE `pytania`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wykonane_testy`
--
ALTER TABLE `wykonane_testy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pytania`
--
ALTER TABLE `pytania`
  ADD CONSTRAINT `pytania_ibfk_1` FOREIGN KEY (`kategoria`) REFERENCES `kategorie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wykonane_testy`
--
ALTER TABLE `wykonane_testy`
  ADD CONSTRAINT `wykonane_testy_ibfk_1` FOREIGN KEY (`pytanie`) REFERENCES `pytania` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wykonane_testy_ibfk_2` FOREIGN KEY (`uzytkownik`) REFERENCES `uzytkownicy` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
