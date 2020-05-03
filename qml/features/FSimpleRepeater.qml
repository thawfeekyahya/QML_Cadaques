import QtQuick 2.0

Rectangle {
    width:800;
    height:600;

    Column {
        spacing: 5;
        anchors.centerIn: parent;
        Repeater {
         model:["Hi","Hello","Welcome ","to ","qt","programming"];


            delegate: Rectangle {
                width:100;
                height : 40;
                color:"#d8d8d8";
                Text {
                    text: modelData + ' (' + index + ')'     //data with index
//                    text: modelData;                       //only data
                }
            }
        }
    }


}
