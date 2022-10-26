import QtQuick 2.0
import Sailfish.Silica 1.0
Page {

    id: page2
    allowedOrientations: Orientation.All
    ListModel {
        id: listModel2
    }

    Column {
        id: column2
        property int i: 0
        width: page.width
        spacing: 10
        Button {
            id: myButton
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Добавить"
            onClicked: listModel2.append({text2: "Элемент " + (++column2.i)})
        }
        SilicaListView {
            height: parent.height
            width: parent.width
            model: listModel2
            spacing: 10
            delegate: Rectangle {
                width: parent.width
                height: 100
                color: "white"
                Text {
                    anchors.centerIn: parent
                    text: model.text2
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {listModel2.remove(model.index,1)}
                }
            }
        }
    }
}
