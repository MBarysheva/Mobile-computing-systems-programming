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

            GreenS{
            id:c1
            }

            YellowS{
            id:c2
            }
            RedS{
            id:c3
            }




            Component.onCompleted:
            {
            timer.interval=1000
                timer.start()
}
        }


    }
}
