import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Rectangle{
    id:forground
    width:parent.width
    height:30// parent.height
    border.color: "transparent"
    border.width: 1

    property var src_img:""
    property var  tittle: ""
    property bool selected: false
    property  var back_color: ""
    property var for_color: ""
    property var border_color : "transparent"
    property var radius_btn: 0

    //Qt.darker("skyblue")

    Rectangle{
        id:backGround

        radius: radius_btn
        anchors.fill: parent
        // border.color: "#008fff"
        border.width:1/2
        //        color: activeTab===index ? "#0077ff" : "#0020f0"
        //        border.color: activeTab===index ?"#008fff": "#053fff"
        border.color: activetabcolor===index ? border_color : "transparent"
        color: activetabcolor===index ? back_color: "transparent"

        anchors.margins: 2
        Text{
            id:elable
            text: tittle
//           if(src_img.match("")){

//                anchors.centerIn: parent
//                anchors.top= pic.bottom
//}
         anchors.centerIn: pic.sourceSize.width > 1 ?  undefined : parent

//            anchors.centerIn: parent
            anchors.top: pic.bottom
            anchors.horizontalCenter:  pic.horizontalCenter


//            anchors.horizontalCenter: parent.horizontalCenter
//            anchors.verticalCenter: parent.verticalCenter
            anchors.topMargin: 1
        }
        Image {
            id: pic
            height: 25
            width: 25
            anchors{
                centerIn: parent
                //              horizontalCenter:  parent.horizontalCenter
                //                verticalCenter: parent.verticalCenter
            }

            source: src_img
        }

        MouseArea{
            id:compMoase
            anchors.fill: parent
            //     hoverEnabled: true
            //        onEntered: backGround.color = Qt.lighter("skyBlue")
            //        onExited: backGround.color = "skylue"
            onClicked: {
                l_panel.activetabcolor = index

                //selected= selected ?false: true
            }

            //        onPressed: backGround.color = "orange"
            //        onReleased: backGround.color = "skyBlue"

        }
    }


}
