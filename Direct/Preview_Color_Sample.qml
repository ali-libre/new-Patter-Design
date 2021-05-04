import QtQuick 2.0

//-------------------------------left Side----------------------------
Rectangle{
    id: root
    property bool dev: true
    border.color: dev == false ? "transparent" : "red"
    color: "transparent"
    width: (root.width - sideRect.width) /2
    anchors{
        left: parent.left
        top: parent.top
        bottom: parent.bottom
        margins: 5
    }

//-------------------------------Preview Side----------------------------
    PreviewPanel{
        id:previewPage
        width: parent.width
        height: parent.height /3
        border.color: dev == false ? "transparent" : "purple"
        anchors{
            top: parent.top
            right:   parent.right
            left:    parent.left
            margins: root.anchors.margins
        }
//        dev: dev
        color: "transparent"

    }


    //-------------------------------Sample Side----------------------------
    PlayList{
        id:samplePage
//            width: parent.width
        height: root.height /3
        border.color: dev == false ? "transparent" : "orange"
        anchors{
            top: previewPage.bottom
            margins: root.anchors.margins
            right:   parent.right
            left:    parent.left
        }
        color: "transparent"
        dev: root.dev

    }

    //-------------------------------Color Side----------------------------
    ColorPage{
        id:colorPage
        border.color: dev == false ? "transparent" : "orange"

        height: root.height /3
        anchors {
            top: samplePage.bottom
            right:   parent.right
            left:    parent.left
            bottom:  parent.bottom
            margins: root.anchors.margins
        }
        color: "transparent"

        dev: root.dev
    }
}
