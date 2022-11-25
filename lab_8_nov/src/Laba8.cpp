#ifdef QT_QML_DEBUG
#include <QtQuick>
#endif
#include "counter.h"
#include <sailfishapp.h>
#include "iostream"
#include "strings.h"


int main(int argc, char *argv[])
{
    Counter* item = new Counter();
    QMetaObject::invokeMethod(item, "setCounter", Qt::DirectConnection,Q_ARG(int,7));
    QMetaObject::invokeMethod(item, "getCounter", Qt::DirectConnection);
    qmlRegisterType<Counter>("counter", 1,0, "Counter");
    qmlRegisterType<Strings>("strings", 1,0, "Strings");
    //QMetaObject *meta=Counter::metaObject();
   // meta->newInstance();
   // meta->invokeMethod(Counter(),"getCounter");
   //  QMetaObject::invokeMethod(Counter(),"getCounter",Q_ARG(int, 10));
    // SailfishApp::main() will display "qml/Laba8.qml", if you need more
    // control over initialization, you can use:
    //
    //   - SailfishApp::application(int, char *[]) to get the QGuiApplication *
    //   - SailfishApp::createView() to get a new QQuickView * instance
    //   - SailfishApp::pathTo(QString) to get a QUrl to a resource file
    //   - SailfishApp::pathToMainQml() to get a QUrl to the main QML file
    //
   // QObject*obj = new Counter;
    // To display the view, call "show()" (will show fullscreen on device).

    return SailfishApp::main(argc, argv);

}
