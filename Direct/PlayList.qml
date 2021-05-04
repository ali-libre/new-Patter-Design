import QtQuick 2.0

Rectangle{
    property bool dev: false
    id:root
    SplitBar{
        id:ssSpliter

        clip: true
        height: 15
        border.color: dev == false ? "transparent" : "red"
        anchors{
            top: PreviewPanel.bottom
            left: parent.left
            right: parent.right
        }
        name: "PlayList"
    }

    GridView{
        clip: true
        anchors{
            top: ssSpliter.bottom
            right: parent.right
            left:  parent.left
            bottom: parent.bottom
            margins: 10
            leftMargin: 20
        }
        cellWidth: 80
        cellHeight: cellWidth
        model: PlayListModel{}
        delegate: Rectangle{
            radius: 5
            Text {
                anchors.centerIn: parent
                text: label
            }
            color: Qt.darker("grey")
            width: 70
            height: width
//            Component.onCompleted: console.log("Color: " + color)
        }

    }
}
