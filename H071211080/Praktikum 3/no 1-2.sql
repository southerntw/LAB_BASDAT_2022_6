use ClassicModels;

desc employees;

insert into employees values(804,"inzani","firah","+62","firahinzani@gmail.com","3",03,"manajer"),
(805,"boro","dirgantry","+62","dirgantry@gmail.com","1",02,"manajer"),
(702,"lisa","mona","+62","lisa@gmail.com","2",01,"CEO");


select * from employees;
select * from offices;
 INSERT INTO offices VALUE ('8','america', '+8232456785', 'steak', 'batam','Yah','IND','23361', 'America');
UPDATE employees SET officeCode=8 where jobTitle= 'Sales Rep' AND officeCode=4;
delete from offices where officeCode = 12;






