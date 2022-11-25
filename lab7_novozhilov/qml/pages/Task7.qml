import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    allowedOrientations: Orientation.All
    PageStack{id:ps}

    Connections{target:ps
    onDepthChanged:{
    if(ps.depth>=oldDepth){added++}
    else{deleted++}
    oldDepth=ps.depth
    }}
    SilicaFlickable {
        Column{
        anchors.fill: parent
           Button{
           text:"Push"
           onClicked:{ps.push("Task7.qml")
           }

           }
           Button{
           text:"Pop"
           onClicked:{ps.pop(Qt.resolvedUrl())}


           }
            Label{
            text:"added: "+added;
            }
            Label{
            text:"deleted: "+deleted;
            }
        }
     }
}
