import QtQuick 2.0
import Sailfish.Silica 1.0

Item {
    default property var myitem
    property var mycolor
    Button {
        text: parent.myitem.text
        color: parent.mycolor
    }
}
