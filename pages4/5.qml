import QtQuick 2.0
import Sailfish.Silica 1.0
Page {
    id: page5
    Column {
        x:40
        y:40
        width: page.wigth
        spacing: 10
        Label {
            id: out5
            text: "Пусто"
        }
        Button {
            text: "Открыть диалог"
            onClicked: dialogpage5.open()
        }
        TimePickerDialog {
            id: dialogpage5
            x:40
            y:40
            width: page.wigth
            onAccepted: out5.text = timeText
        }
    }
}
