import QtQuick 2.0
import Sailfish.Silica 1.0
Page {
    id: page7
    SilicaWebView {
        id: website
        anchors.fill: parent
        url: "https://ficbook.net/"
        header: PageHeader {
            title: "Ficbook"
            description: website.title
        }
    }
}
