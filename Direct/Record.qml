import QtQuick 2.0

Rectangle{
    property bool dev: true
    id:root
    color: "transparent"
//    border.color: dev == false ? "transparent" : "blue"
    anchors{
        margins: 5

    }
    RecordToolbar{
        border.color: dev == false ? "transparent" : "red"
        height: 50
        anchors{
            bottom: parent.bottom
//            horizontalCenter: parent.horizontalCenter
            left: parent.left
            right: parent.right
        }
//        dev: root.dev
//        anchors.fill: parent
    }
}
