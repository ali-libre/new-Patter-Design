import QtQuick 2.0
import "../Botton/"

Rectangle{
    id:root
    border.color: "cyan"

    width: 100
    color: "transparent"
//            GridView{
//                clip: true
//                anchors.fill: parent
//                model: 3
//                cellHeight: height / 3
//                delegate:
    Repeater{
        anchors.fill: parent
        Column: 1
        model: ColorPageModel{}
        delegate:
        BtnSample_vertical{backColor: "#3e3e40" ;iconSize: 50;lable: "btn1";
            width: 100;height: parent.height/3}

    }
}
