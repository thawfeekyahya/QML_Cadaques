import QtQuick 2.0


Item {
    anchors.fill: parent;

    Loader {
        id:_loader
        anchors.fill: parent
        source: "TChild.qml"
//        visible: false
    }

    Rectangle{
        width:300;
        height:300;
        x:0
        y:0
        color: "#803D72"
    }
    Rectangle{
        width:300;
        height:300;
        x:150
        y:150
        color: "#FF7AE4"
    }
    Rectangle{
        width:300;
        height:300;
        x:300
        y:300
        color: "#42203B"
    }

}
