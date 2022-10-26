import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.XmlListModel 2.0
Page {
    id: page5
    allowedOrientations: Orientation.All
    XmlListModel {
        id: listModel5
        query: "/ValCurs/Valute"
        XmlRole {name: "Name"; query: "Name/string()"}
        XmlRole {name: "Value"; query: "Value/string()"}
    }
    SilicaListView {
        anchors.fill: parent
        header: PageHeader {
            description: "Валюты"
        }
        model: listModel5
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
    Component.onCompleted: loadRate()
    function loadRate(){
        var xhr = new XMLHttpRequest();
        xhr.open('GET', 'https://www.cbr-xml-daily.ru/daily_utf8.xml', true);
        xhr.onreadystatechange = function() {
            if (xhr.readyState === XMLHttpRequest.DONE){
                listModel5.xml = xhr.responseText;
            }
        }
        xhr.send();
    }
}
