import QtQuick 2.0
import Sailfish.Silica 1.0


Rectangle {
    id:c3
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
            target: c3
            color:"red"
        }
    },
    State {
        name: "NotActiv"
        PropertyChanges {
            target: c3
            color:"black"
        }
    }
]

}
