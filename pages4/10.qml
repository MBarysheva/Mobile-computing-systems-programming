import QtQuick 2.2
import Sailfish.Silica 1.0

Page {
    id: page10
    ListModel {
        id: list10
        ListElement { name: "Элемент 1" }
        ListElement { name: "Элемент 2" }
        ListElement { name: "Элемент 3" }
        ListElement { name: "Элемент 4" }
        ListElement { name: "Элемент 5" }
        ListElement { name: "Элемент 6" }
    }
    SilicaListView {
        anchors.fill: parent
        model: list10
        delegate: ListItem {
            Label {
                text: model.name
                anchors.centerIn: parent
            }
            menu: ContextMenu {
                MenuItem {
                    text: "1"
                    onClicked: console.log(model.index+1 + " " + text)
                }
                MenuItem {
                    text: "2"
                    onClicked: console.log(model.index+1 + " " + text)
                }
            }
        }
    }
}


