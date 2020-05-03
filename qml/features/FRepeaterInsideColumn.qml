import QtQuick 2.0

Column {
    spacing: 2
        Repeater {
        model: 10
        delegate: Rectangle {
            width: 100
            height: 32
            color:"red"

            Text {
              text:index;
            }
        }
    }
}
