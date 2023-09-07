/* Purple Team: D. Bonis, R. Duvall, M. Guthman, O.Tsolmon */

ALTER TABLE user_registration ADD COLUMN confirm_password varchar(255) NOT NULL;
ALTER TABLE user_registration MODIFY COLUMN password VARCHAR(255) NOT NULL;