import QtQuick 2.0

FocusScope {
    focus: true;
    property alias input: input.text;
    Rectangle {
        width: 100
        height: 62
        color: "#d8f1e3";
//        anchors.centerIn: parent;


    }
    TextInput {
        id:input;
        text:"Enter you text";
        focus: true;
//        anchors.centerIn: parent;
    }
}
