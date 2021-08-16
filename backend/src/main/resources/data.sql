INSERT INTO tb_users (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_users (name, email, password) VALUES ('bOB Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_users (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_roles (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_roles (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_roles (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_courses (name, img_Uri, img_Gray_Uri ) VALUES ('Bootcamp HTML', 'https://c.pxhere.com/images/07/b2/f8ed07d6f1a9c740e7703cbb99ee-1443423.jpg!d','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVh2uM-DebaaY88YfkDGLpfhiKi054rCO2GQ&usqp=CAU');
INSERT INTO tb_courses (name, img_Uri, img_Gray_Uri ) VALUES ('SpringBoot', 'https://c.pxhere.com/images/07/b2/f8ed07d6f1a9c740e7703cbb99ee-1443423.jpg!d','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVh2uM-DebaaY88YfkDGLpfhiKi054rCO2GQ&usqp=CAU');


INSERT INTO tb_offers (edition, start_Moment, end_Moment, course_id ) VALUES ('1.0',TIMESTAMP WITH TIME ZONE '2021-07-11T04:00:00Z',TIMESTAMP WITH TIME ZONE '2021-08-06T23:59:59Z','1');
INSERT INTO tb_offers (edition, start_Moment, end_Moment, course_id ) VALUES ('2.0',TIMESTAMP WITH TIME ZONE '2021-09-11T04:00:00Z',TIMESTAMP WITH TIME ZONE '2021-10-06T23:59:59Z','1');

INSERT INTO tb_resources (title, description, position, img_Uri, type, offer_id ) 
VALUES ('HTML', 'Main stream', 1, 'https://c.pxhere.com/images/07/b2/f8ed07d6f1a9c740e7703cbb99ee-1443423.jpg!d', 1, 1);
INSERT INTO tb_resources (title, description, position, img_Uri, type, offer_id ) 
VALUES ('Forum', 'Asks your questions', 2, 'https://c.pxhere.com/images/07/b2/f8ed07d6f1a9c740e7703cbb99ee-1443423.jpg!d', 2, 1);
INSERT INTO tb_resources (title, description, position, img_Uri, type, offer_id ) 
VALUES ('Lives', 'Lives master classes', 1, 'https://c.pxhere.com/images/07/b2/f8ed07d6f1a9c740e7703cbb99ee-1443423.jpg!d', 0, 1);

INSERT INTO tb_sections (title, description, position, img_Uri, resource_id, prerequisite_id ) 
VALUES ('Chapter 1', 'Introduction to HTML', 1, 'https://c.pxhere.com/images/07/b2/f8ed07d6f1a9c740e7703cbb99ee-1443423.jpg!d', 1, null);
INSERT INTO tb_sections (title, description, position, img_Uri, resource_id, prerequisite_id ) 
VALUES ('Chapter 2', 'Introduction to JS', 2, 'https://c.pxhere.com/images/07/b2/f8ed07d6f1a9c740e7703cbb99ee-1443423.jpg!d', 1, 1);
INSERT INTO tb_sections (title, description, position, img_Uri, resource_id, prerequisite_id ) 
VALUES ('Chapter 3', 'Introduction to CSS', 3, 'https://c.pxhere.com/images/07/b2/f8ed07d6f1a9c740e7703cbb99ee-1443423.jpg!d', 1, 2);






