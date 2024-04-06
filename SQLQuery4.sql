go
use LibraryManagementSystem

go 
create table dbo.account (
    username varchar(100) primary key not null,
    u_password varchar(100) not null,
    u_role varchar(10) null
)
insert into dbo.account values ('admin', 'admin', 'Librarian')
insert into dbo.account values ('students', 'students', 'Student')
insert into dbo.account values ('stranger', 'stranger', 'Stranger')