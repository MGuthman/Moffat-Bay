/* Purple Team: D. Bonis, R. Duvall, M. Guthman, O.Tsolmon */
/* Creator: Dylan 8/26/23 */

/* Connect to Database*/
USE `purpleTeamDB`;

/* Drops table therefore deleting previous data */
DROP TABLE IF EXISTS `reservation`;

/* Makes new, empty reservation table */
CREATE TABLE `reservation`(
  `reservationID` varchar(10) NOT NULL,
  `user_id` int NOT NULL, 
  `roomSize` varchar(20) NOT NULL, 
  `numberOfGuests` int(1) NOT NULL, 
  `checkInDate` varchar(25) NOT NULL, 
  `checkOutDate` varchar(25) NOT NULL,
  `totalPrice` decimal(5,2) NOT NULL, 
  PRIMARY KEY (`reservationID`),
  FOREIGN KEY(`user_id`) REFERENCES `user_registration` (`user_id`)
  );

/* Insert some dummy/test information for reservation table */
INSERT INTO `reservation`(`reservationID`, `user_id`, `roomSize`, `numberOfGuests`, `checkInDate`, `checkOutDate`, `totalPrice`) VALUES ('a5dugksi96', 1, 'Queen', 2,'2023-09-13', '2023-09-15', 230.00);
INSERT INTO `reservation`(`reservationID`, `user_id`, `roomSize`, `numberOfGuests`, `checkInDate`, `checkOutDate`, `totalPrice`) VALUES ('d9gmsl03nd', 2, 'Double Queen', 4, '2023-09-6', '2023-09-7', 150.00);
INSERT INTO `reservation`(`reservationID`, `user_id`, `roomSize`, `numberOfGuests`, `checkInDate`, `checkOutDate`, `totalPrice`) VALUES ('skf9sdnso2', 5, 'King', 3, '2023-09-6', '2023-09-9', 450.00);
INSERT INTO `reservation`(`reservationID`, `user_id`, `roomSize`, `numberOfGuests`, `checkInDate`, `checkOutDate`, `totalPrice`) VALUES ('kdlsi9fms3', 9, 'Double Full', 1, '2023-09-8', '2023-09-10', 230.00);