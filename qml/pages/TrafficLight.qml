import QtQuick 2.0
import Sailfish.Silica 1.0
    Column {
        id: light
        spacing: 20
        state: "default"
        anchors.centerIn: light
        property int counter: 0
        Component.onCompleted: anim.restart()

        SequentialAnimation {
            id: anim
            loops: Animation.Infinite
            PropertyAnimation {
                target: light
                properties: "counter"
                from: 0
                to: 3
                duration: 3000
            }
        }
        states: [
            State {
                name: "default"
            },
            State {
                name: "red"
                when: light.counter >= 0 && light.counter < 1
                PropertyChanges {
                    target: red
                    color: "red"
                }
            },

            State {
                name: "yellow"
                when: light.counter >= 1 && light.counter < 2
                PropertyChanges {
                    target: yellow
                    color: "yellow"
                }
            },

            State {
                name: "green"
                when: light.counter >= 2 && light.counter < 3
                PropertyChanges {
                    target: green
                    color: "green"
                }
            }

        ]

        Rectangle {
            id: red
            color: "black"
            width: 100
            height: 100
            radius: 150
        }

        Rectangle {
            id: yellow
            color: "black"
            width: 100
            height: 100
            radius: 150
        }

        Rectangle {
            id: green
            color: "black"
            width: 100
            height: 100
            radius: 150
        }
    }
