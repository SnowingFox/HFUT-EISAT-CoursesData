-- ��������t�� �༶�����ſ�20-1�� ѧ�ţ�2020217793

/*
--1.������ͼ
  --��EDUC���ݿ��У���Student��Course ��SC��Ϊ�������һ����ͼ����:
--1)	������ͼV_SC_G������ͼ����Student�� Course ��SC����ѧ����ѧ�š��������γ̺š��γ����ͳɼ���
create view V_SC_G as	
	select s_id,s_name,c_id,c_name,sc_grade from student,sc,course where s_id = sc_id and c_id=sc_num

--2)����һ����ӳѧ��������ݵ���ͼV_YEAR������ͼҪ��ʹ��ϵͳ��������ȡ��ǰ���ڼ�ת����
  create view V_YEAR(s_id,birth) as
	select s_id,YEAR(GETDATE())-datediff(year,s_birth,getdate()) from student

--3)	������ͼV_AVG_S_G������ͼ����ӳѧ��ѡ�޿γ̵�������ƽ���ɼ���
create view V_AVG_S_G(sno,count,avg_grade) as
	select sc_id,count(*),avg(sc_grade) from sc group by sc_id

--4)	������ͼV_AVG_C_G������ͼ��ͳ�Ƹ��ſγ̵�ѡ��������ƽ���ɼ���
create view V_AVG_C_G(cno,count,avg_grade) as
	select sc_num,count(*),avg(sc_grade) from sc group by sc_num

--5)	����һ��ѧ����������Ӽ���ͼV_S������ͼ����ѧ����ѧ�š�������רҵ�ţ�
create view V_S as
	select s_id,s_name,t_mj from student

--6)	����һ����ͼV_SC������ͼ����ѧ�š��������γ̺š��ɼ���
create view V_SC as
	select s_id,s_name,c_id,sc_grade from sc,course,student where s_id=sc_id and c_id=sc_num

*/

/*
--2.ʹ����ͼ�����в���ֻ�������ͼ���У�
--1)	��ѯ������������ͼ�����
select * from V_SC_G
select * from V_YEAR
select * from V_AVG_S_G
select * from V_AVG_C_G
select * from V_S
select * from V_SC

--2)	��ѯƽ���ɼ�Ϊ90�ּ����ϵ�ѧ��ѧ�š������ͳɼ���
select distinct s_id,s_name,avg_grade from V_SC_G,V_AVG_S_G where sno = s_id and avg_grade>90

--3)	��ѯ��Ŀ�ɼ�����ƽ���ɼ���ѧ��ѧ�š��γ̺š��ɼ���ƽ���ɼ���
select distinct s_id,cno,sc_grade,avg_grade from V_AVG_C_G,V_SC where cno = c_id and sc_grade >= avg_grade

--4)	��ѯ2000�������ѧ��ѧ�ź�������
select V_S.s_id,s_name from V_S,V_YEAR where V_S.s_id = V_YEAR.s_id and birth = 2003

--5)	��ѧ������������רҵ�Ÿ�Ϊ��03�� ��������ʵ�����ݶ�������
update V_S set t_mj = 23 where s_name='��t��'

--6)	������ͼV_SC��ѧ��Ϊ��20180001�����γ̺�Ϊ��c111���ĳɼ���Ϊ85�֡�
update V_SC set sc_grade = 85 where s_id = 2020217999
*/

