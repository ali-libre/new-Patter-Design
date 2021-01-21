import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12
import QtGraphicalEffects 1.0

ApplicationWindow {
    id: rootWindow
    visible: true
    width: 640
    height: 480
//    implicitWidth: 600
    color: "transparent"
    Image{
        source: "/home/minoosa/workspace/qt/QtCreator-Welcom_Sample/icons/Screenshot_20210121_130247.png"
        anchors.bottom: root.bottom
        anchors.right: root.right
        anchors.top: root.top
        anchors.left: root.left
        OpacityMask {
            source: mask
            maskSource: input
        }

        LinearGradient {
            id: mask
            anchors.fill: parent
            gradient: Gradient {
                GradientStop { position: 0; color: "black" }
                GradientStop { position: 0.999; color: "transparent"}
            }
        }
    }

    Rectangle{
        id:root
        property var itemMargins: 5
        anchors.fill: parent
        border.color: "blue"
        border.width: 2
        anchors.margins: root.itemMargins
        color: "transparent"
        //-------------------------------Left Side----------------------------
        Rectangle{
            id:sideRect
            border.color: "cyan"
            anchors{
                top: root.top
                bottom: root.bottom
                margins: root.itemMargins
                left: root.left
            }
            width: 100
            color: "transparent"
            BtnSample{backColor: "grey" ;iconSize: 30;lable: "btn1"; width: 100; desc:"test"; iconSrc:"qrc:/icons/folder.png"}
        }

        //-------------------------------Top Side----------------------------
        Rectangle{
            id:topRect
            width: parent.width
            height: 200
            border.color: "orange"
            anchors{
                top: root.top
                margins: root.itemMargins
                left: sideRect.right
                right: root.right
            }
            color: "transparent"

        }

        //-------------------------------Bottem Side----------------------------
        Rectangle{
            id:bottemRect
            border.color: "red"
            anchors {
                top: topRect.bottom
                bottom:  root.bottom
                left: sideRect.right
                right: root.right
                margins: root.itemMargins
            }
            color: "transparent"

            Grid{
                padding: 10
                spacing: 5
//                layoutDirection: "RightToLeft"
                anchors.left: parent.left
                anchors.right:  parent.right
//                columns: 3

//                children.anchors.horizontalCenter: root
//                rows: 2
//                Layout{
//                    Layout.alignment: Qt.AlignHCenter
                    BtnSample{backColor: "black" ;iconSize: 30;lable: "btn1"; width: 100; desc:"test"; iconSrc:"qrc:/icons/folder.png"}
                    BtnSample{iconSize: 30;lable: "btn2"; width: 100; /*desc:"test"*/}
                    BtnSample{iconSize: 30;lable: "btn3"; width: 100; desc:"test"}
                    BtnSample{iconSize: 30;lable: "btn4"; width: 100; desc:"test"; iconSrc:"qrc:/icons/folder.png"}
                    BtnSample{iconSize: 30;lable: "btn5"; width: 100; /*desc:"test"*/}
                    BtnSample{iconSize: 30;lable: "btn6"; width: 100; desc:"test"}
                    BtnSample{iconSize: 30;lable: "btn7"; width: 100; desc:"test"; iconSrc:"qrc:/icons/folder.png"}
                    BtnSample{iconSize: 30;lable: "btn8"; width: 100; /*desc:"test"*/}
                    BtnSample{iconSize: 30;lable: "btn9"; width: 100; desc:"test"}
                    BtnSample{iconSize: 30;lable: "btn7"; width: 100; desc:"test"; iconSrc:"qrc:/icons/folder.png"}
                    BtnSample{iconSize: 30;lable: "btn8"; width: 100; /*desc:"test"*/}
                    BtnSample{iconSize: 30;lable: "btn9"; width: 100; desc:"test"}
//                }

            }

        }

    }
}
