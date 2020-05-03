import QtQuick 2.5

Item {
    id:root;
    property string m_active: "Active";
    property string m_inactive: "InActive"


    signal boxclicked(string name);
    Row {
        spacing: 20;
        //LeftArea
        Item {
            width:100;
            height:150;

            Column {
                width:100;
                height:150;
                spacing:2;
                //Label
                Rectangle {
                    color:"#d8d8d8"
                    width:parent.width;
                    height:10;
                    Text {
                        id:leftLabel;
                        anchors.centerIn: parent;
                        text:m_inactive;
                    }
                }

                Rectangle{
                    id:leftClickArea;
                    color:"#d8d8d8";
                    width:parent.width;
                    height:100;
                    state : m_inactive;
                    MouseArea {
                        id:leftMouseArea;
                        anchors.fill: parent;
                        onClicked: {
                            parent.state = (parent.state == m_inactive ? m_active : m_inactive);
                        }
                    }
                    Text {
                        text : "Click Me::Left !"
                        anchors.centerIn: parent;
                    }

                    states : [
                        State {
                            name : m_active;
                            PropertyChanges{
                                target:leftClickArea;
                                color:"#00ff00"
                            }
                            PropertyChanges {
                                target: leftLabel;
                                text:m_active;
                            }


                        },
                        State {
                            name : m_inactive
                            PropertyChanges{
                                target:leftClickArea;
                                color:"#d8d8d8"
                            }
                            PropertyChanges {
                                target: leftLabel;
                                text:m_inactive;
                            }
                            StateChangeScript {
                                script : connections.target = leftMouseArea;
                            }

                        }

                    ]


                    transitions: [
                        Transition {
                            from: m_active
                            to: m_inactive

                            ColorAnimation {
                                from: "#00ff00"
                                to: "#d8d8d8"
                                duration: 1000
                            }
                        },
                        Transition {
                            from: m_inactive
                            to: m_active

                            ColorAnimation {
                                from: "#d8d8d8"
                                to: "#00ff00"
                                duration: 1000
                            }
                        }
                    ]
                }



            }
        }

        //RightClick Area
        Item {
            width:100;
            height:150;

            Column {
                width:100;
                height:150;
                spacing : 2;
                //Label
                Rectangle {

                    color:"#d8d8d8"
                    width:parent.width;
                    height:10;
                    Text {
                        id:rightLabel;
                        anchors.centerIn: parent;
                        text:m_inactive;
                    }
                }


                //Clickable Area
                Rectangle{
                    id:rightClickArea;
                    color:"#d8d8d8";
                    width:parent.width;
                    height:100;
                    state : m_inactive;
                    MouseArea {
                        id:rightMouseArea;
                        anchors.fill: parent;
                        onClicked: {
                            parent.state = (parent.state == m_inactive ? m_active : m_inactive);
                        }
                    }

                    Text {
                        anchors.centerIn: parent;
                        text:"Click Me !::Right"
                    }

                    states : [
                        State {
                            name : m_active;
                            PropertyChanges{
                                target:rightClickArea;
                                color:"#00ff00"
                            }
                            PropertyChanges {
                                target: rightLabel;
                                text:m_active;
                            }

                        },
                        State {
                            name : m_inactive
                            PropertyChanges{
                                target:rightClickArea;
                                color:"#d8d8d8"
                            }
                            PropertyChanges {
                                target: rightLabel;
                                text:m_inactive;
                            }


                            StateChangeScript {
                                script : connections.target = rightMouseArea;
                            }

                        }

                    ]
                    transitions: [
                        Transition {
                            from: m_active
                            to: m_inactive

                            ColorAnimation {
                                from: "#00ff00"
                                to: "#d8d8d8"
                                duration: 1000
                            }
                        },
                        Transition {
                            from: m_inactive
                            to: m_active

                            ColorAnimation {
                                from: "#d8d8d8"
                                to: "#00ff00"
                                duration: 1000
                            }
                        }
                    ]
                }
            }

        }
    }

    Connections{
        target: parentItem;

        onNameChanged: {
            console.log("new value has added to parent");

            parentItem.var1 = "hello";

            console.log("------------->",parentItem.var2);
        }
    }

    Connections {
        id:connections;
        target:leftMouseArea;

        onClicked : {
            parentItem.name = "new value";
            console.log("Parent item new value is ->",parentItem.name);
            var currTarget;
            if(connections.target == leftMouseArea) {
                currTarget = "left Box"
            } else {
                currTarget = "right Box"
            }

            root.boxclicked(currTarget);
        }
    }

}
