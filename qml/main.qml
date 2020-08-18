import QtQuick.Window 2.12
import QtQuick 2.2
import QtQuick.Controls 1.2

import "components"
import "features"
import "tests"
import "advanced/loader"
import "advanced/connections" as AdvConn
import "advanced/trackingDynamicObjects"
import "advanced/multipleConnect" as AdvMultCon

Window {
    id:root;

    visible: true
    width:800;
    height:600;

   FGridView {
       contentHeight: root.height;
       anchors.fill: parent
   }




}
