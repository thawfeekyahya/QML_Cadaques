import QtQuick 2.0

//GirdView
Rectangle {
    width:500;
    height:300;

    GridView {
        anchors.fill: parent;
        clip:true;
        anchors.margins: 10;
        model : 300;
        flow : GridView.FlowTopToBottom;


        delegate: Rectangle {
            width : 50;
            height: 50;
            color: "#00ff00"
            Text {
                text : index;
                anchors.centerIn: parent;
            }
        }

        highlight:Rectangle {
                color:"#00af00";
//                width: GridView.view.width;
        }
    }
}

