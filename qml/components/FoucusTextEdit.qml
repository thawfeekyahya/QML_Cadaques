import QtQuick 2.0

FocusScope {
    Rectangle {
        width: 100
        height: 62
        color: "#d8d8d8";
        border.color: Qt.lighter(this.color);
    }

    TextEdit {
        focus : true;
        id:lEdit;
        text:"Enter your text here";
        anchors.fill: parent;
        anchors.margins: 4;
    }
}
