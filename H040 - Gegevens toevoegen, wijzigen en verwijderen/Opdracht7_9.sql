UPDATE student
SET uitgeschreven = '2015-9-7'
WHERE studentnr = '2222';

SELECT * FROM student;

SELECT * FROM student WHERE uitgeschreven IS NOT NULL;