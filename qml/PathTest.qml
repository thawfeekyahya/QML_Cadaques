import QtQuick 2.0

FocusScope{
    focus:true;

    Rectangle {

        width:800;
        height:600;
        PathView {

             focus:true;
             model: 50;
             clip:true;
             anchors.fill: parent;
             delegate:viewDelegate;



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
            id:viewDelegate;
            Rectangle {

                width:100;
                height:40;
                gradient:Gradient{
                    GradientStop{position: 0.0;color: "#ff0000"}
                    GradientStop{position: 0.1;color: "#00ff00"}
                }

                opacity: PathView.itemAlpha;
                z:PathView.itemZ;
                scale:PathView.itemScale;

                Text {
                    anchors.fill: parent;
                    text:index;
                }
            }
        }
    }
}

