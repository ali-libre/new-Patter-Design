import QtQuick 2.0

Rectangle{
    property bool dev: true
    id:root
    color: "transparent"
    border.color: dev == false ? "transparent" : "blue"
    anchors{
        margins: 5

    }
    Degree{
        dev: root.dev
    }
    SpeedModel{

        dev: root.dev

    }
    RecordToolbar{
        id:recordToolbar
        border.color: dev == false ? "transparent" : "red"
        height: 50
        anchors{
            bottom: parent.bottom
            left: parent.left
            right: parent.right
        }
    }
}
