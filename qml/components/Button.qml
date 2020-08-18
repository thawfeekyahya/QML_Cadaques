import QtQuick 2.0

Item {
    id:root;
    property int exposedVar: 5;
    property alias buttonColor: buttonArea.color;

    signal clicked;

    property alias label:buttonText.text


    Rectangle {
        id:buttonArea;

        Text {
            id:buttonText;
            text:root.label
        }

        width:100;
        height:35;
        color:"#00df00";
    }

    MouseArea {
        anchors.fill: buttonArea;
        onClicked: {
            root.clicked();
        }
    }

}
