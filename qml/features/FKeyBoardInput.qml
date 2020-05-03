import QtQuick 2.0

//KeyPress Test
Rectangle {
    width: 800;
    height:600;
    color:"#2f2f2f";

    Rectangle {
        id:square;
        width:100;
        height:100;
        color:"#00ff50";
    }

    focus: true;

    Keys.onLeftPressed: square.x -= 10;

    Keys.onRightPressed : square.x += 10;
    Keys.onUpPressed  :square.y -= 10;
    Keys.onDownPressed : square.y += 10;

    Keys.onPressed:  {
        switch(event.key) {
            case Qt.Key_Plus :
                square.scale += 0.2;
            break;
            case Qt.Key_Minus :
                square.scale -= 0.2;
            break;
        }
    }

}
