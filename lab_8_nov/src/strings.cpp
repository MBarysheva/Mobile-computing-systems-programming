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
        if(strings[i].length()==0){
           return res;
        }
        else {
        res+=strings[i]+", "; }

    }
    res.resize(res.size()-2);
    return res;
}


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
//        if(strings.length()>=1){
//            strings[0] = strings[0][0].toUpper () + strings[0].mid (1, strings[0].size () - 1).toLower ();
//            res+=strings[0]+", ";

//     }



    for(int i=0;i<strings.length();i++){
        for (int j = 0; j < strings[i].length(); j++){
            if(strings[i][j] == 'e' || strings[i][j] == 'y' || strings[i][j] == 'u'
                            || strings[i][j] == 'i' || strings[i][j] == 'o' || strings[i][j] == 'a'
                            )
            { strings[i] = strings[i][j].toUpper() + strings[i].toLower ();
                 res+=strings[i]+", ";
            }
        }
//        for(int i=0;i<strings.length();i++){
//            if(strings[i].length()==0){
//                return res;
//            }
//            else {
//                res+=strings[i]+", "; }

//        }
        res.resize(res.size()-2);
        return res;
    }

    return 0;
}
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
        for (int j = 0; j < strings[i].length(); j++){
            if(strings[i][j] == 'e' || strings[i][j] == 'y' || strings[i][j] == 'u'
                            || strings[i][j] == 'i' || strings[i][j] == 'o' || strings[i][j] == 'a'
                            )
            { strings[i][j] = strings[i][j].toUpper() ;
            }
        }
//        if(strings[i].length()==0){
//           return res;
//        }
//        else {

        res+=strings[i]+", ";

    }
    res.resize(res.size()-2);
    return res;
}
