import QtQuick 2.0

//GirdView
FocusScope {
    focus: true;
    id: _root
    property int contentHeight: 0

    Rectangle {
        anchors.fill: parent
            GridView {

                onCurrentIndexChanged: {
                    console.error("\n Thawfeek ========> \t  root.objectName -> FGridView  \n",
                                  "\t contentHeight -> \t ",contentHeight,"\n",
                                  "\t height -> \t ",height,"\n",
                                  "\n <======== \n");
                }

                focus: true
                anchors.fill: parent;
                clip:true;
                anchors.margins: 10;
                model : 184;

                contentHeight: _root.contentHeight;
                //flow : GridView.FlowTopToBottom;


                delegate: Item {
                    width:70
                    height:70
                    Rectangle {
                        width : 50;
                        height: 50;
                        color: "#00ff00"
                        Text {
                            text : index;
                            anchors.horizontalCenter: parent.horizontalCenter
                            anchors.centerIn: parent;
                        }
                    }
                }

                highlight:Rectangle {
                        color:"#00af00";
        //                width: GridView.view.width;
                }
            }
        }

}

