import QtQuick 2.12

Rectangle{
    id:root

    property var iconSize: 30
    property var time: 400
    property var lable: "Test"
    property var desc: ""//: "description"
    property var iconSrc : ""//qrc:/icons/folder.png"
    property color fontColor: "green"
    property color backColor: "grey"
    //    property color FontColor: "black"

    width: 100//iconRect.children.width + lableRect.children.width
    implicitWidth: 50
    height: 50
    radius: 5
    border.width: 1
    border.color: "lightgray"
    color: backColor


    Rectangle{
        id:iconRect
        anchors.left: parent.left
        width: icon.sourceSize.width > 0 ? iconSize : 0    //parent.width
        height: width
        color: parent.color//"red"
        anchors {
            margins: 5
            verticalCenter: parent.verticalCenter
        }

        Image {
            id: icon
            source: iconSrc //"qrc:/icons/Folder.png"
            anchors.centerIn: parent
            anchors.fill: parent
        }
    }

    Rectangle{
        id:lableRect
        color: parent.color//"blue"
        anchors {
            left: iconRect.right
            right: parent.right
            top: parent.top
            bottom: parent.bottom
            margins: 5
        }

        Text {
            id: name
            text: lable //qsTr("Button 1")
            color: fontColor
            anchors.top: parent.top

            anchors.left: parent.left
            anchors.right: parent.right
            elide: Text.ElideLeft
            font.pointSize: 14
            Component.onCompleted: {
                if  (description.text.length <1 ){
                    anchors.centerIn = parent
                }
            }
        }
        Text {
            id: description
            text: desc //qsTr("Button 1")
            color: Qt.darker(fontColor)

            anchors.top: name.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.leftMargin: 5
            elide: Text.ElideLeft
            font.pointSize: 7
        }
    }

    MouseArea{
        id:mouseA
        anchors.fill: parent
        hoverEnabled: true
        onEntered: {
            state: "enter"
//            transitions: transitions{
//                ColorAnimation  root.color {to: "bacl"; duration}
//            }
            stateGroup.state = "enter"

//            root.color= Qt.lighter(root.color)


        }
        onExited:  {
            state: "leave"
            stateGroup.state = "leave"
//            root.color = /*Qt.darker(*/backColor
        }
    }

//    states: State {
//        name: "brighter"; when: mouseA.contains()
//        PropertyChanges { target: root; color: "yellow" }
//    }

//    transitions: Transition {
//        ColorAnimation { duration: 1000 }
//    }
    StateGroup{
        id: stateGroup
        states: [
            State {
                name: "enter"
                PropertyChanges {
//                    target: object
                    target: root
                    color: Qt.lighter(backColor)

                }
            }
        ]

        transitions: [
            Transition {
                from: "*"
                to: "enter"

                ColorAnimation {
                    from: backColor
                    to: backColor != "black" ? Qt.lighter(backColor) : Qt.darker(backColor)
                    duration: time
                }


            },
            Transition {
                from: "enter"
                to: "leave"

                ColorAnimation {
                    from: backColor != "black" ? Qt.lighter(backColor) : Qt.darker(backColor)
                    to: backColor
                    duration: time
                }
            }
        ]
    }


}
