#include<stdio.h>
#include<stdlib.h>

#define  N  5
struct  student
{
	char  szName[10] ;
    long  lID ;
    int iScore ;
};


int  main (void)
{
	int  i,iNum;
	FILE  *pFileSource;
	struct  student stud[N],stTmp;
	pFileSource = fopen("std.lst", "wb+");
	if (pFileSource == NULL)
	{
		exit(1);
	}
	for (i = 0; i < N; i++)
	{
		printf("�����%d���˵�������",i+1);
		gets(stud[i].szName);
		fflush(stdin);
		printf("�����%d���˵�ѧ�ţ�",i+1);
		scanf("%ld",&stud[i].lID);
		fflush(stdin);
		printf("�����%d���˵ĳɼ���",i+1);
		scanf("%d",&stud[i].iScore);
		fflush(stdin);
		fwrite((void *)(stud + i),sizeof(struct student),1,pFileSource);
	}
    rewind(pFileSource);

	for (i = 0; i < N; i++)
	{
		fread (&stTmp, sizeof (struct  student ), 1 , pFileSource);
		printf("������%s\tѧ�ţ�%ld\t�ɼ���%d\n",stTmp.szName,stTmp.lID,stTmp.iScore);
	}

	printf("������ţ�1��%d :",N);
    scanf("%d",&iNum);
	fseek( pFileSource, (iNum - 1)*sizeof( struct  student ) ,SEEK_SET);
	fread (&stTmp, sizeof (struct  student ), 1 , pFileSource);
	printf("������%s\tѧ�ţ�%ld\t�ɼ���%d\n",stTmp.szName,stTmp.lID,stTmp.iScore);

	fclose(pFileSource) ;

	return 0;
}
