import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12
import QtGraphicalEffects 1.0

ApplicationWindow {
    id: rootWindow
    property bool borderColor: /*false//*/true
    property var buttonWidth: 80
    property var widthSize: 30
    visible: true
    width: 1200
    height: 800
    color: "grey"

    Rectangle{
        id:root
        property var itemMargins: 5
        anchors.fill: parent
        border.color: borderColor === true ? "blue" : "transparent"
        border.width: 2
        anchors.margins: root.itemMargins
        color: "transparent"//rootWindow.color
        //-------------------------------Left Side----------------------------
        LocationBar{
            id:sideRect
        }

        //-------------------------------right panel -------------------------------
        Rectangle{
            id:rightPanel

            anchors {
                top:  parent.top
                bottom: parent.bottom
                right: parent.right
                left: sideRect.right

                margins: root.itemMargins
            }

            color: root.color//"transparent"
            border.color: borderColor === true ? "black" : "transparent"

//------------------------------------Top------------------
//            Rectangle{

//                id:topbar
//                color: "transparent"

//                anchors {
//                    top: parent.top
////                    horizontalCenter: parent.horizontalCenter
//                    left: parent.left
//                    right: parent.right


////                    topMargin: 75
//                }
//                height: 70
                
//            }
//------------------------------------Middle------------------
                Rectangle{
                    id:  topRect
                    anchors.top: parent.top//topbar.bottom
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.margins: root.itemMargins
//                    anchors.top: parent.top
//                    anchors.bottom: projectRect.top
                    height: 100
                    color: "red"
                    border.color: borderColor === true ? "red" : "transparent"

                }

//-------------------------------Recent----------------------------

                Rectangle{
                    id: recentTab
                    border.color: borderColor === true ? "orange" : "transparent"
                    height: 50
                    anchors{
                        top: topRect.bottom
                        left: parent.left
                        right: parent.right
                        bottom: parent.bottom
                        margins: 20//root.itemMargins

                    }
                    color: "transparent"
                    ColumnLayout {
                        anchors.fill: parent
                        spacing: 0
                        clip: true
                        TabBar{
                            id:recent
                            currentIndex: recentView.currentIndex
                            TabButton{
//                                icon: "qrc:/icons/Fountain_mono.svg"
                                text: "Recent Directing"
                                width: implicitWidth
                            }
                            TabButton{
//                                icon: "qrc:/icons/Fountain_Color.svg"
                                width: implicitWidth
                                text: "Recent Design"
                            }
                        }
                        SwipeView{
                            id:recentView
                            currentIndex: recent.currentIndex
                            Layout.fillHeight: true
                            Layout.fillWidth: true

                            Item{
                                id:tab0
                                RecentDesign{
                                    anchors.fill: parent
                                    color: "transparent"
                                }
                            }
                            Item{
                                id:tab1
                                RecentDirecting{
                                    color: "transparent"
                                    anchors.fill: parent
                                }
                            }
                        }
                    }


            }

        }
    }
}
