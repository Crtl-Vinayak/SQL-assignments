UPDATE student
SET uitgeschreven = '2015-9-6'
WHERE studentnr = '4444';

SELECT * FROM student;

SELECT * FROM student WHERE uitgeschreven IS NOT NULL;