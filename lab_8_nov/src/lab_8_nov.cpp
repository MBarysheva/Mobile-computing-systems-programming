#ifdef QT_QML_DEBUG
#include <QtQuick>
#endif

#include <sailfishapp.h>
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
    // SailfishApp::main() will display "qml/lab_8_nov.qml", if you need more
    // control over initialization, you can use:
    //
    //   - SailfishApp::application(int, char *[]) to get the QGuiApplication *
    //   - SailfishApp::createView() to get a new QQuickView * instance
    //   - SailfishApp::pathTo(QString) to get a QUrl to a resource file
    //   - SailfishApp::pathToMainQml() to get a QUrl to the main QML file
    //
    // To display the view, call "show()" (will show fullscreen on device).

    return SailfishApp::main(argc, argv);
}
