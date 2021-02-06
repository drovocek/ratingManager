DROP TABLE IF EXISTS STUDENT;
DROP TABLE IF EXISTS SUBJECT;
DROP TABLE IF EXISTS JOURNAL_ENTRY;



CREATE TABLE STUDENT
(
    id         INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    first_name VARCHAR NOT NULL,
    last_name  VARCHAR NOT NULL,
    patronymic VARCHAR NOT NULL
);

CREATE TABLE SUBJECT
(
    id   INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    name VARCHAR NOT NULL
);

CREATE TABLE JOURNAL_ENTRY
(
    id         INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    mark       INT                NOT NULL,
    mark_date  DATE DEFAULT now() NOT NULL,
    student_id INTEGER            NOT NULL,
    subject_id INTEGER            NOT NULL,
    FOREIGN KEY (student_id) REFERENCES STUDENT (id) ON DELETE CASCADE,
    FOREIGN KEY (subject_id) REFERENCES SUBJECT (id) ON DELETE CASCADE
);