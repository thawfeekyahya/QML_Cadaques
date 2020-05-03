import QtQuick 2.12
import QtGraphicalEffects 1.12


Rectangle {
    anchors.fill: parent
    property int durations: 3000;


    Image {

        property int fillWidth: 0;
        property int fillHeight: 0;


        anchors.left: parent.left
        source : "assets/sukoi35.jpg"
        id:rocket;
        fillMode:Image.Pad
        width:800;
        height:800;
        layer.enabled:true
        layer.sourceRect:Qt.rect(0,0,fillWidth,fillHeight)
    }


    MouseArea {
        anchors.fill:  parent;
        onClicked: {
            parllel.start();
            console.log("fire");
        }
    }
    ParallelAnimation {
         id:parllel;

//        NumberAnimation {target:rocket;property: "fillWidth";from:0;to:800;easing.type: Easing.InOutQuad;duration: 5000;}
        NumberAnimation {target:rocket;property: "width";from:0;to:800;easing.type: Easing.InOutQuad;duration: 2500;}


//        NumberAnimation {target:rocket; property: "fillHeight";from:0;to:800;easing.type: Easing.InOutQuad;duration: 5000;}
        NumberAnimation {target:rocket;property: "height";from:0;to:800;easing.type: Easing.InOutQuad;duration: 2500;}


//        NumberAnimation {
//            target:rocket;
//            duration: root.durations;
//            property: "rotation";
//            from:0
//            to:360;
//        }

    }
}
