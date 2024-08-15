CREATE TABLE contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100)
);

CREATE TABLE category (
    category_id VARCHAR(10) PRIMARY KEY,
    category VARCHAR(50)
);

CREATE TABLE subcategory (
    subcategory_id VARCHAR(10) PRIMARY KEY,
    subcategory VARCHAR(50)
);

DROP TABLE if EXISTS campaign;

CREATE TABLE campaign (
    cf_id INT PRIMARY KEY,
    contact_id INT REFERENCES contacts(contact_id),
    company_name VARCHAR(100),
    description TEXT,
    goal NUMERIC,
    pledged NUMERIC,
    outcome VARCHAR(20),
    backers_count INT,
    country VARCHAR(10),
    currency VARCHAR(10),
    launched_date DATE,
    end_date DATE,
    category_id VARCHAR(10) REFERENCES category(category_id),
    subcategory_id VARCHAR(10) REFERENCES subcategory(subcategory_id)
);

--Checking the first few rows if the data is sucessfully loaded.
Select *
FROM campaign
LIMIT 5

Select *
FROM contacts
LIMIT 5;

Select *
FROM category
LIMIT 5;

Select *
FROM subcategory
LIMIT 5;







