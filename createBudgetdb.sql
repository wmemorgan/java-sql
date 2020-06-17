DROP TABLE IF EXISTS accounts;
CREATE TABLE accounts (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) UNIQUE,
  budget money NOT NULL
);

INSERT INTO accounts(name, budget)
VALUES('Vacation', 5000.00);
INSERT INTO accounts(name, budget)
VALUES('Back to School', 5000.00);

CREATE INDEX idx_name ON accounts(name);

SELECT *
FROM accounts;