import QtQuick 2.0


Rectangle {
    width:500;
    height:500;
    id:root;
    property int durations: 3000;


    Image {
        source : "assets/rocket.png"
        id:rocket;
        y:300;
    }

    MouseArea {
        anchors.fill:  parent;
        onClicked: {
            sequential.restart();
            console.log("fire");
        }
    }



    SequentialAnimation {
          id:sequential;
        NumberAnimation {
            target:rocket;
            property: "x";
            from:0
            to:250;
            easing.type: Easing.InOutQuad;
            duration: root.durations*0.6;
        }
        NumberAnimation {
            target:rocket;
            property: "y";
            to:0;
            easing.type: Easing.InOutQuad;
            duration: root.durations*0.4;
        }

        NumberAnimation {
            target:rocket;
            duration: root.durations;
            property: "opacity";
            to:0;
        }

    }


}
