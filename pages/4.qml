import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.XmlListModel 2.0
Page {
    allowedOrientations: Orientation.All
    XmlListModel {
        id: listModel4
        source: "http://www.cbr.ru/scripts/XML_daily.asp"
        query: "/ValCurs/Valute"
        XmlRole {name: "Name"; query: "Name/string()"}
        XmlRole {name: "Value"; query: "Value/string()"}
    }
    SilicaListView {
        anchors.fill: parent
        header: PageHeader {
            description: "Валюты"
        }
        model: listModel4
        spacing: 7
        delegate: Column {
            spacing: 4
            Label {
                text: Name
            }
            Label {
                text: Value
            }
        }
    }
}
