import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Rectangle{
    id:root
    property var buttonWidth: 400
    property var minPadding: 10

    ListView {
        anchors.fill: parent
        anchors.margins: 20
        spacing: 10
//        cellWidth: buttonWidth + 20
//        cellHeight: buttonWidth + .8
        clip: true
        model: 20
        delegate:BtnSample{backColor: Qt.darker("grey") ;iconSize: 40;lable: "water fall"; width: buttonWidth; height: 50; desc:"this is just a description to show"; iconSrc:"qrc:/icons/ELight.svg"
//            anchors.margins: 20
            }
        }
}
