import QtQuick 2.0

Rectangle{
    id: root
    border.color: dev == false ? "transparent" : "red"
    height: 50
    anchors{
        bottom: parent.bottom
        left: parent.left
        right: parent.right
    }
    color: "transparent"
    radius: 10
    width: 200
//    height: 20
    Row{
        anchors{
            left: parent.left
            right: parent.right
            verticalCenter: parent.verticalCenter
            margins: 20
        }
        spacing: width / 6
        Repeater{
            clip: true
//            height: 50
            anchors.fill: parent
//            width: 200
            model: RecordToolbarModel{}
            delegate: Image {
                id: img
                height: 20
                fillMode: Image.PreserveAspectFit
                anchors.verticalCenter: parent.verticalCenter
                sourceSize.width: width
                sourceSize.height: height
//                mipmap: true
                source: iconSource
            }
        }
    }
}
