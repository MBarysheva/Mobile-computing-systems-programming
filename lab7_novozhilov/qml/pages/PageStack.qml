import QtQuick 2.0
import Sailfish.Silica 1.0


Item {
    property int added: 0
    property int deleted: 0
    function push(path){
    pageStack.push(path);
        added++;

    }
    function pop(path){
    pageStack.pop(path);
        deleted--;

    }
}
