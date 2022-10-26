import QtQuick 2.0
import Sailfish.Silica 1.0
Page {
    id: page3
    allowedOrientations: Orientation.All
    property var myModel: [
        {myColor: "white", myText: "Белый", myTextColor: "black"},
        {myColor: "black", myText: "Чёрный", myTextColor: "white"},
        {myColor: "blue", myText: "Синий", myTextColor: "red"}
    ]
    SilicaListView{
        anchors.fill: parent
        model: myModel
        delegate: Rectangle {
            width: parent.width
            height: 150
            color: modelData.myColor
            Text {
                anchors.centerIn: parent
                text: modelData.myText
                color: modelData.myTextColor
            }
        }
    }
}
