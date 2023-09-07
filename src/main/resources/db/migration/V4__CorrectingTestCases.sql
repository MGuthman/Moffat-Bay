/* Purple Team: D. Bonis, R. Duvall, M. Guthman, O.Tsolmon */
/* Author: M.Guthman
Date: 09/03/2023

V1 Test cases data in incorrect column
*/

/* Swapping first_name and email_address, then first_name with last_name */

UPDATE user_registration SET first_name=(@temp:=first_name), first_name = email_address, email_address = @temp WHERE user_id < 11;

UPDATE user_registration SET first_name=(@temp:=first_name), first_name = last_name, last_name = @temp WHERE user_id < 11;


