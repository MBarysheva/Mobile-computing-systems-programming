import QtQuick 2.0
import Sailfish.Silica 1.0

Rectangle {
    id:c2
    anchors.horizontalCenter: parent.horizontalCenter
width: 300
height: width
color: "black"
border.color: "black"
border.width: 1
radius: width*0.5
state:"NotActiv"
states:[
    State {
        name: "Activ"
        PropertyChanges {
            target: c2
            color:"yellow"
        }
    },
    State {
        name: "NotActiv"
        PropertyChanges {
            target: c2
            color:"black"
        }
    }
]

}
