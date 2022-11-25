import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    allowedOrientations: Orientation.All
    SilicaFlickable {
        Timer{

        id:timer
        repeat: true
        onTriggered: {
            c3.state="NotActiv"
            c1.state="Activ"
        timer2.start()

        }

        }

        Timer{
            id:timer2
            interval: 1000
            repeat: false
            onTriggered: {

                c2.state="Activ"
                timer.stop()
                timer3.start()


            }
        }
        Timer{
            id:timer3
            interval: 1000
            repeat: false
            onTriggered: {
                c1.state="NotActiv"
            c2.state="NotActiv"
                c3.state="Activ"
                timer.start()

            }
        }


        anchors.fill: parent
        Column{
            anchors.fill: parent
            width: parent.width
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
            Component.onCompleted:
            {
            timer.interval=1000
                timer.start()
}
        }


    }
}

