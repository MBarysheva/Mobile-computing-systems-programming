import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    allowedOrientations: Orientation.All
    SilicaFlickable {
        Column{
        anchors.fill: parent
        Timer{
            id:timer1
            interval: 1
            repeat: true
            onTriggered: {
                if(ms.ms + 1 == 60){
                    ms.reset();
                    if(s.second+1==60){
                    s.reset();
                        if(m.minte+1==60){
                        m.reset();
                            if(h.hour+1==24){
                            h.reset();
                            }else{
                            h.add();}
                        }else{
                        m.add();
                        }
                    }else{
                    s.add();

                    }
                }else{ms.add();}

        }
        }
        Row{
       Hours{
           id:h
       }
       Label{text:" : "}
       Minutes{
           id:m
       }
       Label{text:" : "}
       Seconds{
           id:s
       }
       Label{text:" : "}
       Mils{
           id:ms
       }
        }
       Button{
       text:"Старт"
       onClicked:timer1.start()
       }
       Button{
       text:"Стоп"
       onClicked:timer1.stop()
       }

    }
}

}
