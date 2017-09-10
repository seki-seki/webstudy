-- テーマ
CREATE SEQUENCE theme_seq START WITH 100 INCREMENT BY 1;
CREATE TABLE theme (
  theme_id INTEGER NOT NULL PRIMARY KEY,
  title VARCHAR(256) NOT NULL
);

-- 意見
CREATE SEQUENCE opinion_seq START WITH 100 INCREMENT BY 1;
CREATE TABLE opinion (
  opinion_id INTEGER NOT NULL PRIMARY KEY,
  description VARCHAR(512) NOT NULL,
  theme_id INTEGER NOT NULL
);

-- 同意
CREATE SEQUENCE agreement_seq START WITH 100 INCREMENT BY 1;
CREATE TABLE agreement (
  agreement_id INTEGER NOT NULL PRIMARY KEY,
  opinion_id INTEGER NOT NULL,
);
