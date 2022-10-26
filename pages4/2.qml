import QtQuick 2.0
import Sailfish.Silica 1.0
Page {
    id: page2
    objectName: "2"
    allowedOrientations: Orientation.All
    PageHeader {
        title: "1 cтраница"
    }
    Column {
        x:40
        y:40
        width: page.wigth
        spacing: 10
        Button {
            text: "Добавить страницу"
            onClicked: pageStack.pushAttached(Qt.resolvedUrl("tmp.qml"))
        }
        Button {
            text: "Убрать страницу"
            onClicked: pageStack.popAttached()
        }
    }

}
