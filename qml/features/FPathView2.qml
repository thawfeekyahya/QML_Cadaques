import QtQuick 2.4
import QtGraphicalEffects 1.0
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

            path :  Path {
                id:quadPath;
                property int centerX: root.width*0.5;
                property int centerY: root.height*0.5;
                property int bufferWidth:600;
                property int bufferHeight:20;


                startX: centerX;
                startY: centerY;
                PathAttribute{name:"itemAlpha";value:0.5}
                PathAttribute{name:"itemZ";value:1}
                PathAttribute{name:"itemScale";value:0.5}



                PathQuad {x:quadPath.centerX;y:quadPath.centerY+50;controlX:quadPath.centerX+quadPath.bufferWidth;controlY:quadPath.centerY+quadPath.bufferHeight}
                PathAttribute{name:"itemAlpha";value:1}
                PathAttribute{name:"itemZ";value:100}
                PathAttribute{name:"itemScale";value:1}



                PathQuad {x:quadPath.centerX;y:quadPath.centerY;controlX:quadPath.centerX-quadPath.bufferWidth;controlY:quadPath.centerY+quadPath.bufferHeight}
                PathAttribute{name:"itemAlpha";value:0.5}
                PathAttribute{name:"itemZ";value:1}
                PathAttribute{name:"itemScale";value:0.5}
            }

            pathItemCount: 12;

            preferredHighlightBegin: 0.5;
            preferredHighlightEnd: 0.5;
        }

        Component {
            id:flipCardDelegate;
            Rectangle {

                transformOrigin:Item.Center;

                width:150;
                height:100;

                antialiasing: true;

                gradient: Gradient {
                    GradientStop{position: 0.0; color: "#2ed5fa"}
                    GradientStop{position: 0.1; color: "#2467ec"}

                }

                opacity: PathView.itemAlpha;
                z:PathView.itemZ;
                scale:PathView.itemScale;

                Text {
                    anchors.fill: parent;
                    anchors.centerIn: parent;
                    text:index;
                }
            }

        }

        DropShadow {
            anchors.fill: pathView;
            horizontalOffset: 0
            verticalOffset: 15
            radius: 32;
            samples: 32
            color: "#80000000"
            source: pathView
        }
    }
}
