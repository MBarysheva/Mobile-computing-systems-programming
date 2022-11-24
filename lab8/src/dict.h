#ifndef DICT_H
#define DICT_H

#include <QObject>
#include <QString>
#include <QStringList>

class Dictionary : public QObject {

    Q_OBJECT
    Q_PROPERTY(QString list READ getText NOTIFY listChanged)

private:
    QStringList list;

public:
    Dictionary() : QObject()
    {
        this->list = QStringList();
    }
    Q_INVOKABLE void append(QString str)
    {
        this->list.append(str.toLower());
        emit listChanged();
    }
    Q_INVOKABLE void popLast() {
        this->list.removeLast();
        emit listChanged();
    }
    QString getText() {
        QString text = this->list.join(", ");
        return text.replace(0, 1, text[0].toUpper());
    }

signals:
    void listChanged();

};

#endif // DICT_H

