CREATE TABLE IF NOT EXISTS jokes (
    -- autogenerate numbers <-> SERIAL is postgres
    joke_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY, 
    category VARCHAR2(20) NOT NULL,
    joke VARCHAR(200) NOT NULL,
    rating NUMBER(2) CHECK (rating BETWEEN 1 AND 10)

);

EXIT

