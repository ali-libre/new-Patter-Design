import QtQuick 2.0
import "../Botton"

Rectangle{
    property bool dev: false
    property int indexer: -1
    id:l_panel
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
        name: "Color"
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
        cellWidth: 70
        cellHeight: cellWidth
        model: ColorPageModel{}
        delegate: BcButtom{
                        color: cColor
                        width: 60
                        height: width
                    }
    }

}
