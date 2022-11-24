#ifndef CLICKER_H
#define CLICKER_H

#include <QObject>
#include <QDebug>

class Counter : public QObject {
    Q_OBJECT
    Q_PROPERTY(int count READ getCount WRITE setCount NOTIFY countChanged)

private:
    int count;

public:
    Q_INVOKABLE Counter(): QObject()
    {
        this->count = 0;
    }

    Q_INVOKABLE void increment()
    {
        this->count++;
        emit countChanged();
    }

    Q_INVOKABLE void reset()
    {
        this->count = 0;
        emit countChanged();
    }

    int getCount()
    {
        return this->count;
    }

    void setCount(int count)
    {
        this->count = count;
        emit countChanged();
    }

public slots:

    void print()
    {
        qDebug() << "Current count: " << this->count;
    }

signals:
    void countChanged();

};

#endif // CLICKER_H
