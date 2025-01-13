-- Use arrays to store multiple values in a single column
CREATE TABLE array_example (
    id SERIAL PRIMARY KEY,
    numbers INT[]
);

INSERT INTO array_example (numbers)
VALUES
    ('{1, 2, 3}'),
    ('{4, 5, 6}');

-- Query specific array elements
-- Take the first element 'numbers[1]' from each index in the array
SELECT numbers[1] AS first_element FROM array_example;

-- Search for rows containing a specific number
-- pull all the value in this case all the array which stored in the first index which contain the request value in this case '3'
SELECT * FROM array_example WHERE 3 = ANY(numbers);
