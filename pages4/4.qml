import QtQuick 2.0
import Sailfish.Silica 1.0
Page {
    id: page4
    Column {
        x:40
        y:40
        width: page.wigth
        spacing: 10
        Label {
            id: out4
            text: "Пусто"
        }
        Button {
            text: "Открыть диалог"
            onClicked: dialogpage4.open()
        }
        DatePickerDialog {
            id: dialogpage4
            x:40
            y:40
            width: page.wigth
            onAccepted: out4.text = dateText
        }
    }
}
