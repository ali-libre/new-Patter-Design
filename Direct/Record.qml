import QtQuick 2.0

Rectangle{
    property bool dev: true
    id:root
    color: "transparent"
    border.color: dev == false ? "transparent" : "blue"
    anchors{margins: 5}

    Degree{
        id:degree
        dev: root.dev
    }
    SpeedModel{
        id:speedModel
        dev: root.dev
    }
    RecordToolbar{
        id:recordToolbar

    }
}
