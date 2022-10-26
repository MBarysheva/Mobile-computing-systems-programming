import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page9
    SilicaFlickable {
        anchors.fill: parent
        Label {
            id: label9
        }
        PullDownMenu {
            MenuItem {
                text: "Элемент 1"
                onClicked: label9 .text = text
            }
            MenuItem {
                text: "Элемент 2"
                onClicked: label9 .text = text
            }
        }
        PushUpMenu {
            MenuItem {
                text: "Элемент 3"
                onClicked: label9 .text = text
            }
            MenuItem {
                text: "Элемент 4"
                onClicked: label9 .text = text
            }
        }
    }
}
