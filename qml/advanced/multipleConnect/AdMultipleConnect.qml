import QtQuick 2.5

Item {
    Rectangle {
        id: rect;
        property string name: "hi"
        signal send(string msg,string name);

        Component.onCompleted: {
            rect.send.connect(greet1);
            rect.send.connect(greet2);
            rect.send("Hello ","Thawfeek");
//            onNameChanged.connect(greet1);
//            rect.name = "hello"
        }
    }

    function greet1(msg,name) {
        console.log(msg,"Good Morning ",name);
    }

    function greet2(msg,name) {
        console.log(msg,"Welcome sir ,Please Have seat Mr.",name);
    }
}
