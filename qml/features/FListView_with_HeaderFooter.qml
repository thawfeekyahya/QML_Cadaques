import QtQuick 2.0


//ListView

FocusScope {
    Rectangle {
        width: 550;
        height:400;

        ListView {
            id:view;
            anchors.fill: parent;
            anchors.margins: 20
            clip : true
            focus: true;
            width:parent.width;


            model : 100;

            delegate: numberDelegate;
            highlight: hightLightComponent;
            spacing : 5
            header: headerComponent;
            footer: footerComponent;
//            currentIndex: 4;
//            highlightRangeMode:ListView.StrictlyEnforceRange;

//            highlightRangeMode:ListView.ApplyRange;
//            highlightRangeMode:ListView.NoHighlightRange;

//            highlightMoveVelocity: 5;
//            highlightMoveDuration:330;

//            highlightFollowsCurrentItem: false;


        }

        Component {
            id:numberDelegate;

            Rectangle {
                width : 100;
                height: 50;
//                color : "#00ff00";
                Text {
                    text : index;
                    anchors.centerIn: parent;
                }
            }
        }

        Component {
            id:headerComponent;

            Item {

                width : 100;
                height: 15;

                Rectangle {
                    color:"#ffff00";
                    anchors.fill: parent;
                }
                Text {
                    text:"Header";
                    anchors.centerIn: parent;
                }
            }
        }

        Component {
            id:footerComponent;
            Item {

                width : 100;
                height: 15;

                Rectangle {
                    color:"#ffff00"
                    anchors.fill: parent;
                }
                Text {
                    text:"Footer";
                    anchors.centerIn: parent;
                }
            }
        }

        Component {
            id:hightLightComponent;

            //------------------------------------------------------------

            //For auto scrolling
            Rectangle {
                color: "#ff0000"
//                width: view.width;
            }


        }
    }
}
