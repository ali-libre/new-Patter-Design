import QtQuick 2.0

Rectangle{
    id: root
    property bool dev: true
    property var degree: 0
    clip: true
    anchors{
        horizontalCenter: parent.horizontalCenter
    }
    height: 200
    width: 200
    color: "transparent"
    border.color: dev == false ? "transparent" : "cyan"
    MouseArea{
        hoverEnabled: true
        anchors.fill: parent
        onMouseXChanged: {
            degree = - mouseX + mouseY
//            console.log("degree: "+ degree+ " x: " + mouseX)
        }
    }
    Image {
        id: img
        source: "../icons/Asset 54.svg"
        width: parent.width
        height: parent.height
        fillMode: Image.PreserveAspectFit
        sourceSize.width: parent.width
        sourceSize.height: parent.height
        // image rotation append below ______
        transformOrigin: Item.Center
        rotation: degree

    }
}
