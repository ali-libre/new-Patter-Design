import QtQuick 2.0

Rectangle{
    color: "transparent"
    radius: 10
    width: 200
    height: 20
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
            height: 50
            anchors.fill: parent
            width: 200
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
