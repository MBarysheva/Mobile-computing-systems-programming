import QtQuick 2.0
import Sailfish.Silica 1.0
import counter 1.0
import strings 1.0

Page {
    Counter{
        id:c
        count: 0

    }
    Strings{
        id:s
    }
    id: page
    allowedOrientations: Orientation.All
    Column {

        id: column

        width: page.width
        spacing: Theme.paddingLarge

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
        TextField{
            color: "white"
            text:"мяу"
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

