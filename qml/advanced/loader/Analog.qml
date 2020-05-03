import QtQuick 2.0

//Analog.qml
Item {
    id:root;

    property alias speed: needle.power;




    Image {
        id:speedometer;
        source: "assets/speedometer.png";
    }


    Canvas {
        id:needle;

        property int power: 100;

        width:150;
        height:150;
        x: 150;

        transformOrigin: Item.BottomLeft;


        onPaint : {

            var ctx = getContext("2d");
            ctx.lineWidth = 10;
            ctx.strokeStyle = "#ff0000";
            ctx.moveTo(0,0)
            ctx.lineTo(0,200);
            ctx.stroke();

        }



        Behavior on rotation {
            NumberAnimation {
                duration: speed;
            }
        }


    }

    onSpeedChanged: {
        needle.rotation += 360;
    }






}

