import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page5
    Column {
//        TextField {
//            id: f
//            text: "color"
//        }

        QComp {
           Text {
                text: "Кнопка 1"
            }
            mycolor: "red"
        }
        QComp {
            y: 100
            Text {
                text: "Кнопка 2"
            }
            mycolor: "white"
        }
    }
}
