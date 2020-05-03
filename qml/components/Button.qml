import QtQuick 2.0

Item {
    id:root;
    property int exposedVar: 5;
    property alias buttonColor: buttonArea.color;

    signal clicked;


    Rectangle {
        id:buttonArea;
        width:100;
        height:35;
        color:"#00df00";
    }

    MouseArea {
        anchors.fill: buttonArea;
        onClicked: {
            root.clicked();
            exposedVar += 1;
        }
    }

}
