DROP TABLE IF EXISTS book_issue;
DROP TABLE IF EXISTS book_dt;
CREATE TABLE book_dt (
  bid BIGINT NOT NULL PRIMARY KEY,
  btitle VARCHAR(50) NOT NULL,
  copies SMALLINT NOT NULL
);

INSERT INTO book_dt VALUES (1, 'Java', 10);
INSERT INTO book_dt VALUES (2, 'C++', 5);
INSERT INTO book_dt VALUES (3, 'MySql', 10);
INSERT INTO book_dt VALUES (4, 'Oracle DBMS', 5);

CREATE TABLE book_issue (
  bid BIGINT NOT NULL PRIMARY KEY,
  sid BIGINT NOT NULL,
  btitle VARCHAR(50) NOT NULL,
  FOREIGN KEY (sid) REFERENCES book_dt(bid)
);

DROP TRIGGER IF EXISTS book_borrowed;
CREATE TRIGGER book_borrowed AFTER INSERT ON book_issue FOR EACH ROW UPDATE book_dt SET copies = copies - 1 WHERE bid = NEW.sid;

INSERT INTO book_issue VALUES (1, 1, 'Java');
