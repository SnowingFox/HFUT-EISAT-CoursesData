-- ��������t�� �༶�����ſ�20-1�� ѧ�ţ�2020217793

--�����ݿ�EDUC����SQL���ʵ�����²�ѯ��
--1)	��ѯѧ������������
select count(*) from student

--2)	��ѯÿ��רҵ��רҵ��š�רҵ���ơ�ѧ��������ѧ����ƽ�����䡣
select m_id רҵ��,m_name רҵ�� ,count(*) ѧ������,avg(datediff(year,s_birth,getdate())) ƽ������ from major,student where t_mj = m_id group by m_id,m_name

--3)	��ѯѡ���˿γ̵�ѧ��������
select count(distinct sc_id) from sc

--4)	��ѯѡ���˿γ̡�c218�����ҳɼ������ÿγ�ƽ���ɼ���ѧ��ѧ�š�������
select s_id,s_name from student,sc where sc_num=1071 and sc_id=s_id and sc_grade>(select avg(sc_grade) from sc where sc_num = 1071)

--5)	��ѯÿ�ſεĿγ̺š�ѡ��������ƽ���ɼ�����߷ֺ���ͷ֡�
select c_id �γ̺�,count(sc_id) ѡ������,avg(sc_grade) ƽ���ɼ�,max(sc_grade) ��߷�,min(sc_grade) ��ͷ� from course,sc where c_id=sc_num group by c_id

--6)	��ѯѡ�޿γ̳���2 �ſε�ѧ��ѧ�ź�������
select s_id,s_name from student,sc where s_id = sc_id and exists(select sc_id,count(sc_num) from sc sc1 where sc.sc_id=sc1.sc_id group by sc_id having count(*)>=2)




