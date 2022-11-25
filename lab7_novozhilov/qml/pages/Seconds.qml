import QtQuick 2.0
import Sailfish.Silica 1.0

Label {
    id:seconds
    property int second: 0
    text:second
    function add(){
    second++
    }
    function reset(){
    second=0
    }

}
