/*drop schema resume;*/
create schema resume;
use resume;

-- Main Tables:
create table Applicant (ApplId int not null auto_increment primary key, FirstName varchar(50), LastName varchar(50), Email varchar(50));
-- (here we populate Applicants running the provided and modified SQL script, Applicant.sql)
create table Education (EducId int not null auto_increment primary key, Education varchar(50));
-- (here we populate Education with education Education.sql)
create table Experience (ExpeId int not null auto_increment primary key, Experience varchar(50));
-- (here we populate Experience with Experience.sql)
create table Skills (SkilId int not null auto_increment primary key, Skill varchar(50));
-- (here we populate Skills with Skills.sql)

-- Relational Tables:
create table AppEdu (ApplId int, EducId int);
create table AppExp (ApplId int, ExpeId int);
create table AppSki (ApplId int, SkilId int);
