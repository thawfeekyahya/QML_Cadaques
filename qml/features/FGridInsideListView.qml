import QtQuick 2.0

FocusScope {
	
	anchors.fill: parent;

	ListView {
		anchors.fill: parent;
        model: 20
        spacing:5

        highlight:Rectangle {
                color:"#00af00";
        }


        delegate:Grid {
            //anchors.fill: parent
            columns: 3
            spacing: 2
            anchors.margins: 10;

            Repeater {
                model:10
                delegate:Rectangle{ color:"red"; width: 100; height:50}
            }
        }
	}


}
