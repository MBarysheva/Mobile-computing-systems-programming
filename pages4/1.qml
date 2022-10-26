import QtQuick 2.0
import Sailfish.Silica 1.0
Page {
    id: page1
    objectName: "1"
    allowedOrientations: Orientation.All
    PageHeader {
        title: "Страница"
    }
    Column {
        x:40
        y:40
        width: page.wigth
        spacing: 10

        Button {
            text: "Вперед"
            onClicked: pageStack.push(Qt.resolvedUrl("1.qml"))
        }
        Button {
            text: "Назад"
            onClicked: pageStack.pop()
        }
        Label {
            text: pageStack.depth
        }
    }

}
