INSERT INTO tb_users (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_users (name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
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

INSERT INTO tb_enrollments (user_id ,offer_id, enroll_Moment, refund_Moment, available, only_Update ) VALUES (1, 1,TIMESTAMP WITH TIME ZONE '2021-09-11T013:00:00Z', null, true, false);
INSERT INTO tb_enrollments (user_id ,offer_id, enroll_Moment, refund_Moment, available, only_Update ) VALUES (2, 1,TIMESTAMP WITH TIME ZONE '2021-09-11T013:00:00Z', null, true, false);

INSERT INTO tb_lessons (title, position, section_id) VALUES ('Lesson 1, Chap 1', 1, 1);
INSERT INTO tb_contents (id, text_Content, video_Uri) VALUES (1, 'Study material: abc', 'https://www.youtube.com/watch?v=HcXu4_K1tMQ');

INSERT INTO tb_lessons (title, position, section_id) VALUES ('Lesson 2, Chap 1', 2, 1);
INSERT INTO tb_contents (id, text_Content, video_Uri) VALUES (2, 'Study material: abc', 'https://www.youtube.com/watch?v=HcXu4_K1tMQ');

INSERT INTO tb_lessons (title, position, section_id) VALUES ('Lesson 3, Chap 1', 3, 1);
INSERT INTO tb_contents (id, text_Content, video_Uri) VALUES (3, 'Study material: abc', 'https://www.youtube.com/watch?v=HcXu4_K1tMQ');

INSERT INTO tb_lessons (title, position, section_id) VALUES ('Task 1, Chap 1', 4, 1);
INSERT INTO tb_tasks (id, description, question_Count,approval_Count, weight, due_Date ) VALUES (4, 'Task chap 1: abc', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2021-09-15T013:00:00Z');

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES ( 1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES ( 2, 1, 1);

INSERT INTO tb_notifications (text, moment, read, route, user_id) VALUES ( 'Some notification', TIMESTAMP WITH TIME ZONE '2021-09-12T013:00:00Z',false, '', 1);
INSERT INTO tb_notifications (text, moment, read, route, user_id) VALUES ('Primeiro feedback de tarefa: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-10T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notifications (text, moment, read, route, user_id) VALUES ('Segundo feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notifications (text, moment, read, route, user_id) VALUES ('Terceiro feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);

INSERT INTO tb_deliveries (uri, moment, status, feedback, correct_Count, lesson_id, user_id, offer_id) 
	VALUES ('https://github.com/devsuperior/bds-dslearn', TIMESTAMP WITH TIME ZONE '2020-12-10T10:00:00Z', 0, null, null, 4, 1, 1);
INSERT INTO tb_deliveries (uri, moment, status, feedback, correct_Count, lesson_id, user_id, offer_id) 
	VALUES ( 'delivery git uri', TIMESTAMP WITH TIME ZONE '2020-12-10T15:00:00Z', 3, 'Redo it', 1, 4, 1, 1);



INSERT INTO tb_topics (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 1', 'Corpo do tópico 1', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', 1, 1, 1);
INSERT INTO tb_topics (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 2', 'Corpo do tópico 2', TIMESTAMP WITH TIME ZONE '2020-12-13T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topics (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 3', 'Corpo do tópico 3', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topics (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 4', 'Corpo do tópico 4', TIMESTAMP WITH TIME ZONE '2020-12-15T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topics (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 5', 'Corpo do tópico 5', TIMESTAMP WITH TIME ZONE '2020-12-16T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topics (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 6', 'Corpo do tópico 6', TIMESTAMP WITH TIME ZONE '2020-12-17T13:00:00Z', 2, 1, 3);

INSERT INTO tb_topics_likes (topic_id, user_id) VALUES (1, 2);
INSERT INTO tb_topics_likes (topic_id, user_id) VALUES (2, 1);

INSERT INTO tb_replies (body, moment, topic_id, author_id) VALUES ('Tente reiniciar o computador', TIMESTAMP WITH TIME ZONE '2020-12-15T13:00:00Z', 1, 2);
INSERT INTO tb_replies (body, moment, topic_id, author_id) VALUES ('Deu certo, valeu!', TIMESTAMP WITH TIME ZONE '2020-12-20T13:00:00Z', 1, 1);

INSERT INTO tb_replies_likes (reply_id, user_id) VALUES (1, 1);


