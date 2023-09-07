/* Purple Team: D. Bonis, R. Duvall, M. Guthman, O.Tsolmon */
/* Author: M.Guthman
Date: 09/03/2023

Encoding Test Case Password -- Previously entered as plain text, will need to update for future testing.
*/

UPDATE user_registration SET password = "$2a$10$4X2nIdS2t3ycccxF4VMM2eUfbCJiF.m1a50KJWsIf70AFje9/oROG" WHERE email_address = "test1@test.com";
UPDATE user_registration SET password = "$2a$10$/rk79mddehdtrx1MXg5XtOrkLi3Wc3/DPkOse75zmeYyzkgNVAN0." WHERE email_address = "test2@test.com";
UPDATE user_registration SET password = "$2a$10$uWykRsKdOwAjxPmJGAL9luIQ.BKRVj7MXeGNsrFBLStScapjVpvMO" WHERE email_address = "test3@test.com";
UPDATE user_registration SET password = "$2a$10$ymst5dYW1GkYLl74r/nxNeZtPSgJ8XDIqZc.bFAbO0ieqzxQ9hvPi" WHERE email_address = "test4@test.com";
UPDATE user_registration SET password = "$2a$10$aoYgoyKTqBHVW85s8echseltY5TK04HlYAUZ6nWUGZqnfO3fmLA52" WHERE email_address = "test5@test.com";
UPDATE user_registration SET password = "$2a$10$nrE9V2jd4gctNdRu1iKXeeeF7CYvxnEJ2hvQBUAke/468Pd0DqV2." WHERE email_address = "test6@test.com";
UPDATE user_registration SET password = "$2a$10$mEpxWm3xOhSXzmPXOKmjYOoA5t310C9b9WSRCXRLKH3cDTpGUfp96" WHERE email_address = "test7@test.com";
UPDATE user_registration SET password = "$2a$10$gwMQ0v6sCFt.i.aFhG52yOdPSLNiZJnJkSciKPqiwh/dRRnM4ewPq" WHERE email_address = "test8@test.com";
UPDATE user_registration SET password = "$2a$10$1ZqTB92glRWCJnBHuf9Ibe8M6rWFnZjRJeMF1PoQ3QeUSaXK1MKDq" WHERE email_address = "test9@test.com";
UPDATE user_registration SET password = "$2a$10$YQu5VfpDKsdElngrA5ElAO9Nt7KeZgb8cebVrt5nuhkHYoejK2eri" WHERE email_address = "test10@test.com";

