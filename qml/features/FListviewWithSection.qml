import QtQuick 2.0

Item {
    width:800;
    height:600;


    ListView {
        id:listView;
        anchors.fill: parent;
        anchors.margins: 20
        height:100;

        clip:true;
        model:spaceMen;
        delegate:spaceMenDelegate;

        section.property: "nation"
        section.delegate: sectionDelegate;
    }

    Component {
        id:spaceMenDelegate;

        Item {
            width: ListView.view.width;
            height:20;

            Text {
                anchors.left: parent.left;
                anchors.verticalCenter: parent.verticalCenter;
                anchors.leftMargin: 8;
                font.pixelSize: 12
                text:name;
                color:"#1f1f1f"
            }

        }
    }

    Component {
        id:sectionDelegate;
        Rectangle{
            width: listView.width;
            height: 20;
            color:"#0000ff"
            Text {
                text:section;
                color:"#e0e0e0"
            }
        }
    }

    ListModel {
        id:spaceMen;
        ListElement{ name: "Abdul Ahad Mohamed ";nation:"Afganistan";}
        ListElement{ name: "Jeyprakash Jeybalan ";nation:"India";}
        ListElement{ name: "Deepak Subramaniam ";nation:"India";}
        ListElement{ name: "Suresh John David ";nation:"India";}
        ListElement{ name: "Noor Shahid ";nation:"UnitedKingdom";}
        ListElement{ name: "Paulose Kutty ";nation:"UnitedKingdom";}
        ListElement{ name: "Madhusudhan desai ";nation:"Afganistan";}
        ListElement{ name: "Mahitha Tallapureddy ";nation:"America";}
        ListElement{ name: "Debhasis Rana ";nation:"America";}
        ListElement{ name: "Preeti Sharda ";nation:"Spain";}
        ListElement{ name: "Sweetha Raj ";nation:"Spain";}
        ListElement{ name: "Vijay Sethupathy ";nation:"Singapore";}
        ListElement{ name: "Nayanthara  ";nation:"Singapore";}
        ListElement{ name: "Ajith Kumar ";nation:"Malaysia";}

    }
}

