delete from user_role;
delete from usr;

insert into usr(id, username, password, active) values
(1, '14', '$2a$08$ycR3nsEGMFGy570lBr8d5uSzkfzxM7aw2/PRHi5EnuGNCeczvSndO', true),
(2, 'olebas', '$2a$08$fNUHI3FnO3cbT6VAcClJOOsIq93f2101ud2RAKiZFAh7Y2h.oFRzC', true);

insert into user_role(user_id, roles) values
(1, 'ADMIN'), (1, 'USER'),
(2, 'USER');



