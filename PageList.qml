import QtQuick 2.0
import "./Botton/"
Rectangle{
    id:root
    property bool dev: true
    property int indexer: 0
    color: "transparent"
    Column{
        anchors.fill: parent
        Repeater{
            anchors{
                fill: parent
            }
            model: PageListModel{}
            delegate: BtnSample_vertical{lable: label; iconSrc: iconsource; backColor: "#3e3e40";
                width: parent.width; height: parent.height / 4}
        }
    }
}
