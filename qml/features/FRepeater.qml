import QtQuick 2.0

Rectangle {
    width:800;
    height:600;

    Column {
        spacing: 5;
        anchors.centerIn: parent;
        Repeater {
//            model:["Hi","Hello","Welcome ","to ","qt","programming"];
            model : ListModel {
                ListElement {
                    name:"Mercury";
                    position:"1";
                }
                ListElement {
                    name:"Mars";
                    position:"2";
                }
                ListElement {
                    name:"Venus";
                    position:"3";
                }
                ListElement {
                    name:"Earth";
                    position:"4";
                }
                ListElement {
                    name:"Jupiter";
                    position:"5";
                }
                ListElement {
                    name:"Saturn";
                    position:"6";
                }
                ListElement {
                    name:"Uranus";
                    position:"7";
                }
                ListElement {
                    name:"Neptune";
                    position:"8";
                }
            }

            delegate: Rectangle {
                width:100;
                height : 40;
                color:"#d8d8d8";
                Text {
                    text:name+" At Posistion "+position;
                }
            }
        }
    }


}
