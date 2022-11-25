#include "strings.h"
#include <QDebug>
Strings::Strings(QObject *parent):QObject(parent){
}
void Strings::add(QString srt)
{
    strings.append(srt);
}
void Strings::pop()
{
    if(strings.length()!=0){
    strings.pop_back();}
}
QString Strings::getStr()
{
    QString res="";
    if(strings.length()>=1){

        strings[0] = strings[0][0].toUpper () + strings[0].mid (1, strings[0].size () - 1).toLower ();
        res+=strings[0]+", ";

    }
    for(int i=1;i<strings.length();i++){
        res+=strings[i]+", ";
    }
    res.resize(res.size()-2);
    return res;
}
