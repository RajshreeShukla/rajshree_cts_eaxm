use ctspune;
create  table account_master(account_number varchar(6) primary key,customer_number varchar(6),
branch_id varchar(6),opening_balance int,account_opening_date date, customer_type varchar(10), account_status varchar(10),
foreign key (customer_number) references customer_master(customer_number),
foreign key(branch_id) references branch_master(branch_id));
iNSERT INTO account_master values(123123,121,1001,1200,"2019-06-23","Premeium","Active");
iNSERT INTO account_master values(123231,123,1003,1200,"2019-04-21","Premeium","Active");
iNSERT INTO account_master values(123567,122,1002,1200,"2018-11-03","Premeium","Active");

create  table branch_master(branch_id varchar(6) primary key,branch_name varchar(30), bnch_city varchar(30));
insert into branch_master values(1001,"Vijaynagar","Indore");
insert into branch_master values(1002,"Wakad","Pune");
insert into branch_master values(1003,"Pillinav","Hyderabad");

 create  table loan_detail(customer_number varchar(6) ,branch_id varchar(30), loan_amount int ,foreign key(branch_id) references branch_master(branch_id), foreign key (customer_number) references customer_master(customer_number));
insert into loan_detail values(121,1001,2300000);
insert into loan_detail values(122,1002,2000000);
insert into loan_detail values(123,1003,2400000);
                                 
create  table customer_master(customer_number varchar(6) primary key,firstname varchar(30),middlename varchar(30),lastname varchar(30),customer_city varchar(15), customer_contact_number varchar(10), occupation varchar(20),customer_date_of_birth date);
insert into customer_master values(121,"Aryan","Prabha"," Chaudhary","Pune",123123,"Doctor","1997-03-27");
insert into customer_master values(122,"Vaibhavi","Singh","Kaur","Hyderabad",432432,"Engineer","1992-11-05");
insert into customer_master values(123,"Atharv","Kumar","Rathod","Indore",123123,"Architect","1991-06-21");


create  table transaction_details(transaction_number varchar(6) primary key ,account_number varchar(6),
date_of_transaction date,medium_of_transaction varchar(20),
transaction_type varchar(20),transaction_amount int,foreign key (account_number) references account_master(account_number));
insert into transaction_details values (232323,123123,"2019-08-21","UPI","online",25000);
insert into transaction_details values (232345,123231,"2019-04-30","UPI","online",21000);
insert into transaction_details values (236723,123567,"2019-01-31","UPI","online",34000);











