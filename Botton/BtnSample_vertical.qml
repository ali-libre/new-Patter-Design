import QtQuick 2.12
import "../Direct"

Rectangle{
    id:root

    property var iconSize: 30
    property var time: 400
    property var lable: "Test"
    property var desc: ""//: "description"
    property var iconSrc : "../icons/Ultralight-S (4).svg"
    property color fontColor: "black"
    property color backColor: "grey"
//    property color borderColor: "transparent"
    property bool dev: true
    //    property color FontColor: "black"

    width: 70//iconRect.children.width + lableRect.children.width
//    implicitWidth: 50
    height: 70
//    radius: 5
    border.width: 1
//    border.color: borderColor
    color: indexer == index ? "white" : Qt.darker("grey")

//--------------------icon--------------------


    Rectangle{
        id:lableRect
        color: parent.color
        anchors {
            horizontalCenter: parent.horizontalCenter
            verticalCenter: parent.verticalCenter
        }
        height: childrenRect.height
//        border.color: borderColor


        Rectangle{
            id:iconRect
            anchors.top: parent.top
            width: icon.sourceSize.width > 0 ? iconSize : 0    //parent.width
            height: width
            color: parent.color//"red"
//            border.color: borderColor//"yellow"
            anchors {
                margins: 5
                horizontalCenter: parent.horizontalCenter
            }

            Image {
                id: icon
//                sourceSize.width: width
//                sourceSize.height: height
                fillMode: Image.PreserveAspectFit
                anchors.centerIn: parent
                anchors.fill: parent
                smooth: true
                mipmap: true
                source: iconSrc
            }
        }

        Text {
            id: name
            text: lable //qsTr("Button 1")
            color: fontColor
            elide: Text.ElideMiddle
            clip: true
            horizontalAlignment: Text.AlignHCenter
            font.pointSize: 12
            anchors{
                top: iconRect.bottom
                horizontalCenter: parent.horizontalCenter
            }

        }
//        Text {
//            id: description
//            text: "_______" //qsTr("Button 1")
//            color: "black"

//            anchors.top: name.bottom
//            anchors.left: parent.left
//            anchors.right: parent.right
//            anchors.horizontalCenter: parent.horizontalCenter
//            elide: Text.ElideLeft
//            font.pointSize: 12
//            height: 20
//        }
//    }

    MouseArea{
        id:mouseA
        anchors.fill: parent
        hoverEnabled: true
//        onEntered: {
//            state: "enter"
////            transitions: transitions{
////                ColorAnimation  root.color {to: "bacl"; duration}
////            }
//            stateGroup.state = "enter"

////            root.color= Qt.lighter(root.color)


//        }
//        onExited:  {
//            state: "leave"
//            stateGroup.state = "leave"
////            root.color = /*Qt.darker(*/backColor
//        }
        onClicked: {
            indexer = index
        }
    }

//    states: State {
//        name: "brighter"; when: mouseA.contains()
//        PropertyChanges { target: root; color: "yellow" }
//    }

//    transitions: Transition {
//        ColorAnimation { duration: 1000 }
//    }
//    StateGroup{
//        id: stateGroup
//        states: [
//            State {
//                name: "enter"
//                PropertyChanges {
////                    target: object
//                    target: root
//                    color: Qt.lighter(backColor)

//                }
//            }
//        ]

//        transitions: [
//            Transition {
//                from: "*"
//                to: "enter"

//                ColorAnimation {
//                    from: backColor
//                    to: (backColor != "black") ? Qt.lighter(backColor) : Qt.darker(backColor)
//                    duration: time
//                }


//            },
//            Transition {
//                from: "enter"
//                to: "leave"

//                ColorAnimation {
//                    from: (backColor != "black") ? Qt.lighter(backColor) : Qt.darker(backColor)
//                    to: backColor
//                    duration: time
//                }
//            }
//        ]
//    }


}
