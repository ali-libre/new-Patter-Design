import QtQuick 2.0

Rectangle{
    id: root
    property var name: "Test"
    property var h: 2
    color: "transparent"
    Text {
        id: label
        text: name
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
        color: "white"
    }
    Rectangle{
        color: "grey"
        height: h
        anchors{
            leftMargin: 5
            right: parent.right
            left: label.right
            verticalCenter: parent.verticalCenter
        }
    }
}

