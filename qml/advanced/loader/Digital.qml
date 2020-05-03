import QtQuick 2.0

//Digital
Item {
    id:root;
    width:220;
    height:150
    property alias speed : digtalDisp.time;
    Text {
        anchors.centerIn: parent;
        width:200;
        height:100;
        text:"0"
        font.pointSize: 100;
        property int time : 0;
        id:digtalDisp;
        Behavior on text{
            id:textTween;
            NumberAnimation {
                duration : speed;
            }
        }
    }

    onSpeedChanged: {
        digtalDisp.text = "360"
        console.log(root.speed)
    }

}

