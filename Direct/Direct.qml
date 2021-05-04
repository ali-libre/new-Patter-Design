import QtQuick 2.0
//import "./"

Rectangle{
    id: root
    property var itemMargins: 10
    property bool dev: true
    color: "transparent"
    border.color:  dev == false ? "transparent" : "white"

    //-------------------------------Left panel----------------------------
    Preview_Color_Sample{
        id: previewColorSample
        anchors{
            top: parent.top
            left: parent.left
            bottom: parent.bottom
        }
        dev: root.dev
        width: parent.width /2
    }

    //-------------------------------Middle panel----------------------------
    Record{
        id:recordPanel
        border.color: dev == false ? "transparent" : "orange"

        anchors{
            margins: itemMargins
            top: parent.top
            right: parent.right
            left: previewColorSample.right
            bottom: parent.bottom
        }
        width: parent.width /2

    }
}
