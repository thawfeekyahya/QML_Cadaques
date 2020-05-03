import QtQuick 2.0

Rectangle {
    width:800;
    height:600;



    //List Add Remove Element Dynamically

    gradient: Gradient {
        GradientStop {position: 0.0;color:"#dbddde"}
        GradientStop {position: 0.1;color:"#5fc9f8"}
    }

    ListModel {
        id:theModel;

        ListElement{number:1}
        ListElement{number:2}
        ListElement{number:3}
        ListElement{number:4}
        ListElement{number:5}
        ListElement{number:6}
        ListElement{number:7}
        ListElement{number:8}
        ListElement{number:9}
        ListElement{number:10}
    }



    Rectangle{
        property int count:11;

        anchors.left: parent.left;
        anchors.right: parent.right;
        anchors.bottom: parent.bottom;

        height: 40;
        color:"#53d769";
        border.color: Qt.lighter(color,1.1);

        Text{
            anchors.centerIn: parent;
            text:"Add Item "
        }

        MouseArea {
            anchors.fill: parent;
            onClicked:  {
                theModel.append({"number": ++parent.count})
            }
        }

    }


    GridView {
        id:theGridView;
        anchors.fill: parent;
        anchors.margins: 20
        anchors.bottomMargin: 80

        clip:true;

        model:theModel;

        cellWidth: 45; cellHeight: 45;

        delegate: numberDelegate;

//        onAddChanged: SequentialAnimation {
//            NumberAnimation {
//                target:wrapper;property: scale;from:0;to:1;duration:500;
//            }
//        }


    }


    Component {
        id:numberDelegate;
        Rectangle {
            id:wrapper;
            width:40;
            height:40;

            gradient: Gradient {
                GradientStop {position: 0.0;color:"#f8306a"}
                GradientStop {position: 1.0;color:"#fb5b40"}
            }

            Text {
                anchors.centerIn: parent;
                font.pixelSize: 10
                text:number;

            }

            MouseArea {
                anchors.fill: parent;
                onClicked : {
                        theModel.remove(index);
                }
            }


        }
    }


}
