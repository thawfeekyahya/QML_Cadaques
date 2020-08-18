import QtQuick 2.0


Rectangle {
    width:500;
    height:500;
    id:root;
    property int durations: 3000;
    property int anim: 0

    Image {
        source : "assets/rocket.png"
        id:rocket;
        y:300;
    }

    MouseArea {
        anchors.fill:  parent;
        onClicked: {
            sequential.restart();
            _anim.restart();
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
            id:_yAnim;
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

   SequentialAnimation on anim {
        loops: Animation.Infinite
        NumberAnimation {from:1; to: 50 }
        PauseAnimation {
            duration: 200
        }
    }

   onAnimChanged: {
       //console.log("anim ----->",anim)
   }



}
