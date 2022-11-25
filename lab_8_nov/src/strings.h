#ifndef STRINGS_H
#define STRINGS_H
#include <QVector>
#include <QString>

#include <QObject>

class Strings: public QObject

{
    Q_OBJECT
    Q_PROPERTY(QString strings READ getStr)
public:
    QVector<QString> strings;
    explicit Strings(QObject *parent = nullptr);
   Q_INVOKABLE void add(QString str);
   Q_INVOKABLE void pop();
   Q_INVOKABLE QString getStr();

};

#endif // STRINGS_H
