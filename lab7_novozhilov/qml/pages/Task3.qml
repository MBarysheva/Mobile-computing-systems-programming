import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    allowedOrientations: Orientation.All
    SilicaFlickable {
        anchors.fill: parent
Label{
    anchors.horizontalCenter: parent.horizontalCenter
    id:ob
    font.pixelSize:80
    text:"Hello world!"
    color:"blue"
    MouseArea{
    anchors.fill: parent;
    onPressed: {
        r.stop()
        p.start()
        }
    onReleased: {
           p.stop()
        r.start()
        }
    }
    ParallelAnimation{
    id:p

    NumberAnimation {
        target: ob
        property: "y"
        duration: 2000
        from: ob.y
        to:1000
    }
    RotationAnimation{
    target: ob
    duration: 2000
    from: 0
    to:180
    }

    ColorAnimation {
        target: ob
        property: "color"
        from: ob.color
        to: "red"
        duration: 2000
    }
    }
    ParallelAnimation{
    id:r

    NumberAnimation {
        target: ob
        property: "y"
        duration: 2000
        from: ob.y
        to:0
    }
    RotationAnimation{
    target: ob
    duration: 2000
    from: 180
    to:0
    }

    ColorAnimation {
        target: ob
        property: "color"
        from: ob.color
        to: "blue"
        duration: 2000
    }
    }
}






    }
}
