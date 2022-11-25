import QtQuick 2.0
import Sailfish.Silica 1.0

Label {
    id:mils
    property int ms: 0
    text:ms
    function add(){
    ms++
    }
    function reset(){
    ms=0
    }

}
