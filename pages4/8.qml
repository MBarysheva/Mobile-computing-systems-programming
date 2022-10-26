import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page8
    ListModel {
        id: list8
        ListElement { name: "Гулять смело"; date: "15.10.2022" }
        ListElement { name: "Сделать дело"; date: "15.10.2022" }
        ListElement { name: "Покормить котов"; date: "14.10.2022" }
        ListElement { name: "Турник"; date: "18.10.2022" }
        ListElement { name: "Анжуманя вечером"; date: "18.10.2022" }
        ListElement { name: "Прэсс качат"; date: "25.10.2022" }
        ListElement { name: "Бегит"; date: "25.10.2022" }
    }
    SlideshowView {
        id: slideview
        model: list8
        anchors.fill: parent
        delegate: Rectangle {
            width: slideview.itemWidth
            height: slideview.height
            Text {
                anchors.centerIn: slideview
                text: name + " - " + date
            }
        }
    }
}
