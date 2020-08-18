import QtQuick 2.0
import "../components" as Custom

Rectangle {
    width:800
    height:600

    readonly property string radioButton: "radio"
    readonly property string checkBoxButton: "checkbox"
    readonly property string toggleButton: "toggle"


     Custom.Button {
         x:100;
         y:100;
         label:"State1"
        onClicked: {
            trafficSignal.state = radioButton;
        }
    }

     Custom.Button {
         x:220;
         y:100;
         label:"State2"
        onClicked: {
            trafficSignal.state = checkBoxButton;
        }
    }



    Rectangle {
        id:trafficSignal;
        width:100;
        height:100;
        radius: 50;
        color:"#ff0000";

        states: [
            State{
                name:radioButton
                PropertyChanges {
                    target:trafficSignal
                    color:"#00ff00";
                }
            },
            State{
                name:checkBoxButton
                PropertyChanges {
                    target: trafficSignal
                    color:"#ff0000";
                }
            }

        ]

    }
}
