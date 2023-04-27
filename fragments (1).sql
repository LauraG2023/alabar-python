DELETE FROM group;
DELETE FROM topic;
DELETE FROM topic_answer;
DELETE FROM topic_ticket;
DELETE FROM topic_item;
DELETE FROM user;
DELETE FROM user_group;


--password para todos: hola
INSERT INTO "user"
(id_user, name_user, email_user, password_hash, password_salt)
VALUES
(1, 'Marga Nacher', 'marga@email.com', '$2b$12$gIcSbXQrWqMHTFhbcNOguOQhSNDDq.nQpuX25Fgfy4HKrrIScnaWm', '$2b$12$gIcSbXQrWqMHTFhbcNOguO'),
(2, 'Gonzalo Pardo', 'gonzalo@email.com', 's$$2b$12$6e2DSOJwq.Z/pz8LawWPH.5xl3RDDPuAFerF7Pi1SdOeeS.fy.Nmy', '$2b$12$6e2DSOJwq.Z/pz8LawWPH.'),
(3, 'jill', 'jill@email.com', '$2b$12$Sox8sFxljetZ41VEhcR2SOV8P2pD5dkyKjbFp0LZ6vzGLrb2kE/iu', '$2b$12$Sox8sFxljetZ41VEhcR2SO');

INSERT INTO "group"
(id_group, name_group)
VALUES
(1, 'Group Sprint 16'),
(2, 'Group Sprint 17'),
(3, 'Group lunch'),
(4, 'Group Team Leaders');


INSERT INTO user_group
(user_id, group_id)
VALUES
(1, 1),
(1, 2),
(2, 2),
(2, 3);

--status = 1 = active, status = 0 = inactive
INSERT INTO topic
(id_topic, title_topic, owner_topic, type_topic, start_date, end_date, status, participation,close_date)
VALUES
(1, '♠A of ♠ - Consum Sprint 17', 1, 'AceOfSpadesTopic', '2023-04-20 00:00:00.000000', '2023-05-20 00:00:00.000000', 1, 0,'9999-12-31 00:00:00.000000'),
(2, 'Rate Demo Sprint 16', 1, 'RatingTopic', '2023-04-18 00:00:00.000000', '2023-05-20 00:00:00.000000', 1, 0,'9999-12-31 00:00:00.000000'),
(3, '♠A of ♠ - Consum Sprint 16', 1, 'AceOfSpadesTopic', '2023-04-01 00:00:00.000000', '2023-05-20 00:00:00.000000', 1, 0,'9999-12-31 00:00:00.000000'),
(4, '¿Cuándo vamos a la Oficina?', 2, 'MultipleChoiceTextTopic', '2023-02-12 00:00:00.000000', '2023-05-20 00:00:00.000000', 1, 0,'9999-12-31 00:00:00.000000');

-- 1 = completed, 0 = not completed
INSERT INTO topic_ticket
(user_id, topic_id, completed)
VALUES
(1, 1, 0),
(1, 2, 0),
(1, 3, 0),
(1, 4, 0),
(2, 1, 0),
(2, 2, 0),
(2, 3, 0);

INSERT INTO user_topic
(topic_id, user_id)
VALUES
(1, 2),
(2, 2),
(3, 2),
(1, 1),
(2, 1),
(3, 1),
(4, 1);