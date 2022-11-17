import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page7
    property int prevDepth: 2
    property int pagesPushed: 0
    property int pagesPopped: 0

    function stackDepth() {
        if (typeof pageStack === "undefined")
            return
        if (prevDepth > pageStack.depth)
            pagesPopped++;
        else if (prevDepth < pageStack.depth)
            pagesPushed++;
        prevDepth = pageStack.depth;
    }

    Component.onCompleted: {
        pageStack.depthChanged.connect(stackDepth);
    }
    Column {
        anchors.fill: parent;
        width: page7.width
        spacing: Theme.paddingLarge
        Button {
            text: "Удалить страницу"
            onClicked: pageStack.pop()
        }
        Button {
            text: "Добавить страницу"
            onClicked: pageStack.push(Qt.resolvedUrl("7.qml"))
        }
        Label {
            text: "Удалено страниц: " + pagesPopped.toString()
        }
        Label {
            text: "Добавлено страниц: " + pagesPushed.toString()
        }
        Label {
            text: "Глубина стека: " + pageStack.depth
        }
    }
}
