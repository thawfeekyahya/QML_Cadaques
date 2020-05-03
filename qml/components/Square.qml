import QtQuick 2.0

Item{

    property alias iconText: icon.text
    property alias channelNameTxt: channelName.text
    property alias iconColor: icon.color

    id: k_timelinechannelnamewhite_renderer
    width: 307
    height: 72
    Item{
        id: icon_boundingBox
        y: 24
        width: 68
        height: 26
        Text{
            id: icon
            color: "#000000"
            font.pixelSize: 26
            font.letterSpacing: 0
            anchors.right: parent.right
            text: "\ue000"
            anchors.baseline: parent.top
            anchors.baselineOffset: 21
        }
    }
    Item{
        id: channelName_boundingBox
        x: 94
        y: 11
        width: 213
        height: 50
        Text{
            id: channelName
            color: "#000000"
            font.pixelSize: 40
            font.letterSpacing: 0
            font.capitalization: Font.AllUppercase
            text: "SHOWTIME"
            anchors.baseline: parent.top
            anchors.baselineOffset: 39
        }
    }
}
