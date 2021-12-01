
#include "my.h"

int main(void)
{
  /*����ṹ��ָ�룬����ָ��̬�����ڴ���׵�ַ*/
	STUDENTINF  *pStru;
  /*�����ļ�ָ��*/
	FILE  *pFile;
    int  i;
	int  iNum;			/*�������*/
	int  iFunIndex;     /*���ѡ�������ܱ���*/
	int  iSubIndex;     /*���ѡ���ӹ��ܱ���*/
	int  iScoreSel;     /*ѡ��Ŀγ�*/
    long lNumSearch;    /*��Ų�ѯ�����ѧ��*/
    char szTemp[10];    /*��ʱ�ַ��������ڴ�������ַ���*/
    int  iScoreSeg[5];  /*��Ÿ���������������*/
    /*��ѭ��*/
    do{
		 /*�����û����棬���������ܱ���*/
		iFunIndex = UserSel();
        system("cls");           /*����*/
        switch(iFunIndex)
		{
		case DATAINPUT:  /*�������빦��*/
			printf("��ʼ���룺\n");
            printf("������ѧ������:  ");
		    gets(szTemp);
            iNum = atoi(szTemp);

		    if((pFile = fopen("stuinfo.dat","w")) == NULL)
			{
                printf("�ļ���ʧ�ܣ�ϵͳ�˳���");
				exit(1);
            }/* end if*/

            fwrite(&iNum,sizeof iNum,1,pFile);/*����д���ļ�*/
					 /*Ϊ���ݶ�̬�����ڴ�*/
			pStru = (STUDENTINF *)malloc(iNum * sizeof(STUDENTINF));
			if(pStru == NULL)
			{
				printf("�ڴ����ʧ�ܣ�ϵͳ�˳���");
				exit(1);
			}
			for(i = 0; i < iNum; i++)
			{
				InputMessage(pStru + i);   /*ѭ����������*/
			}
           /*д������ļ�*/
			fwrite(pStru,sizeof(STUDENTINF),iNum,pFile);

			for(i=0; i < iNum; i++)
			{
				PrintMessage(pStru + i);
			}

			fclose(pFile);
            free(pStru);
			system("pause");
            break; /*���빦�ܽ���*/

        case DATAMODIF:  /*��ѧ���޸�����*/
            if((pFile = fopen("stuinfo.dat","r+"))==NULL)
			{
                printf("�ļ��򿪴���ϵͳ�˳���");
				exit(1);
			}

            fread(&iNum,sizeof iNum,1,pFile);

            pStru = (STUDENTINF *)malloc(iNum * sizeof(STUDENTINF));
            if(pStru == NULL)
            {
                printf("�ڴ����ʧ�ܣ�ϵͳ�˳���");
				exit(1);
            }
            fread(pStru,sizeof(STUDENTINF),iNum,pFile);

            printf("��������Ҫ�޸�����ѧ����ѧ��:");
            gets(szTemp);
            lNumSearch = atol(szTemp);

            for(i = 0 ;i < iNum; i++)
            {
                if(lNumSearch == pStru[i].lId)
                {
                    break;
                }
            }
            if(i < iNum)
            {
                InputMessage(pStru + i);
            }
            else
            {
                printf("�޴�ѧ��\n");
            }
            rewind(pFile);
            fwrite(&iNum,sizeof iNum,1,pFile);
            fwrite(pStru,sizeof(STUDENTINF),iNum,pFile);


            for(i=0;i < iNum; i++)
            {
                PrintMessage(pStru + i);
            }
            fclose(pFile);
            free(pStru);
            system("pause");
            break;

        case MANAGFUN:   /*�ɼ�����ѡ��*/

		    printf("ѡ����Ҫ�Ĳ���:\n");
            iSubIndex = MangSel( );
            if((pFile = fopen("stuinfo.dat","r+"))==NULL)
            {
                printf("�����ļ�������ѡ���һ����������ԣ�ϵͳ�˳���");
                exit(1);
            }
            fread(&iNum,sizeof (iNum),1,pFile);

		    pStru = (STUDENTINF *)malloc(iNum*sizeof(STUDENTINF));
		    if(pStru == NULL)
		    {
			    printf("�ڴ����ʧ�ܣ�ϵͳ�˳���");
                exit(1);
		    }

    	    fread(pStru,sizeof(STUDENTINF),iNum,pFile);

            switch(iSubIndex)
            {
            case SCORSTAT:  /*ͳ����ѡ�γ̸��������ε�����*/
                printf("������Ҫͳ�ƵĿγ�,1��2��Ϊ���ſγ̣�3��ƽ������:");
                gets(szTemp);
                iScoreSel = atoi(szTemp)-1;
                StatiScore(pStru,iScoreSel,iScoreSeg,iNum);

                if(iScoreSel > 0&& iScoreSel <2)
                {
                    printf("��%d�ſγ̸������ε�������\n",iScoreSel+1);
                    printf("90������������  \t%-5d\n",iScoreSeg[0]);
                    printf("80�ֵ�89��������\t%-5d\n",iScoreSeg[1]);
                    printf("70�ֵ�79��������\t%-5d\n",iScoreSeg[2]);
                    printf("60�ֵ�69��������\t%-5d\n",iScoreSeg[3]);
                    printf("������������    \t%-5d\n",iScoreSeg[4]);
                }
                else
                {
                    printf("ƽ���ɼ��������ε�������\n");
                    printf("90������������  \t%-5d\n",iScoreSeg[0]);
                    printf("80�ֵ�89��������\t%-5d\n",iScoreSeg[1]);
                    printf("70�ֵ�79��������\t%-5d\n",iScoreSeg[2]);
                    printf("60�ֵ�69��������\t%-5d\n",iScoreSeg[3]);
                    printf("������������    \t%-5d\n",iScoreSeg[4]);

                }
                break;
            case SCORSORT:  /*����ѡ�γ�����*/
                printf("������Ҫ����Ŀγ̱��1��2��3:\t");
                gets(szTemp);
                iScoreSel = atoi(szTemp)-1;
                SortScore(pStru,iScoreSel,iNum);
                for(i = 0; i < iNum; i++)
                {
                    PrintMessage(pStru + i);
                }

                break;

            case SCORSEAR: /*������ѧ�Ų�ѯ*/
                printf("������Ҫ���ҵ�ѧ��:\t");
                gets(szTemp);
                lNumSearch = atol(szTemp);
                for(i = 0;i < iNum; i++)
                {
                    if(lNumSearch == pStru[i].lId)
                    {
                        break;
                    }
                }
                if(i < iNum)
                {
                    PrintMessage(pStru + i);
                }
                else
                {
                    printf("�޴�ѧ��");
                }

            }
            fclose(pFile);
            free(pStru);
            system("pause");
            break;
        case EXIT:
            exit(0);       /*�˳�ϵͳ*/
        }
    }while(iFunIndex != EXIT);/*End of  doѭ����ʾ�������û�*/

}

/*---------------------------------------------
/   ��������UserSel
/   ��  �ã��û���ѡ�����
/   ��  ������
/   ����ֵ���û�ѡ�������Σ���Χ1~4
/--------------------------------------------*/
int UserSel(void)
{
  char  szBuff[3];

  do{
      system("cls");
	  printf("-------------��ӭʹ�ñ�ϵͳ--------------\n");
      printf("\t1:����ԭʼ�ɼ�����\n");
      printf("\t2:����ѧ�ţ��޸�����\n");
      printf("\t3:�ɼ�����\n" );

      printf("\t4:�˳�ϵͳ\n" );

      printf("\n��ѡ��(1~4):");
      gets(szBuff);

      if(szBuff[0] > '4' || szBuff[0] < '1')
         Bell();
      else
         break;

    }while(szBuff[0] > '4' || szBuff[0] < '1');

    return szBuff[0]-'0';
}

/*---------------------------------------------
/   ��������InputMessage
/   ��  �ã�����һ��ѧ������Ϣ
/   ��  ����ָ��STUDENTINF��ָ��
/   ����ֵ����
/--------------------------------------------*/
void  InputMessage(STUDENTINF *p)
{
    char  strTmp[15];
    int  i,sum=0;

    printf("������ѧ��:");
    gets(strTmp);
    p->lId = atol(strTmp);
    printf("����������:");
    gets(p -> strName);

    for(i = 0;i < 2; i++)
    {
        printf("������� %d �ſεĳɼ���",i + 1);
        gets(strTmp);
        p -> iScore[i] = atoi(strTmp);
        sum += p -> iScore[i];
    }
    p -> iScore[2] = (int)((double)sum/2 + 0.5);
 }

/*---------------------------------------------
/   ��������MangSel
/   ��  �ã��ɼ�������ѡ��
/   ��  ������
/   ����ֵ���û�ѡ�����ݣ����Σ���Χ1~3
/--------------------------------------------*/
int MangSel(void)
{
    char  szBuff[3];
    do{
        system("cls");
        printf("------------�ɼ�����------------\n");
        printf("\t1:ͳ�Ƹ��������ε�����\n");
        printf("\t2:����ѡ�γ�����\n");
        printf("\t3:����ѧ�ź����\n" );

        printf("������ѡ��(1~3):");
        gets(szBuff);
        if(szBuff[0] > '3' || szBuff[0] < '1')
        {
            Bell();
        }
        else
        {
            break;
        }


    }while(szBuff[0] > '3' || szBuff[0] < '1');

    return szBuff[0]-'0';
}

/*---------------------------------------------
/   ��������StatiScore
/   ��  �ã�ͳ�Ƹ�������������
/   ��  ����pStu��ָ��STUDDENTINF��ָ�룬���ݳɼ��ṹ���׵�ַ
/           pScore��ָ�����͵�ָ�룬���ݸ�������������׵�ַ
/           iSelCore�����ͣ�������ѡ�γ�
/           iNum,����,��������
/   ����ֵ����
/--------------------------------------------*/
void StatiScore(STUDENTINF *pStu,int iSelScore,int *pScore,int iNum)
{
    int i;
    for(i = 0; i < 5 ; i++)
    {
        pScore[i]=0;
    }

    for(i = 0; i < iNum; i++)
    {
        if((pStu+i)->iScore[iSelScore] >= 90)
        {
            pScore[0]++;
        }
        else if((pStu+i)->iScore[iSelScore] >= 80)
        {
            pScore[1]++;
        }
        else if((pStu+i)->iScore[iSelScore] >= 70)
        {
            pScore[2]++;
        }
        else if((pStu+i)->iScore[iSelScore] >= 60)
        {
            pScore[3]++;
        }
        else
        {
            pScore[4]++;
        }
    }

}

/*---------------------------------------------
/   �������� SortScore
/   ��  �ã� ��ѡ���γ�����
/   ��  ���� pStu��ָ��STUDDENTINF��ָ�룬���ݳɼ��ṹ���׵�ַ
/            iSelCore�����ͣ�������ѡ�γ�
/            iNum,����,��������.
/   ����ֵ�� ��
/--------------------------------------------*/
void SortScore(STUDENTINF *pStu,int iSelScore,int iNum)
{
    int i,j,iMaxPos;
    STUDENTINF  Temp;
    for(i = 0; i < iNum - 1; i++)
    {
        iMaxPos = i;
        for(j = i + 1;j < iNum; j++)
        {
            if((pStu+iMaxPos)->iScore[iSelScore]<(pStu+j)->iScore[iSelScore])
			{
				 iMaxPos = j;
			}
        }
        if(iMaxPos != i)
        {
            Temp = *(pStu+i);
            *(pStu+i) = *(pStu+iMaxPos);
            *(pStu+iMaxPos) = Temp;
        }
    }
}

/*---------------------------------------------
/   ��������PrintMessage
/   ��  �ã����ѡ��ѧ������Ϣ
/   ��  ����pStu��ָ��STUDDENTINF��ָ�룬���ݽṹ��ַ
/
/   ����ֵ����
/--------------------------------------------*/
void PrintMessage(STUDENTINF *pStu)
{
    printf("ѧ��:%-8d ������%-8s   ���ſγ̳ɼ���%-4d %-4d  ƽ���ɼ���%-4d\n",
            pStu->lId, pStu->strName,pStu->iScore[0],pStu->iScore[1],pStu->iScore[2]);
}

/*---------------------------------------------
/   ��������Bell
/   ���ã�  ���������ʾ
/   ������  ��
/   ����ֵ����
/--------------------------------------------*/
void Bell(void)
{
    printf("\007");
}
