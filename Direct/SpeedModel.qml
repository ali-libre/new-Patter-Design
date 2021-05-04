import QtQuick 2.0

Rectangle{
    id: root
    property bool dev: true
    color: "transparent"
    anchors{
        bottom: recordToolbar.top
        horizontalCenter: parent.horizontalCenter
        margins: 10
    }
    height: 50
    border.color: /*dev == false ? "transparent" :*/ Qt.darker("grey")
    width: childrenRect.width + row.spacing  * 6 + 10 // needed to fix
    radius: 15

    Row{
        id:row
        anchors.horizontalCenter: parent.horizontalcenter
        anchors.fill: parent
        anchors.margins: 10
        spacing: 20
        Repeater{
            anchors.fill: parent
            model: SpeedModelList {}
            delegate: Rectangle{
                anchors.verticalCenter: parent.verticalCenter
                width: 20
                height: width
                color: "transparent"
                border.color: dev == false ? "transparent" : "yellow"
                Text {
                    anchors.centerIn: parent
                    id: name
                    text: tex
                    font.bold: true
                    color: "white"

                }
            }
        }
    }
}
