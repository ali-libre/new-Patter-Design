import QtQuick 2.0

Rectangle{
    id: root
    property bool dev: true
    clip: true
    anchors{
        horizontalCenter: parent.horizontalCenter
    }
    height: 200
    width: 200
    color: "transparent"
    border.color: dev == false ? "transparent" : "cyan"
    Image {
        id: img
        source: "../icons/Asset 54.svg"
        width: parent.width
        height: parent.height
        sourceSize.width: parent.width
        sourceSize.height: parent.height
        Component.onCompleted: console.log("x"+ x+ "y"+ y)
    }
}
