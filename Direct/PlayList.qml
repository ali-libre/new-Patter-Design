import QtQuick 2.0
import "../Botton"
Rectangle{
    property bool dev: false
    property var indexer: -1
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
        delegate: BcButtom{
            color: Qt.darker("grey")
            width: 70
            name: label
            height: width
        }

    }
}
