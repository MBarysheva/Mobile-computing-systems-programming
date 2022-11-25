import QtQuick 2.0
import Sailfish.Silica 1.0
import "pages"

ApplicationWindow {
    property int added: 0
    property int deleted: 0
    property int oldDepth: 1
    initialPage: Component { FirstPage { } }
    cover: Qt.resolvedUrl("cover/CoverPage.qml")
    allowedOrientations: defaultAllowedOrientations
}
