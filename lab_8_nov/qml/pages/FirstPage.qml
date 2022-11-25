import QtQuick 2.0
import Sailfish.Silica 1.0
import counter 1.0
import strings 1.0

Page {
    Counter{
   id:c
   count: 20


    }
    Strings{
    id:s

    }
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        anchors.fill: parent

        // PullDownMenu and PushUpMenu must be declared in SilicaFlickable, SilicaListView or SilicaGridView
        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 2")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("SecondPage.qml"))
            }
        }

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.
        Column {

            id: column

            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("UI Template")
            }
            Label {
                id: number
                x: Theme.horizontalPageMargin
                text:c.count
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }
            Button{
            text:"Увеличить"
            onClicked:{
              c.add();
              number.text=c.count;
            }
            }
            Button{
            text:"Сбросить"

            onClicked:{c.reset();
              number.text=c.count;
            }
            }
            TextInput{
                color: "white"
                text:"dd"
                id:ti

            }
            Button{
                text: "Добавить слово"
                onClicked:{
                s.add(ti.text.toLowerCase());
                sl.text=s.strings
                }
            }
            Button{
                text: "Удалить"
                onClicked:{
                s.pop();
                    sl.text=s.strings
                }
            }
            Label{
                id:sl
            text:s.strings;
            }
        }
    }
}
