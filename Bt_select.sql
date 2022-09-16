USE QuanLySinhVien;

SELECT * FROM Student WHERE StudentName LIKE 'h%';

SELECT * FROM Class WHERE Month(StartDate) LIKE 12;

SELECT * FROM Subject WHERE Credit >= 3 AND Credit <= 5;

UPDATE Student SET ClassId = 2 WHERE StudentName = 'Hung';

SELECT S.StudentName, Sub.SubName, M.Mark
FROM Student S join Mark M on S.StudentId = M.StudentId join Subject Sub on M.SubId = Sub.SubId
ORDER BY Mark DESC, StudentName ASC;