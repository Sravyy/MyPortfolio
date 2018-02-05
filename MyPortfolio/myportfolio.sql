-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 05, 2018 at 08:37 AM
-- Server version: 5.6.34-log
-- PHP Version: 7.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myportfolio`
--
CREATE DATABASE IF NOT EXISTS `myportfolio` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `myportfolio`;

-- --------------------------------------------------------

--
-- Table structure for table `aspnetroleclaims`
--

DROP TABLE IF EXISTS `aspnetroleclaims`;
CREATE TABLE `aspnetroleclaims` (
  `Id` int(11) NOT NULL,
  `ClaimType` longtext,
  `ClaimValue` longtext,
  `RoleId` varchar(127) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aspnetroles`
--

DROP TABLE IF EXISTS `aspnetroles`;
CREATE TABLE `aspnetroles` (
  `Id` varchar(127) NOT NULL,
  `ConcurrencyStamp` longtext,
  `Name` varchar(256) DEFAULT NULL,
  `NormalizedName` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aspnetroles`
--

INSERT INTO `aspnetroles` (`Id`, `ConcurrencyStamp`, `Name`, `NormalizedName`) VALUES
('2010e234-ef3b-43f8-aed5-e50327b3828b', 'fd74a266-c644-4817-8960-31180eb27d70', 'User', 'USER'),
('2b72cbe5-3867-47cb-8a9f-d411f9c2622c', '82eef95d-0424-4682-b437-e507a2a88b9c', 'Admin', 'ADMIN'),
('7a3b7f34-32a8-4974-b962-b5f61d230ed9', '40e16401-d466-410c-b630-b483b2600565', 'Anonymous', 'ANONYMOUS'),
('d4c6fd7b-cd08-452e-a06e-d62a09bee668', '32af19e1-0727-4e96-acbb-2428b8678939', 'Mod', 'MOD');

-- --------------------------------------------------------

--
-- Table structure for table `aspnetuserclaims`
--

DROP TABLE IF EXISTS `aspnetuserclaims`;
CREATE TABLE `aspnetuserclaims` (
  `Id` int(11) NOT NULL,
  `ClaimType` longtext,
  `ClaimValue` longtext,
  `UserId` varchar(127) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aspnetuserlogins`
--

DROP TABLE IF EXISTS `aspnetuserlogins`;
CREATE TABLE `aspnetuserlogins` (
  `LoginProvider` varchar(127) NOT NULL,
  `ProviderKey` varchar(127) NOT NULL,
  `ProviderDisplayName` longtext,
  `UserId` varchar(127) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aspnetuserroles`
--

DROP TABLE IF EXISTS `aspnetuserroles`;
CREATE TABLE `aspnetuserroles` (
  `UserId` varchar(127) NOT NULL,
  `RoleId` varchar(127) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aspnetuserroles`
--

INSERT INTO `aspnetuserroles` (`UserId`, `RoleId`) VALUES
('04fa8ff5-02f8-4719-a989-73f9747e172f', '2010e234-ef3b-43f8-aed5-e50327b3828b'),
('0ed58d80-4b78-43e0-9974-0c930879c86e', '2010e234-ef3b-43f8-aed5-e50327b3828b'),
('34634994-053d-4946-bf0d-87db17afe098', '2010e234-ef3b-43f8-aed5-e50327b3828b');

-- --------------------------------------------------------

--
-- Table structure for table `aspnetusers`
--

DROP TABLE IF EXISTS `aspnetusers`;
CREATE TABLE `aspnetusers` (
  `Id` varchar(127) NOT NULL,
  `AccessFailedCount` int(11) NOT NULL,
  `ConcurrencyStamp` longtext,
  `Email` varchar(256) DEFAULT NULL,
  `EmailConfirmed` bit(1) NOT NULL,
  `LockoutEnabled` bit(1) NOT NULL,
  `LockoutEnd` datetime(6) DEFAULT NULL,
  `NormalizedEmail` varchar(256) DEFAULT NULL,
  `NormalizedUserName` varchar(256) DEFAULT NULL,
  `PasswordHash` longtext,
  `PhoneNumber` longtext,
  `PhoneNumberConfirmed` bit(1) NOT NULL,
  `SecurityStamp` longtext,
  `TwoFactorEnabled` bit(1) NOT NULL,
  `UserName` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aspnetusers`
--

INSERT INTO `aspnetusers` (`Id`, `AccessFailedCount`, `ConcurrencyStamp`, `Email`, `EmailConfirmed`, `LockoutEnabled`, `LockoutEnd`, `NormalizedEmail`, `NormalizedUserName`, `PasswordHash`, `PhoneNumber`, `PhoneNumberConfirmed`, `SecurityStamp`, `TwoFactorEnabled`, `UserName`) VALUES
('04fa8ff5-02f8-4719-a989-73f9747e172f', 0, '31a4f274-189d-4c92-9cb8-c168c04fc613', 'sravypv@gmail.com', b'0', b'1', NULL, 'SRAVYPV@GMAIL.COM', 'SRAVYPV@GMAIL.COM', 'AQAAAAEAACcQAAAAECtKr39/XONKO4tzMgyGl0INSuiPs8xL9QZWSETa1gPd6KAn+tMdJzynsw4QYw+rOw==', NULL, b'0', 'ef71b42b-057f-4f7a-8f88-68543619f8bb', b'0', 'sravypv@gmail.com'),
('0ed58d80-4b78-43e0-9974-0c930879c86e', 0, 'dbfca77d-dfe0-45fd-a5ef-66c7e9117275', 'sravy@gmail.com', b'0', b'1', NULL, 'SRAVY@GMAIL.COM', 'SRAVY@GMAIL.COM', 'AQAAAAEAACcQAAAAECKwPPlEt0OBm7ujhb6KPvYLREbUv1AulHilLTNp9QZr0gvnzPUrMKxFQGgu2JYJrQ==', NULL, b'0', 'a4f253f7-251f-4fd2-a10a-668904dba495', b'0', 'sravy@gmail.com'),
('34634994-053d-4946-bf0d-87db17afe098', 0, '29c9db3a-fa21-46ff-9abf-38ebad8b895b', 'don@gmail.com', b'0', b'1', NULL, 'DON@GMAIL.COM', 'DON@GMAIL.COM', 'AQAAAAEAACcQAAAAEIOykTfA3JG3lfIjcEaCELju+0E2PON3bPAnkMw2PjnvHWK1Zew6rp0yikfDmNtIWQ==', NULL, b'0', 'f58d63db-8437-429f-92ed-a74c672202e8', b'0', 'don@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `aspnetusertokens`
--

DROP TABLE IF EXISTS `aspnetusertokens`;
CREATE TABLE `aspnetusertokens` (
  `UserId` varchar(127) NOT NULL,
  `LoginProvider` varchar(127) NOT NULL,
  `Name` varchar(127) NOT NULL,
  `Value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blogposts`
--

DROP TABLE IF EXISTS `blogposts`;
CREATE TABLE `blogposts` (
  `PostId` int(11) NOT NULL,
  `Body` longtext,
  `Title` longtext,
  `UserId` varchar(127) DEFAULT NULL,
  `CommentId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogposts`
--

INSERT INTO `blogposts` (`PostId`, `Body`, `Title`, `UserId`, `CommentId`) VALUES
(1, 'Include your blog on your resume if…\r\nThe overall presentation, formatting, theme (just the way it looks in general) comes off as professional and polished, even if someone were to not read a single word. If you started up the blog a year ago and still haven’t gotten around to branding it, you might want to think twice. The first impression just based on looks alone is a very important one (shallow, I know!).', 'should I include my blog on my resume?', '04fa8ff5-02f8-4719-a989-73f9747e172f', 0),
(2, 'If your blog contains mostly personal information. You always want to keep your resume and what you talk about in an interview very, very professional. Therefore, really think about if you want your interviewer reading about what you ate for breakfast or did on Saturday night. I especially want to call attention to blogs with lots of photos of yourself – whether they be pictures from your personal life or you posing for your own blog, be aware that it can come across as a little unprofessional if not done in the right way.', 'Leave your blog off your resume?', '04fa8ff5-02f8-4719-a989-73f9747e172f', 0);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `CommentId` int(11) NOT NULL,
  `Author` longtext,
  `BlogPostId` int(11) NOT NULL,
  `Comments` longtext,
  `UserId` varchar(127) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
CREATE TABLE `projects` (
  `ProjectId` int(11) NOT NULL,
  `language` longtext,
  `name` longtext,
  `html_url` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `__efmigrationshistory`
--

DROP TABLE IF EXISTS `__efmigrationshistory`;
CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(95) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('00000000000000_CreateIdentitySchema', '1.1.2'),
('20180128000203_initial', '1.1.2'),
('20180128000813_AddDatabase', '1.1.2'),
('20180128003323_AddMySQLDb', '1.1.2'),
('20180128085801_AddProjectModel', '1.1.2'),
('20180128091528_AddProjectModell', '1.1.2'),
('20180128203920_ChangeUrltoHTMLUrl', '1.1.2'),
('20180129055551_AddBlogAndCommentModels', '1.1.2'),
('20180129061531_AddBlogAndCommentModel', '1.1.2'),
('20180129073847_AddCommentIdToBlogPostModel', '1.1.2'),
('20180129074108_AddCommentIdToBlogPostModell', '1.1.2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetRoleClaims_RoleId` (`RoleId`);

--
-- Indexes for table `aspnetroles`
--
ALTER TABLE `aspnetroles`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `RoleNameIndex` (`NormalizedName`);

--
-- Indexes for table `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetUserClaims_UserId` (`UserId`);

--
-- Indexes for table `aspnetuserlogins`
--
ALTER TABLE `aspnetuserlogins`
  ADD PRIMARY KEY (`LoginProvider`,`ProviderKey`),
  ADD KEY `IX_AspNetUserLogins_UserId` (`UserId`);

--
-- Indexes for table `aspnetuserroles`
--
ALTER TABLE `aspnetuserroles`
  ADD PRIMARY KEY (`UserId`,`RoleId`),
  ADD KEY `IX_AspNetUserRoles_RoleId` (`RoleId`);

--
-- Indexes for table `aspnetusers`
--
ALTER TABLE `aspnetusers`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UserNameIndex` (`NormalizedUserName`),
  ADD KEY `EmailIndex` (`NormalizedEmail`);

--
-- Indexes for table `aspnetusertokens`
--
ALTER TABLE `aspnetusertokens`
  ADD PRIMARY KEY (`UserId`,`LoginProvider`,`Name`);

--
-- Indexes for table `blogposts`
--
ALTER TABLE `blogposts`
  ADD PRIMARY KEY (`PostId`),
  ADD KEY `IX_BlogPosts_UserId` (`UserId`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`CommentId`),
  ADD KEY `IX_Comments_BlogPostId` (`BlogPostId`),
  ADD KEY `IX_Comments_UserId` (`UserId`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`ProjectId`);

--
-- Indexes for table `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogposts`
--
ALTER TABLE `blogposts`
  MODIFY `PostId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `CommentId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `ProjectId` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  ADD CONSTRAINT `FK_AspNetRoleClaims_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  ADD CONSTRAINT `FK_AspNetUserClaims_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `aspnetuserlogins`
--
ALTER TABLE `aspnetuserlogins`
  ADD CONSTRAINT `FK_AspNetUserLogins_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `aspnetuserroles`
--
ALTER TABLE `aspnetuserroles`
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `blogposts`
--
ALTER TABLE `blogposts`
  ADD CONSTRAINT `FK_BlogPosts_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE NO ACTION;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `FK_Comments_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `FK_Comments_BlogPosts_BlogPostId` FOREIGN KEY (`BlogPostId`) REFERENCES `blogposts` (`PostId`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
