import QtQuick 2.0
Rectangle {



    property int count: 1;

    width: 500;
    height: 500;
    Image {
        id:rocket;
        source: "assets/rocket.png";
        x: parent.width/2 - this.width /2;
        y: 400;
        KeyNavigation.tab : updateText;
        focus:true;
        Behavior on y {
            NumberAnimation {
                duration: 300;
            }

        }
        Rectangle {
            width: 100
            height: 62
        }

    }

    TextInput  {
        id:label;
        text: "Rocket Ready";
        x : parent.width/2 - this.width/2;
        y:rocket.height+20;
        KeyNavigation.tab : rocket;

    }

    Text {
        id:updateText;
        text : "Text Update -> "+count;
        KeyNavigation.tab:label ;
        y:  200;
    }

    Keys.onSpacePressed:  {
        increament();
        console.log("keypressed");
    }

    Keys.onReturnPressed: {
        count = 0;
    }

    Rectangle {
        id: rect;
        width:100;
        height: 100;
        gradient: Gradient {
            GradientStop {position: 0.0; color: "#d8d8d8"}
            GradientStop {position: 2.0; color: "#f193D8"}
        }
    }

    Rectangle {
        id : rect2;
        width: 100;
        height : 50;
        x: rect.x + rect.width + 10;
        border {
            width: 5;
            color: "#ffd8CC";
        }
    }

    function increament() {
        count++;
        rocket.y  -= count;
        if(rocket.y < -rocket.height) {
            rocket.y = 400;
        }

    }
}



