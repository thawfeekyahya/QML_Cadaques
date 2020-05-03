import QtQuick 2.0

Item {

   AnimatedSprite {
        id:mascot
        width: 265;
        height: 468;
        source: "assets/mascot_no_2.png";
        frameCount: 4;
        frameDuration: 120;
        frameSync: true;
        frameWidth: 265;
        frameHeight: 468;
   }

}
