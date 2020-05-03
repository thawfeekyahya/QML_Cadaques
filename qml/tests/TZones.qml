import QtQuick 2.0


Item {
    anchors.fill: parent;

MouseArea {
    anchors.fill: parent;
    hoverEnabled: true;

    //property variant zone1:{"x":0,"y":0,"width":200,"height":100};

    onPositionChanged:{
        console.debug(mouseX,mouseY)
    }

    //Upper

    Rectangle{
        width:200;
        height:100;
        x:0
        y:0
        color: "red"
    }
    Rectangle{
        width:200;
        height:100;
        x:200
        y:0
        color: "green"
    }
    Rectangle{
        width:200;
        height:100;
        x:400
        y:0
        color: "blue"
    }

    //Middle

    Rectangle {
        width:600;
        height:150;
        x:0
        y:100;
        color:"black"
    }

    //Lower

    Rectangle{
        width:200;
        height:100;
        x:0
        y:250
        color: "red"
    }
    Rectangle{
        width:200;
        height:100;
        x:200
        y:250
        color: "green"
    }
    Rectangle{
        width:200;
        height:100;
        x:400
        y:250
        color: "blue"
    }

}


}
