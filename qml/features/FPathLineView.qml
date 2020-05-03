import QtQuick 2.0

FocusScope {
    focus: true;

    ListModel{
        id:issueCardModel;
        ListElement{label:"Head Light"}
        ListElement{label:"Back Light"}
        ListElement{label:"Left Door"}
        ListElement{label:"Right Door"}
    }

    Rectangle {
        width:  800;
        height: 600;

        PathView{
            id:pathView
            focus: true;
            model:issueCardModel
            delegate: delegate
            anchors.fill: parent;
            pathItemCount: 7
            //clip:true

            path:Path{
                startX:100;
                startY:100;

                PathLine{x:200;y:200}
                PathLine{x:300;y:300}

            }
        }

        Component{
            id:delegate
            Rectangle{
                width:300
                height:100
                color:Qt.rgba(1,1,0,1);
                radius: 8
                border.color: Qt.rgba(1,0.2,0,1);
                Text{
                    anchors.centerIn: parent
                    text:modelData
                }
            }
        }
    }

}
