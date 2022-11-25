import QtQuick 2.0
import Sailfish.Silica 1.0

Rectangle {
    id:c1
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
            target: c1
            color:"green"
        }
    },
    State {
        name: "NotActiv"
        PropertyChanges {
            target: c1
            color:"black"
        }
    }
]

}
