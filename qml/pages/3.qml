import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page3
    Text {
        anchors.horizontalCenter: page3.horizontalCenter
        id: t
        text: "Hello, world!"
        font.pixelSize: 100
        color: "blue"
        state: "default"
        MouseArea {
            anchors.fill: parent
            onPressed: parent.state = "anim"
            onReleased: parent.state = "default"
        }
        states: [
            State {
                name: "default"
            },
            State {
                name: "anim"
                PropertyChanges {
                    target: t
                    color: "red"
                    rotation: 180
                }
            }
        ]
        transitions: [
            Transition {
                from: "default"
                to: "anim"
                ParallelAnimation {
                    PropertyAnimation {
                        target: t
                        property: "y"
                        to: page.height
                        duration: 2000
                    }
                }
            },
            Transition {
                from: "anim"
                to: "default"
                ParallelAnimation {
                    PropertyAnimation {
                        target: t
                        property: "y"
                        to: 0
                        duration: 2000
                    }
                }
            }
        ]
    }
}
