import QtQuick 2.0
import Sailfish.Silica 1.0

Label {
    id:minutes
    property int minte: 0
    text:minte
    function add(){
    minte++
    }
    function reset(){
    minte=0
    }

}
