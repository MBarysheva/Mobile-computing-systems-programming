import QtQuick 2.0
import Sailfish.Silica 1.0


Button {
        default property var someButton

        width: 200;height: 50
        text: someButton.text
        backgroundColor: someButton.color
    }


