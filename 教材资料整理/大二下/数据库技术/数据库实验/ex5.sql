-- ��������t�� �༶�����ſ�20-1�� ѧ�ţ�2020217793

--1. ���ݲ������
	--���ν�׼���õ�������Insert Into��佫���ݲ�����Ӧ�Ļ�����
--��1��	��ȷ���ݵĲ�����룬��Щ����Ӧ�ò���Υ��������Լ��
--��2��	ע���������Ⱥ����˳�������������ԡ��ر�Ҫע��γ̱�����ݲ���������������Ĳ�ͬ��
--��3��	��ÿһ�������������������ݣ���Щ����Ӧ��������׼���ã���Υ���˻������ĳһ��Լ�������ġ�
/*
insert into department values('1001','���������Ϣϵ','������',12345678910,'����ʡ');
insert into department values('1002','�ķ�ϵ','������',12345678910,'�Ϻ���');
insert into department values('1003','����ϵ','����',12345678910,'������');
insert into department values('1004','����ϵ','�',12345678910,'�����');
insert into major values(21,'����������','1001');
insert into major values(22,'�������ѧ�뼼��','1001');
insert into major values(23,'�˹����ܻ���','1001');
insert into major values(31,'�ܷ�','1002');
insert into major values(32,'���編','1002');
insert into major values(41,'����Ӣ��','1003');
insert into major values(51,'��е����','1004');
insert into major values(52,'�Զ���','1004');
insert into student values(2020217793,'��t��','��','2003-02-05',21);
insert into student values(2020217123,'������','Ů','2002-02-04',21);
insert into student values(2020217111,'�׽�','Ů','2002-06-23',41);
insert into student values(2020217222,'����','Ů','2002-06-23',41);
insert into student values(2020217333,'����','��','2002-01-14',22);
insert into student values(2020217444,'����','��','2002-10-14',22);
insert into student values(2020217555,'����','��','2002-06-29',23);
insert into student values(2020217666,'�Ƴ���','��','2002-09-29',23);
insert into student values(2020217777,'����','Ů','2002-11-04',32);
insert into student values(2020217888,'����','Ů','2002-9-04',32);
insert into student values(2020217999,'��ʮ','Ů','2001-5-23',31);
insert into student values(2020217000,'�����','��','2002-5-11',31);
insert into student values(2020217010,'֣����','��','2001-09-14',51);
insert into student values(2020217020,'������','��','2002-11-04',51);
insert into student values(2020217030,'֣��','��','2001-06-27',52);
insert into student values(2020217040,'��־Զ','��','2002-10-27',52);
insert into course values(1071,'��еԭ��',6,null);
insert into course values(1080,'��ѧӢ��',3,null);
insert into course values(1090,'�ߵ���ѧ',6,null);
insert into course values(1094,'������ƻ���',5,null);
insert into course values(1097,'���������������',3,1094);
insert into course values(1081,'����Ӣ�ｻ��',5,1080);
insert into course values(1095,'������������ͳ��',5,1090);
insert into course values(1096,'΢��ԭ����ӿڼ���',4,1097);
insert into course values(1010,'JAVA����',4,1094);
insert into course values(1011,'����ѧϰ',3,1095);
insert into course values(1012,'˼����������뷨�ɻ���',3,null);
insert into course values(c104,'��ѧרҵ����',3,1012);
insert into course values(1073,'�Զ����Ƽ���',6,null);
insert into sc values(2020217793,1071,95);
insert into sc values(2020217123,1071,95);
insert into sc values(2020217111,1071,95);
insert into sc values(2020217222,1071,95);
insert into sc values(2020217333,1071,95);
insert into sc values(2020217444,1071,95);
insert into sc values(2020217555,1071,95);
insert into sc values(2020217666,1071,95);
insert into sc values(2020217777,1071,95);
insert into sc values(2020217888,1071,95);
insert into sc values(2020217999,1071,95);
insert into sc values(2020217000,1071,95);
insert into sc values(2020217010,1071,95);
insert into sc values(2020217020,1071,95);
insert into sc values(2020217030,1071,95);
insert into sc values(2020217040,1071,95);
insert into sc values(2020217864,1080,90);
insert into sc values(2020217111,1080,90);
insert into sc values(2020217222,1080,90);
insert into sc values(2020217333,1080,90);


-- ������������
insert into department values(5,null,'�ƶ���',11234565856,'����ʡ������');
insert into major values(50,null,'1001')
*/
--2�������޸�
    --��Update ��������������
--��1���޸�ĳλѧ����רҵ�ţ�Ҫ��������޸����ɹ�ִ�к��޸Ĳ������ܾ��������Ρ�
update student set t_mj = 22 where s_id = '2020217793';
update student set t_mj = 99999 where s_id = '2020217793';

--��2���޸�ĳ�ſ�ѧ���ĳɼ���ѧ�����γ̼��ɼ���ѧ������ȷ����
update sc set sc_grade = 98 where sc_id = 2020217793

--��3����ѡ�α���50~59֮��ĳɼ���������10�֡�
update sc set sc_grade = sc_grade+10 where sc_grade >50 and sc_grade<59

--��4������Java���ԡ��γ̵����޿θ�Ϊ��c209�������ɸ��ݱ������ݵ����������ݣ�
update course set c_prec = 1094 where c_name = 'JAVA����';


--3. ����ɾ��
	--��Delete from��������������
--��1��	����ѧ�����в���һ��רҵ��Ϊ��ֵ��Ԫ�顣
--insert into student values(849935737,'����ķ�ʨ��','��','2003-02-05',null);

--��2��	ɾ��ѧ����������δ�趨רҵ�ŵ�ѧ����
--delete from student where t_mj is null