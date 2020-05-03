import QtQuick 2.5
import "create_object.js" as CreateObject

Item {
    id:root;

    ListModel {
        id :objectModel
    }

    function addPlanet() {
        CreateObject.create("Planet.qml",root,itemAdded);
    }

    function addRocket() {
        CreateObject.create("Rocket.qml",root,itemAdded);
    }

    function itemAdded(obj,src) {
        objectModel.append({"obj":obj,"source":src})
    }

    Row {
        spacing: 5;
        Rectangle{
            width:100;
            height: 100;
            color:"red";
            Text {
                font.pointSize: 20;
                text:"Planet"
            }
            MouseArea {
                anchors.fill: parent;
                onClicked: {
                    addPlanet();
                }
            }
        }


        Rectangle{
            color:"blue";
            width: 100;
            height: 100;
            Text {
                font.pointSize: 20;
                text:"Rocket"
            }
            MouseArea {
                anchors.fill: parent;
                onClicked: {
                    addRocket();
                }
            }
        }
    }
}
