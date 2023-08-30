/* Creator: Oyun 8/25/23 
   Edits and Comments Made - Dylan 8/26/23 */

/* Connect to Database*/
USE `purpleTeamDB`;

/* Drops table therefore deleting previous data */
DROP TABLE IF EXISTS `user_registration`;

/* Makes new, empty user table */
CREATE TABLE `user_registration`(
  `userID` int NOT NULL AUTO_INCREMENT,
  `emailAddress` varchar(50) NOT NULL, 
  `firstName` varchar(30) NOT NULL, 
  `lastName` varchar(30) NOT NULL, 
  `phoneNumber` varchar(30) NOT NULL, 
  `password` varchar(25) NOT NULL, 
  PRIMARY KEY (`userID`)
  );

/* Insert some dummy/test information */
INSERT INTO `user_registration`(`emailAddress`, `firstName`, `lastName`, `phoneNumber`, `password`) VALUES ('test1@test.com', 'Tom', 'Johns', '1231231234','abc1Abcd');
INSERT INTO `user_registration`(`emailAddress`, `firstName`, `lastName`, `phoneNumber`, `password`) VALUES ('test2@test.com', 'Andy', 'Williams', '1231231200','abc2Abcd');
INSERT INTO `user_registration`(`emailAddress`, `firstName`, `lastName`, `phoneNumber`, `password`) VALUES ('test3@test.com', 'Amy', 'Weeks', '1231231235','abc3Abcd');
INSERT INTO `user_registration`(`emailAddress`, `firstName`, `lastName`, `phoneNumber`, `password`) VALUES ('test4@test.com', 'Donna', 'Burton', '1231231264','abc4Abcd');
INSERT INTO `user_registration`(`emailAddress`, `firstName`, `lastName`, `phoneNumber`, `password`) VALUES ('test5@test.com', 'John', 'Potter', '1231231238','abc5Abcd');
INSERT INTO `user_registration`(`emailAddress`, `firstName`, `lastName`, `phoneNumber`, `password`) VALUES ('test6@test.com', 'Ana', 'Barber', '1231231235','abc6Abcd');
INSERT INTO `user_registration`(`emailAddress`, `firstName`, `lastName`, `phoneNumber`, `password`) VALUES ('test7@test.com', 'David', 'Baldwin', '1231231233','abc7Abcd');
INSERT INTO `user_registration`(`emailAddress`, `firstName`, `lastName`, `phoneNumber`, `password`) VALUES ('test8@test.com', 'Tim', 'Peters', '1231231232','abc8Abcd');
INSERT INTO `user_registration`(`emailAddress`, `firstName`, `lastName`, `phoneNumber`, `password`) VALUES ('test9@test.com', 'Chris', 'Torres', '1231231231','abc9Abcd');
INSERT INTO `user_registration`(`emailAddress`, `firstName`, `lastName`, `phoneNumber`, `password`) VALUES ('test10@test.com', 'Thomas', 'Spence', '12312312349','abc10Abc');