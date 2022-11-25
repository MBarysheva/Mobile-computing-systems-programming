#ifndef COUNTER_H
#define COUNTER_H

#include <QObject>

class Counter : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int count READ getCounter WRITE setCounter)
    public:

    int count=0;
        explicit Counter(QObject *parent = nullptr);
    Q_INVOKABLE void add();
    Q_INVOKABLE void reset();
    Q_INVOKABLE int getCounter();
    Q_INVOKABLE void setCounter(int c);
};

#endif // COUNTER_H
