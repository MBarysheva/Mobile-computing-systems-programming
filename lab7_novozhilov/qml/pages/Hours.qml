import QtQuick 2.0
import Sailfish.Silica 1.0

Label {
    id:hours
    property int hour: 0
    text:hour
    function add(){
    hour++
    }
    function reset(){
    hour=0
    }

}
