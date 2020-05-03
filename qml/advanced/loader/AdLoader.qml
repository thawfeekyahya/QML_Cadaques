import QtQuick 2.5
Item {
    id: root;
    property string  stateA : "analog";
    property string  stateD : "digital";
    property int     speed  : 1200;

    Column {
        Loader {
           id: dialLoader;
           width:200;   //TODO: Check how to assign size based on the loaded item
                        //and without explicitly mentioning on the Loader

           height:300;

           states: [
               State {
                    name : stateA;
                    PropertyChanges{target:analogButton;color:"#00ff00"}
                    PropertyChanges{target:dialLoader;source:"Analog.qml"}
               },
               State {
                    name: stateD;
                    PropertyChanges{target:digitalButton;color:"#00ff00"}
                    PropertyChanges{target:dialLoader;source:"Digital.qml"}
               }

           ]

           Component.onCompleted: {
//               state = stateA;
           }

           onLoaded: {
                binder.target = dialLoader.item;
           }


        }

        Binding {
            id:binder;
            property: "speed"
            value: speed;

        }


        Row {
            id:row;
            spacing:100;
            //anchors.centerIn:  parent;

            //Button Analog
            Rectangle {
                width:100;
                height:50;
                id:analogButton;
                color:"#d8d8d8";
                border.color: Qt.lighter(color);

                Text {
                    anchors.centerIn:   parent;
                    text: "Analog";
                }
                MouseArea {
                    anchors.fill: parent;
                    onClicked: {
                        dialLoader.state = stateA;
                    }
                }
            }

            //Button Digital
            Rectangle {
                width:100;
                height:50;
                id:digitalButton;
                border.color: Qt.lighter(color);
                color:"#d8d8d8";
                Text {
                    anchors.centerIn : parent;
                    text: "Digital";
                }
                MouseArea {
                    anchors.fill: parent;
                    onClicked: {
                        dialLoader.state = stateD;
                    }
                }
            }
        }
    }

}


