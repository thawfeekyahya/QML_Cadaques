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
            width:parent.width;


            model : 100;

            delegate: numberDelegate;
            highlight: hightLightComponent;
            spacing : 5
            highlightRangeMode:ListView.StrictlyEnforceRange;

//            highlightRangeMode:ListView.ApplyRange;
    //        highlightRangeMode:ListView.NoHighlightRange;

    //        highlightMoveVelocity: 5;
    //        highlightMoveDuration:330;

//            highlightFollowsCurrentItem: false;


        }

        Component {
            id:numberDelegate;
            Item {
                width : 100;
                height: 50;
    //            color: "#00ff00"
                Text {
                    text : index;
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
                //width: ListView.view.width;
            }


            //-------------------------------------------------------------

            //For mannual scrolling
            /*
            Item {
                focus: true;
                width:view.width;
                height:view.currentItem.height;

                y:view.currentItem.y;


                Behavior on y {
                    SequentialAnimation {
                        PropertyAnimation { target:highlightRectangle;property:"opacity";to:"0";duration:500;}
                        NumberAnimation {
                            duration: 300;
                        }
                        PropertyAnimation { target:highlightRectangle;property:"opacity";to:"1";duration:500;}
                    }
                }

                Rectangle {
                    id:highlightRectangle;
                    color:"#ff0000"
                    anchors.fill: parent;
                }
            }*/
            //--------------------------------------------------------------
        }
    }
}
