-- ��������t�� �༶�����ſ�20-1�� ѧ�ţ�2020217793
-- �������ݿ⣨EDUC��

create database EDUC
on (
	name=EDUC_data,
	filename='E:\MYDB\EDUC.mdf',
	size=10,
	maxsize=60,
	filegrowth=5%
)
log on(
	name=EDUC_log,
	filename='E:\MYDB\EDUC.ldf',
	size=4,
	maxsize=10,
	filegrowth=1
)



-- �������ݿ⣨TestDB)
/*
create database TestDB
on (
	name=TestDB_data,
	filename='E:\MYDB\TestDB.mdf',
	size=10,
	maxsize=60,
	filegrowth=5%
)
log on(
	name=TestDB_log,
	filename='E:\MYDB\TestDB.ldf',
	size=4,
	maxsize=10,
	filegrowth=1
)
*/

-- ɾ��TestDB���ݿ�
--drop database TestDB

-- ���õ�ǰ���ݿ�ΪEDUC
--use EDUC

