-- ��������t�� �༶�����ſ�20-1�� ѧ�ţ�2020217793

/*
--1. �����ѯ
��1����ѯȫ��ѧ������Ϣ��
select * from student

��2������רҵ��Ų�ѯѧ����ѧ�š��Ա�����䣻
select * from student where t_mj = 22;

��3����ѯδ�趨���޿ε����пγ̵���Ϣ��
select * from course where course.c_prec is null

��4����ѯѡ���ˡ�C101����ѧ����ѧ�趨�γ̺ţ��ſγ̣��ҳɼ��ﵽ80�ֵ�ѧ�š�
select sc_id from sc where sc_num = 1071 and sc_grade > 80;
*/


--2. ������Ӳ�ѯ
   --��1����ѯ�������ϵ��ȫ��ѧ����ѧ�š�������רҵ���ƣ�
--select s_id,s_name,m_name from student,major where m_id = t_mj and m_department=1001

   --��2����ѯ�ǡ�������̡�רҵ������С��20��ѧ����Ϣ��
--select * from student where t_mj <> 23 and datediff(year,s_birth,getdate()) < 20

   --��3����ѯ���޿��ǡ�����ϵͳ�������пγ̵���Ϣ��
--select * from course where c_prec = 1094

   --��4����ѯ����ѡ���ˡ�c110���͡�c210�����γ̺���ѧ����ѧȷ�������γ̵�ѧ��ѧ�ź�������
--select s_id,s_name from student,sc where sc_num=1071 and sc_id = s_id and exists (select * from sc sc2 where sc_num = 1080 and sc_id = s_id)

   --��5����ѯδѡ�ޡ���������硱�γ̵�ѧ��ѧ�š��������Ա��רҵ�ţ�
--select s_id, s_name, s_sex, t_mj from student,sc where sc_num <> 1094 and sc_id=s_id

   --��6����ѯδѡ���κογ̵�ѧ��ѧ�ź�������
--select s_id,s_name from student,sc where sc_id = s_id and s_name is null

   --��7����ѯδ��ѧ��ѡ�޵Ŀγ̺š��γ��������޿Ρ�
--select distinct c_id,c_name,c_prec from course,sc where c_id not in (select distinct sc_num from sc)

   --��8����������ϵ��ѯƽ���ɼ��ﵽ90�ֵ�ѧ��ѧ�š�������ƽ���ɼ���
--select s_id 'ѧ��',s_name '����',avg_grade 'ƽ���ɼ�' from student,(select sc_id,avg(sc_grade) as avg_grade from sc group by sc_id) as sc_avg where avg_grade>90 and sc_avg.sc_id = student.s_id

   --��9����ѯѧ����ѧ�ţ�ֻҪ���޿��ǡ�c331���Ŀγ����Ƕ�ѡ���ˡ�
--select distinct sc_id from sc sc1 where not exists (select * from course where c_prec = 1071 and not exists (select * from sc sc2 where sc2.sc_num = course.c_id and sc2.sc_id = sc1.sc_id))

   --��10����ѯδ�μӿγ̡�c209�����Ե�ѧ��������ѧ�š�������רҵ�ţ���
--select s_id,s_name,t_mj from student,sc where sc_id = s_id and sc_num = 1070 and sc_grade is null

