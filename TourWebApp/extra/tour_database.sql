--�������ݿ�
create database tour;

use tour;

--�����������Ա�
create table devtest(
id varchar(255),
name varchar(255),
age int
);

select * from devtest;

--�����û���Ϣ��
create table userinfo(
id varchar(255),
nick varchar(255),
sex int,
type int
);

select * from userinfo;

--������¼��Ϣ��
create table tokeninfo(
id varchar(255),
logintime datetime,
token varchar(255)
);

select * from tokeninfo;