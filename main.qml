import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12
import QtGraphicalEffects 1.0
import "./Direct"
//import SidePanel
ApplicationWindow {
    id: rootWindow
    property bool dev: false
    visible: true
    width: 1090
    height: 600
    color: "#1c1c1e" //blacklead Color

    //-------------------------------Root Rectangle----------------------------
    Rectangle{
        id:root
        property var itemMargins: 5
        anchors.fill: parent
        border.color: dev == false ? "transparent" : "blue"
        border.width: 2
        anchors.margins: root.itemMargins
        color: "transparent"
        //-------------------------------page Side----------------------------
        PageList{
            id:pageList
            anchors{
                top: parent.top
                bottom: parent.bottom
                right: parent.right
            }
            width: parent.width * .1
        }

        //-------------------------------Direction Side----------------------------
        Direct{
            id:directPanel
            dev: false
            anchors{

                top: parent.top
                left: parent.left
                right: pageList.left
                bottom: parent.bottom
            }
        }

    }
}
