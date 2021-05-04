import QtQuick 2.0
import "../Botton"

Rectangle{
    property bool dev: false
    property var backClick: 0
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
        cellWidth: 80
        cellHeight: cellWidth
        model: ColorPageModel{}
        delegate: Rectangle{
            radius: 5
            color: cColor
            width: 50
            height: width
            MouseArea{
                anchors.fill: parent
                // !! ___________ onclick change Bridge previde Color_____________ !!
                onClicked: {previewPage.kolor = color
//                    border.color= "blue"
                }
            }
        }

    }

}
