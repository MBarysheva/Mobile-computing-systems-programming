import QtQuick 2.0

import Sailfish.Silica 1.0

import QtQuick.LocalStorage 2.0

import Nemo.Configuration 1.0



Page {

    id: page

    ConfigurationGroup {

        id: settings;

        path: "/apps/app_name/setting";

        property bool bold: false;

        property bool strike: false;

    }

    Column {

        width: page.width

        spacing: 10



        Label {

            anchors.horizontalCenter: parent.horizontalCenter

            text: "Текст"

            font.bold: settings.bold

            font.strikeout: settings.strike

        }

        Button {

            width: parent.width

            text: "Жирный"

            onClicked: { settings.bold = settings.bold?false:true }

        }

        Button {

            width: parent.width

            text: "Зачеркнутый"

            onClicked: { settings.strike = settings.strike?false:true }

        }

    }

}
