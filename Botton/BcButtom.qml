import QtQuick 2.0
import "../Direct"

Rectangle{
    id: root
    property bool press: false
    property bool release: false
    property bool borderValue: false
    property var name: ""
//    anchors.fill: parent
    width: 200
    height: 200
    color: "yellow"
    radius: 5

    Rectangle{
        anchors{
            verticalCenter: parent.verticalCenter
            horizontalCenter: parent.horizontalCenter
        }
        width: parent.width   -6
        height: parent.height -6
        color: "transparent"
        radius: root.radius
        border.color: indexer == index ? Qt.darker(root.color): root.color
        border.width: 3
        Text{
            id: label
            text: name
            anchors{
                horizontalCenter: parent.horizontalCenter
                verticalCenter: parent.verticalCenter
            }
        }
    }
    MouseArea{
        anchors.fill: root
        onClicked: {
//            label.text =index
            borderValue = true
            previewPage.kolor = root.color
            indexer = index
        }
    }

}
