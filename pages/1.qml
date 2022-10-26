import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    ListModel
    {
        id: listModel1
        ListElement {
            text: "Белый";
            bg_color: "white";
            text_color: "black"
        }
        ListElement {
            text: "Чёрный";
            bg_color: "black";
            text_color: "white"
        }
        ListElement {
            text: "Синий";
            bg_color: "blue";
            text_color: "red"
        }
    }
    SilicaListView
    {
        spacing: 20
        anchors.fill: parent
        model: listModel1
        delegate: Rectangle
        {
            width: parent.width
            height: 150
            color: model.bg_color
            Text
            {
                anchors.centerIn: parent
                text: model.text
                color: model.text_color
            }
        }
    }
}
