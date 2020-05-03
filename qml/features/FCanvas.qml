import QtQuick 2.0

Item {
        Canvas {
            width:200;
            height:200;

            //Simple Box
            /*
            onPaint: {
                var ctx = getContext("2d");
                ctx.lineWidth = 4;
                ctx.strokeStyle = "blue"
                ctx.fillStyle = "steelblue";
                ctx.beginPath();
                ctx.moveTo(50,50);
                ctx.lineTo(150,50);
                ctx.lineTo(150,150);
                ctx.lineTo(50,150);
                ctx.closePath();
                ctx.fill();
                ctx.stroke();
            }
            */

            //Graident Fill
            onPaint : {
                var ctx = getContext("2d");
                var gradient = ctx.createLinearGradient(100,0,100,200);
                gradient.addColorStop(0,"blue");
                gradient.addColorStop(0.5,"lightSteelBlue");
                ctx.fillStyle = gradient;
                ctx.fillRect(50,50,100,100);
            }
        }


}

