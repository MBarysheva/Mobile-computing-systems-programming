import QtQuick 2.0
import Sailfish.Silica 1.0
Page {
    id: page3
    Column {
        x:40
        y:40
        width: page.wigth
        spacing: 10
        Label {
            id: out
            text: "Пусто"
        }
        Button {
            text: "Открыть диалог"
            onClicked: dialogpage3.open()
        }
        Dialog {
            id: dialogpage3
            Column {
                width: page.width
                DialogHeader{}
                TextField {
                    id: intext
                }
            }
            onAccepted: out.text = intext.text
        }
    }
}

