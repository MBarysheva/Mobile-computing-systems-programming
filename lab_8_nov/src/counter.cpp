#include "counter.h"
#include <QDebug>

Counter::Counter(QObject *parent):QObject(parent){
}

int Counter::getCounter()
{
    qDebug()<<"Сработал метод Get,он вернул какое-то знаечение"<<count;
    return count;
}
void Counter::setCounter(int c)
{
    qDebug()<<"Сработал метод Set,он установил такое знаечение"<<c;
    count = c;
}

void Counter::add()
{
count++;
}
void Counter::reset()
{
count=0;
}
