import QtQuick 2.0
import Sailfish.Silica 1.0
Page {
    id: page6
    ListModel {
        id: list6
        ListElement { name: "Гулять смело"; date: "15.10.2022" }
        ListElement { name: "Сделать дело"; date: "15.10.2022" }
        ListElement { name: "Покормить котов"; date: "14.10.2022" }
        ListElement { name: "Турник"; date: "18.10.2022" }
        ListElement { name: "Анжуманя вечером"; date: "18.10.2022" }
        ListElement { name: "Прэсс качат"; date: "25.10.2022" }
        ListElement { name: "Бегит"; date: "25.10.2022" }
    }
    SilicaListView {
        anchors.fill: parent
        model: list6
        header: PageHeader { title: "Задачи"}
        section {
            property: "date"
            delegate: BackgroundItem {
                PageHeader{title: section}
            }
        }
        delegate: BackgroundItem {
            Label {
                text: name
            }
        }
    }
}
