create table student (
     Name varchar(60) NOT NULL,
     Marks int NOT NULL,
     Gender varchar(80) NOT NULL,
     Email varchar(60) NOT NULL primary key
  );   
SELECT * FROM tanu.student;
insert into student (Name,Marks,Gender,Email)
VALUES ('Archana',99.0,'Female','Archana@gmail,com');

#check first 3 rows 
select * from student
limit 3;

#create index
create index s_no on student (Name,Marks,Gender,Email);

#check last 3 rows
select * from student
order by Name DESC
limit 3;

#find the shape of our table

select count(*) from student;          #for row count
select count(*) from information_schema.columns
where table_name='student';               #for column count

#descriptive information 
describe student;

#SELECT THE student who scored highest marks
select Name,max(Marks) from student;

#check null values in dataset
select * from student
where Marks IS NULL;

#unique values for particular columns
select distinct Gender from student;

#count of unique values 
select count(distinct Gender) from student;

#total number of students having marks between 90 to 100
select * from student
where Marks between 90 and 100;

#find the average marks
select avg(Marks) from student;

#drop column
alter table student
drop column Marks;

#to drop table
Drop table student;

#to print the name of columns

#sort the dataframe as per the marks column
select * from student
order by Marks Asc;

#display name & marks of the female students
select Name , Marks from student
where Gender ='Female';


#other extra functions in sql



#--------------------------------NUMBER FUNCTION----------------------------------------------------------------------------

#round function
select round(avg(Marks)) from student;

#truncate function
select truncate(avg(Marks),2) from student;

#mod function
select mod(avg(Marks),2) from student;      #avg(Marks)/2


#---------------------------------------------CHARACTER FUNCTION-----------------------------------------------

#CASE MANIPULATION--------------------
#lower function
select lower(Name) from student;
#upper function
select upper(Name) from student;

#CHARACTER MANIPULATION----------------
#concatenate two strings
select concat('this is ','sql analysis') as new;
#substr
select substring('Name',1,3);
#length()
select length(Name) from student;

#instr()
select instr("i m tanu",'tanu');
#trim()------it remove leading and trailing space
select  TRIM('      tanu   rajput   ');

#replace()
select replace('sql is easy','is','easy');




#----------------------------------------------DATE FUNCTION----------------------------------------------------

#month_between

#add_months

#next_day


#last_day


#round()


#truncate()



#---------------------------------------------------------GENERAL FUNCTION-------------------------------------------------------------------------

#null

#nullif()


#coalesce()


#case


#decode()



#-------------------------------------------------------------------------DATE TYPE------------------------------------------------------------
#to_char


#to_number


#to_date


#-------------------------------------------------------------------AGGREGATE FUNCTION------------------------------------------------------------------

                  #sum()
                  #min()
                  #max()
                  #count()
                  #avg()

