import QtQuick 2.0

Item {

    property string name: "AdConn";

    Loader{
        id:conn;
        source: "AdConnection.qml"
    }


    Item {
        id:parentItem;
        property string name: "parent item";

        property string var1: "value1"
        property string var2: "value2"

    }

    Connections {
        target:conn.item;
        onBoxclicked: {
            console.log(" One of the boxes has been clicked "+name);
        }
    }

}

