--创建数据库
create database tour;

use tour;

--创建开发测试表
create table devtest(
id varchar(255),
name varchar(255),
age int
);

select * from devtest;

--创建用户信息表
create table userinfo(
id varchar(255),
nick varchar(255),
sex int,
type int
);

select * from userinfo;

--创建登录信息表
create table tokeninfo(
id varchar(255),
logintime datetime,
token varchar(255)
);

select * from tokeninfo;