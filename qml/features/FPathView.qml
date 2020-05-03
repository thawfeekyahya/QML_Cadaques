import QtQuick 2.0
FocusScope {

    focus:true;

    Rectangle {

        id:root;
        width:800;
        height:600;

        PathView {
            focus:true;
            id:pathView;
            clip:true;
            anchors.fill: parent;
            delegate:flipCardDelegate;

            model:100

            path : Path {
                startX : 0;
                startY : 0

                PathAttribute {name:"itemZ";value:0 }
//                PathAttribute {name:"itemAngle"; value: -90.0;}
                PathAttribute {name: "itemScale";value:0.5}
                PathQuad { x: 800; y: 0; controlX: root.width/2; controlY: root.height*0.5 } //PathLine  { x:root.width/2;y:root.height*0.4}

                /*
                //PathPercent{value:0.4}
                //PathLine { x:root.width/2;y:root.height*0.5}

//                PathAttribute{name:"itemAngle";value:0.0}
                PathAttribute{name:"itemScale";value:1.6}
                PathAttribute{name:"itemZ";value:100}
                PathQuad { x: 120; y: 100; controlX: -20; controlY: 75 }//PathLine{x:root.width/2;y:root.height*0.5}


                PathPercent{value:0.52}
                PathQuad { x: 120; y: 100; controlX: -20; controlY: 75 }//PathLine{x:root.width/2;y:root.height}

//                PathAttribute{name:"itemAngle";value:90.0}
                PathAttribute{name:"itemScale";value:0.5}
                PathAttribute{name:"itemZ";value:0} */
            }

            pathItemCount: 3;

            preferredHighlightBegin: 0.5;
            preferredHighlightEnd: 0.5;
        }

        Component {
            id:flipCardDelegate;


            Rectangle {
                id:wrapper;

                transformOrigin:Item.TopLeft

                width:150;
                height:64;

//                antialiasing: true;

                gradient: Gradient {
                    GradientStop{position: 0.0; color: "#2ed5fa"}
                    GradientStop{position: 0.1; color: "#2467ec"}

                }

                visible: PathView.onPath;
                scale:PathView.itemScale;
                z:PathView.itemZ;

                property variant rotX: PathView.itemAngle
                transform: Rotation {
//                    axis { x: 1; y: 0; z: 0 }

//                    angle: wrapper.rotX;
                    //origin { x: 32; y: 32; }
                }


                Text {
                    anchors.fill: parent;
                    anchors.centerIn: parent;
                    text:index;
                }
            }
        }
    }
}
