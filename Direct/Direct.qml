import QtQuick 2.0
//import "./"

Rectangle{
    id: root
    property var itemMargins: 10
    property bool dev: false
    color: "transparent"
    border.color:  dev == false ? "transparent" : "white"
    anchors{
        top: parent.top
        left: parent.left
        right: pageList.left
        bottom: parent.bottom
    }

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
        dev: root.dev

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
