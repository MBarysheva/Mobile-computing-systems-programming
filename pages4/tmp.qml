import QtQuick 2.0
import Sailfish.Silica 1.0
Page {
    id: pagetmp
    objectName: "tmp"
    allowedOrientations: Orientation.All
    PageHeader {
        title: "2 cтраница"
    }
    Column {
        width: page.wigth
        spacing: Theme.paddingLarge
        Button {
            text: "Назад"
            onClicked: pageStack.navigateBack()
        }
    }
}
