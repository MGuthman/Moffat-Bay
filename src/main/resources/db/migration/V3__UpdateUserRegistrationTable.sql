ALTER TABLE user_registration ADD COLUMN confirm_password varchar(255) NOT NULL;
ALTER TABLE user_registration MODIFY COLUMN password VARCHAR(255) NOT NULL;