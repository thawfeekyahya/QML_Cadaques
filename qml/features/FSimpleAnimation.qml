import QtQuick 2.0

Rectangle {
    width:800;
    height:600;
    Image {
        id: rocket;
        y: 600;
        source: "assets/rocket.png";

        NumberAnimation on rotation {
            to:360;
            duration: 4000;
            loops:Animation.Infinite;
        }

       NumberAnimation on opacity {
            to:0.5;
            duration:4000;
       }

       NumberAnimation on scale {
           to:0.1;
           duration:4000;
       }

        NumberAnimation on y {
            to:-300;
            duration:4000;
            loops:Animation.Infinite;
        }


    }
}
