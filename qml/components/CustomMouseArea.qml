import QtQuick 2.0

Item{
    id: triangleMouseArea

    width:50;
    height:50;

    property alias mouseX: mouseArea.mouseX;
    property alias mouseY: mouseArea.mouseY;

    property bool containsMouse: {
        var posX = mouseX;
        var posY = mouseY;
        var hypotneous = triangleMouseArea.width * triangleMouseArea.width + triangleMouseArea.height * triangleMouseArea.height;
        var clickLength = Math.sqrt(posX*posX + posY*posY);

        var bufferLength = hypotneous/2;

        var isInsideTriagle = clickLength > bufferLength;
        return isInsideTriagle;

    }

    readonly property bool pressed: containsMouse && mouseArea.pressed
    signal clicked


    Image {
        id:triangleImg
        source: "../assets/cross_triangle.jpg";

    }

    MouseArea {
            id: mouseArea
            anchors.fill: parent
            hoverEnabled: true
            acceptedButtons: Qt.LeftButton | Qt.RightButton
            onClicked:  {
                if (triangleMouseArea.containsMouse) triangleMouseArea.clicked()
        }
    }
 
}
