import QtQuick 2.0

Rectangle {
    width:800
    height:600
    Rectangle {
        id:trafficSignal;
        width:100;
        height:100;
        radius: 50;
        color:"#ff0000";

        states: [
            State{
                name:"go"
                PropertyChanges {
                    target:trafficSignal
                    color:"#00ff00";
                }
            },
            State{
                name:"stop"
                PropertyChanges {
                    target: trafficSignal
                    color:"#ff0000";
                }
            }

        ]



    }


    MouseArea{
        anchors.fill: parent;
        onClicked: {
            trafficSignal.state = (trafficSignal.state == "go" ? "stop" : "go");
        }
    }
}
