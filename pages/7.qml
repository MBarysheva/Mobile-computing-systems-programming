import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.LocalStorage 2.0
import Nemo.Configuration 1.0

Page {
    id: page7
ConfigurationValue {
    id: setting
    key: "/apps/app_name/setting_name";
    defaultValue: "Setting"
}
    Column {
        width: page.width
        spacing: 10
        TextField {
            width: parent.width
            id: textfield7
        }
        Label {
            text: setting.value + " выбран"
        }
        Button {
            width: parent.width
            text: "Сохранить"
            onClicked: setting.value = textfield7.text
        }
    }
}
