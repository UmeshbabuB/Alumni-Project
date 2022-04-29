-- 1.Create new schema as alumni
create database alumni;
use alumni;

-- 2.Import all .csv files into MySQL
-- imported all csv files.

-- 3.Run SQL command to see the structure of six tables
desc college_a_hs;
desc college_a_se;
desc college_a_sj;
desc college_b_hs;
desc college_b_se;
desc college_b_sj;

-- 4.Display first 1000 rows of tables (College_A_HS, College_A_SE, College_A_SJ, College_B_HS, College_B_SE, College_B_SJ) with Python.
-- cur_obj.execute('select * from college_a_hs limit 1000')
-- cur_obj.fetchall()
-- cur_obj.execute('select * from college_a_se limit 1000')
-- cur_obj.fetchall()
-- cur_obj.execute('select * from college_a_sj limit 1000')
-- cur_obj.fetchall()
-- cur_obj.execute('select * from college_b_hs limit 1000')
-- cur_obj.fetchall()
-- cur_obj.execute('select * from college_b_se limit 1000')
-- cur_obj.fetchall()
-- cur_obj.execute('select * from college_b_sj limit 1000')
-- cur_obj.fetchall()


# 5.Import first 1500 rows of tables (College_A_HS, College_A_SE, College_A_SJ, College_B_HS, College_B_SE, College_B_SJ) into MS Excel.
-- college_a_hs:
-- open ms excel and click on data 
-- 1.click on mysql for excel
-- 2.click on local instance mysql80 in that select the schema and click on next and choose college_a_hs
-- 3.click on import mysql data and then window will appear in that select advanced options and set the limit to 1500 and click on accept and then click on import.
-- 4.it will display the raw data.

-- college_a_se:
-- open ms excel and click on data 
-- 1.click on mysql for excel.
-- 2.click on local instance mysql80 in that select the schema and click on next and choose college_a_se.
-- 3.click on import mysql data and then window will appear in that select advanced options and set the limit to 1500 and click on accept and then click on import.
-- 4.it will display the raw data.

-- college_a_sj:
-- open ms excel and click on data. 
-- 1.click on mysql for excel.
-- 2.click on local instance mysql80 in that select the schema and click on next and choose college_a_sj.
-- 3.click on import mysql data and then window will appear in that select advanced options and set the limit to 1500 and click on accept and then click on import.
-- 4.it will display the raw data.

-- college_b_hs:
-- open ms excel and click on data.
-- 1.click on mysql for excel.
-- 2.click on local instance mysql80 in that select the schema and click on next and choose college_b_hs.
-- 3.click on import mysql data and then window will appear in that select advanced options and set the limit to 1500 and click on accept and then click on import.
-- 4.it will display the raw data.

-- college_b_se:
-- open ms excel and click on data.
-- 1.click on mysql for excel.
-- 2.click on local instance mysql80 in that select the schema and click on next and choose college_b_se.
-- 3.click on import mysql data and then window will appear in that select advanced options and set the limit to 1500 and click on accept and then click on import.
-- 4.it will display the raw data.

-- college_b_sj:
-- open ms excel and click on data.
-- 1.click on mysql for excel.
-- 2.click on local instance mysql80 in that select the schema and click on next and choose college_b_sj.
-- 3.click on import mysql data and then window will appear in that select advanced options and set the limit to 1500 and click on accept and then click on import.
-- 4.it will display the raw data.


-- 6.Perform data cleaning on table College_A_HS and store cleaned data in view College_A_HS_V, Remove null values. 
CREATE VIEW college_a_hs_v AS
    SELECT 
        *
    FROM
        college_a_hs
    WHERE
        RollNo IS NOT NULL
            AND LastUpdate IS NOT NULL
            AND Name IS NOT NULL
            AND FatherName IS NOT NULL
            AND MotherName IS NOT NULL
            AND Branch IS NOT NULL
            AND Batch IS NOT NULL
            AND Degree IS NOT NULL
            AND PresentStatus  IS NOT NULL
            AND EntranceExam  IS NOT NULL
            AND Institute IS NOT NULL
            AND Location IS NOT NULL;
            
select * from college_a_hs_v;

-- 7.Perform data cleaning on table College_A_SE and store cleaned data in view College_A_SE_V, Remove null values.
CREATE VIEW college_a_se_v AS
    SELECT 
        *
    FROM
        college_a_se
    WHERE
        RollNo IS NOT NULL
            AND LastUpdate IS NOT NULL
            AND Name IS NOT NULL
            AND FatherName IS NOT NULL
            AND MotherName IS NOT NULL
            AND Branch IS NOT NULL
            AND Batch IS NOT NULL
            AND Degree IS NOT NULL
            AND PresentStatus  IS NOT NULL
            AND organization IS NOT NULL
            AND Location IS NOT NULL;
            
select * from college_a_se_v;

-- 8.Perform data cleaning on table College_A_SJ and store cleaned data in view College_A_SJ_V, Remove null values.
CREATE VIEW college_a_sj_v AS
    SELECT 
        *
    FROM
        college_a_sj
    WHERE
        RollNo IS NOT NULL
            AND LastUpdate IS NOT NULL
            AND Name IS NOT NULL
            AND FatherName IS NOT NULL
            AND MotherName IS NOT NULL
            AND Branch IS NOT NULL
            AND Batch IS NOT NULL
            AND Degree IS NOT NULL
            AND PresentStatus  IS NOT NULL
            AND organization  IS NOT NULL
            AND designation IS NOT NULL
            AND Location IS NOT NULL;
            
select * from college_a_sj_V;


-- 9.Perform data cleaning on table College_B_HS and store cleaned data in view College_B_HS_V, Remove null values.
CREATE VIEW college_b_hs_v AS
    SELECT 
        *
    FROM
        college_b_hs
    WHERE
        RollNo IS NOT NULL
            AND LastUpdate IS NOT NULL
            AND Name IS NOT NULL
            AND FatherName IS NOT NULL
            AND MotherName IS NOT NULL
            AND Branch IS NOT NULL
            AND Batch IS NOT NULL
            AND Degree IS NOT NULL
            AND PresentStatus  IS NOT NULL
            AND EntranceExam  IS NOT NULL
            AND Institute IS NOT NULL
            AND Location IS NOT NULL;
            
select * from college_b_hs_v;


-- 10.Perform data cleaning on table College_B_SE and store cleaned data in view College_B_SE_V, Remove null values.
CREATE VIEW college_b_se_v AS
    SELECT 
        *
    FROM
        college_b_se
    WHERE
        RollNo IS NOT NULL
            AND LastUpdate IS NOT NULL
            AND Name IS NOT NULL
            AND FatherName IS NOT NULL
            AND MotherName IS NOT NULL
            AND Branch IS NOT NULL
            AND Batch IS NOT NULL
            AND Degree IS NOT NULL
            AND PresentStatus  IS NOT NULL
            AND organization IS NOT NULL
            AND Location IS NOT NULL;
            
select * from college_b_se_v;


-- 11.Perform data cleaning on table College_B_SJ and store cleaned data in view College_B_SJ_V.
CREATE VIEW college_b_sj_v AS
    SELECT 
        *
    FROM
        college_b_sj
    WHERE
        RollNo IS NOT NULL
            AND LastUpdate IS NOT NULL
            AND Name IS NOT NULL
            AND FatherName IS NOT NULL
            AND MotherName IS NOT NULL
            AND Branch IS NOT NULL
            AND Batch IS NOT NULL
            AND Degree IS NOT NULL
            AND PresentStatus  IS NOT NULL
            AND organization  IS NOT NULL
            AND designation IS NOT NULL
            AND Location IS NOT NULL;
            
select * from college_b_sj;


-- 12.Make procedure to use string function/s for converting record of Name, FatherName, MotherName into lower case for views 
-- (College_A_HS_V, College_A_SE_V, College_A_SJ_V, College_B_HS_V, College_B_SE_V, College_B_SJ_V) 
-- college_a_hs:
delimiter //
create procedure hs()
begin 
select lower(Name) Name, lower(FatherName) FatherName, lower(MotherName) MotherName from college_a_hs_v;
end//
delimiter ;
drop procedure hs;
call hs();

-- college_a_se:
delimiter //
create procedure se()
begin 
select lower(Name) Name, lower(FatherName) FatherName, lower(MotherName) MotherName from college_a_se_v;
end//
delimiter ;
drop procedure se;
call se();

-- college_a_sj:
delimiter //
create procedure sj()
begin 
select lower(Name) Name, lower(FatherName) FatherName, lower(MotherName) MotherName from college_a_sj_v;
end//
delimiter ;
drop procedure sj;
call sj();

-- college_b_hs:
delimiter //
create procedure collegehs()
begin 
select lower(Name) Name, lower(FatherName) FatherName, lower(MotherName) MotherName from college_b_hs_v;
end//
delimiter ;
drop procedure collegehs;
call collegehs();

-- college_b_se:
delimiter //
create procedure collegese()
begin 
select lower(Name) Name, lower(FatherName) FatherName, lower(MotherName) MotherName from college_b_se_v;
end//
delimiter ;
drop procedure collegese;
call collegese();

-- college_b_sj:
delimiter //
create procedure collegesj()
begin 
select lower(Name) Name, lower(FatherName) FatherName, lower(MotherName) MotherName from college_b_sj_v;
end//
delimiter ;
drop procedure collegesj;
call collegesj();


-- 13.Import the created views (College_A_HS_V, College_A_SE_V, College_A_SJ_V, College_B_HS_V, College_B_SE_V, College_B_SJ_V) into MS Excel and make pivot chart for location of Alumni. 
-- check the screenshots

-- 14.Write a query to create procedure get_name using the cursor to fetch names of all students from college A.
delimiter ||
create procedure get_name()
begin
declare finished integer default 0;
declare student_info text;
declare student_name text default '';
declare studentdetail cursor for select name from college_a;
declare continue Handler for not found set finished=1;
open studentdetail;
firstname:loop
fetch studentdetail into student_info;
if finished=1 then leave firstname;
end if;
set student_name=concat(student_info,' ; ',student_name);
end loop;
select student_name;
close studentdetail;
end ||
delimiter ;
drop procedure get_name;
call get_name();


-- 15.Write a query to create procedure get_name using the cursor to fetch names of all students from college B.
delimiter ||
create procedure get_nameB()
begin
declare finished integer default 0;
declare student_info text;
declare student_name text default '';
declare studentdetail cursor for select name from college_b;
declare continue Handler for not found set finished=1;
open studentdetail;
secondname:loop
fetch studentdetail into student_info;
if finished=1 then leave secondname;
end if;
set student_name=concat(student_info,' ; ',student_name);
end loop;
select student_name;
close studentdetail;
end ||
delimiter ;
drop procedure get_nameB;
call get_nameB();


-- 16.Calculate the percentage of career choice of College A and College B Alumni (w.r.t Higher Studies, Self Employed and Service/Job) 
-- college_a
SELECT 
    'Percent in Higher studies' AS 'Percentage of Career choice',
    (COUNT(college_a_hs.rollno) / 5884) * 100 'College A'
FROM
    college_a_hs 
UNION SELECT 
    'Percent in Self Employes',
    (COUNT(college_a_se.rollno) / 5884) * 100
FROM
    college_a_se 
UNION SELECT 
    'Percent in Service/Job',
    (COUNT(college_a_sj.rollno) / 5884) * 100
FROM
    college_a_sj;
    
-- college_b:
select'Percent in Higher studies' as 'Percentage of Career choice', 
    (COUNT(college_b_hs.rollno) / 2259) * 100 'College B'
FROM
    college_b_hs 
UNION SELECT 
    'Percent in Self Employes',
    (COUNT(college_b_se.rollno) / 2259) * 100
FROM
    college_b_se 
UNION SELECT 
    'Percent in Service/Job',
    (COUNT(college_b_sj.rollno) / 2259) * 100
FROM
    college_b_sj;