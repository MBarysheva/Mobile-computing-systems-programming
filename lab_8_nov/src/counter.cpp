#include "counter.h"
#include <QDebug>

Counter::Counter(QObject *parent):QObject(parent){
}

int Counter::getCounter()
{
    qDebug()<<count;
    return count;
}
void Counter::setCounter(int c)
{
    qDebug()<<c;
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

