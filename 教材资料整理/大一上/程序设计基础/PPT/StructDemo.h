/*------------------------------------------------
    Filename:StructDemo.h
    Purpose: Define Data struct declear function
             etc.
    Date��2018.4.26
------------------------------------------------*/
#ifndef STRUCTDEMO_H_INCLUDED
#define STRUCTDEMO_H_INCLUDED

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//#define DEBUG
#define FILEERROR 1
#define STUNUM  84

struct stu
{
    long lStuID;        //ѧ��
    char szName[20];    //����
    char szNCName[20];  //��Ȼ��
    char szTCName[20];  //��ѧ��
    char szCoName[20];  //�γ�����
    float fScore[4];    //�ɼ�
};

int getData(struct stu *);//Get data from file stinf.csv
void DisplayData(struct stu *,int);//Display data
int iCompare(const void *,const void *);

#endif // STRUCTDEMO_H_INCLUDED
