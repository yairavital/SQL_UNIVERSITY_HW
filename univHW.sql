--Ex1
SELECT c.CourseName,ls.FirstName,ls.LastName
FROM Courses c join Lecturesss ls 
ON c.Lecture_Id= ls.Id
ORDER BY ls.LastName,c.id 
--Ex2
SELECT c.CourseName,ls.FirstName,ls.LastName
FROM Courses c INNER join Lecturesss ls 
ON c.Lecture_Id= ls.Id
--EX3
SELECT l.FirstName,l.LastName,c.CourseName
FROM Lecturesss l join Courses c on
c.Lecture_Id=l.Id
--EX4
SELECT c.CourseName,c.Id
FROM Courses c
WHERE c.Lecture_Id IS NULL
--Ex5
SELECT l.FirstName,l.LastName
FROM Lecturesss l LEFT JOIN Courses c
on c.Lecture_Id=l.Id
WHERE c.Id IS NULL
--EX6
SELECT l.FirstName,l.LastName,l.Id,c.CourseName,c.Id
FROM Lecturesss l FULL JOIN Courses c
on c.Lecture_Id=l.Id