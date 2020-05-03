import QtQuick 2.0

Rectangle {
    width:400;
    height:600;

    Rectangle {
        anchors.fill: parent;
        gradient :Gradient {
            GradientStop{position: 0.0;color:"#4a4a4a"}
            GradientStop{position: 0.1;color:"#2b2b2b"}

        }
    }

    ListView {
        id:listView;
        anchors.fill: parent;
        delegate: detailsDelegate;
        model: planets;

    }

    ListModel {
        id:planets;
        ListElement{name:"Mercury ";imageSource:"assets/planets/mercury.jpg";facts:"This mercury planet"}
        ListElement{name:"Venus ";imageSource:"assets/planets/venus.jpg";facts:"This Venus planet"}
        ListElement{name:"Mars ";imageSource:"assets/planets/mars.jpg";facts:"This Mars planet"}
        ListElement{name:"Earth ";imageSource:"assets/planets/earth.jpg";facts:"This Earth planet"}
        ListElement{name:"Jupiter ";imageSource:"assets/planets/jupiter.jpg";facts:"This Jupiter planet"}

    }


    Component {
        id:detailsDelegate;
        Item {
            id:wrapper;
            width: listView.width;
            height: 30;

            Rectangle {
                anchors.left: parent.left;
                anchors.right: parent.right;
                anchors.top : parent.top;

                height: 30
                color:"#333"
                border.color: Qt.lighter(color,1.2)
                Text {
                    anchors.left: parent.left;
                    anchors.verticalCenter: parent.verticalCenter;
                    anchors.leftMargin: 4;

                    font.pixelSize:parent.height-4;

                    color:"#fff"
                    text:name;
                }
            }

            Rectangle{
                id:image;
                width: 26;
                height: 26

                anchors.right: parent.right;
                anchors.top : parent.top;
                anchors.rightMargin:  2;
                anchors.topMargin: 2;

                color:"black"

                Image {
                    anchors.fill: parent;
                    fillMode: Image.PreserveAspectFit;
                    source:imageSource;
                }
            }

            MouseArea {
                anchors.fill: parent;
                onClicked: {
                    parent.state ="expanded"
                }
            }

            Item {
                 id:factsView
                 anchors.top: image.bottom
                 anchors.left: parent.left;
                 anchors.right: parent.right;
                 anchors.bottom: parent.bottom;

                 opacity: 1

                 Rectangle {
                    anchors.fill: parent;

                    gradient: Gradient {
                        GradientStop{position:0.0;color:"#fed958"}
                        GradientStop{position:0.1;color:"#fecc2f"}
                    }

                    border.color: "#000000"
                    border.width: 2

                    Text {
                        anchors.fill: parent;
                        anchors.margins: 5

                        clip:true;
                        //wrapMode : Text.wrapMode;
                        color:"#1f1f21"

                        font.pixelSize: 12
                        text:facts;
                    }

                 }

            }



            Rectangle{
                id:closeButton;
                anchors.right: parent.right;
                anchors.top : parent.top;
                anchors.rightMargin: 2;
                anchors.topMargin:2;


                width:26
                height:26;

                color:"#157efb"

                opacity:0;

                MouseArea {
                    anchors.fill: parent;
                    onClicked: wrapper.state= ""
                }
            }

            states: [
                State {
                    name : "expanded"
                    PropertyChanges {
                        target:wrapper;height:listView.height;

                    }

                    PropertyChanges {
                        target: image;width:listView.width;height:listView.height-100;

                    }

                    PropertyChanges {
                        target:factsView ;opacity :1;
                    }

                    PropertyChanges {
                        target:closeButton;opacity:1;
                    }

                    PropertyChanges {
                        target:listView.view;contentY:wrapper.y;interactive:false;
                    }
                }

            ]

            transitions: [
                Transition {
                    NumberAnimation {
                        properties: "height,width,anchors.rightMargin,anchors.topMargin,opacity";
                        duration: 300; easing.type: Easing.InOutQuad
                    }

                }
            ]
        }
    }
}
