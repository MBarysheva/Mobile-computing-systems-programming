import QtQuick 2.0
import Sailfish.Silica 1.0
import custom.Dictionary 1.0

Page {
    id: page2
    allowedOrientations: Orientation.All
    Dictionary {
        id: words
    }
    SilicaFlickable {
        anchors.fill: parent
        contentHeight: column.height
            Column {
                id: column
                width: page2.width
                spacing: Theme.paddingLarge
                TextField {
                    id: text_field
                    width: parent.width
                    placeholderText: "Слово"
                }
                 Button {
                    text: "Добавить слово"
                    anchors.horizontalCenter: parent.horizontalCenter
                    onClicked: {
                        list_strings.append(text_field.text);
                        text_field.text = "";
                    }
                }
                Button {
                    text: "Удалить слово"
                    anchors.horizontalCenter: parent.horizontalCenter
                    onClicked: list_strings.removeLast()
                }
                Label {
                    id: label_list_strings
                    width: page.width
                    wrapMode: "Wrap"
                    text: list_strings.list
                }
            }
        }
    }
