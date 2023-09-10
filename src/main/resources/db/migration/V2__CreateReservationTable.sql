/* Purple Team: D. Bonis, R. Duvall, M. Guthman, O.Tsolmon */
/* Creator: Dylan 8/26/23 */
/* Updated By: O.Tsolmon 09/09/23 */

/* Connect to Database*/
USE `purpleTeamDB`;

/* Drops table therefore deleting previous data */
DROP TABLE IF EXISTS `reservation`;

/* Makes new, empty reservation table */
CREATE TABLE `reservation` (
    `reservation_id` INT NOT NULL AUTO_INCREMENT,
    `user_id` INT NOT NULL,
    `room_size` VARCHAR(20) NOT NULL,
    `number_of_guests` INT NOT NULL,
    `check_in_date` DATE NOT NULL,
    `check_out_date` DATE NOT NULL,
    `total_price` DECIMAL(10, 2) NOT NULL, 
    `confirmation_id` varchar(10) NOT NULL,
    PRIMARY KEY (`reservation_id`),
    UNIQUE KEY `unique_confirmation_id` (`confirmation_id`),
    FOREIGN KEY(`user_id`) REFERENCES `user_registration` (`user_id`)
  );
  


/* Insert some dummy/test information for reservation table */
INSERT INTO `reservation`(`user_id`, `room_size`, `number_of_guests`, `check_in_date`, `check_out_date`, `total_price`, `confirmation_id`) VALUES (1, 'Queen', 2,'2023-09-13', '2023-09-15', 230.00, 'a5dugksi96');
INSERT INTO `reservation`(`user_id`, `room_size`, `number_of_guests`, `check_in_date`, `check_out_date`, `total_price`, `confirmation_id`) VALUES (2, 'Double Queen', 4, '2023-09-6', '2023-09-7', 150.00, 'd9gmsl03nd');
INSERT INTO `reservation`(`user_id`, `room_size`, `number_of_guests`, `check_in_date`, `check_out_date`, `total_price`, `confirmation_id`) VALUES (5, 'King', 3, '2023-09-6', '2023-09-9', 450.00, 'skf9sdnso2');
INSERT INTO `reservation`(`user_id`, `room_size`, `number_of_guests`, `check_in_date`, `check_out_date`, `total_price`, `confirmation_id`) VALUES (9, 'Double Full', 1, '2023-09-8', '2023-09-10', 230.00, 'kdlsi9fms3');
