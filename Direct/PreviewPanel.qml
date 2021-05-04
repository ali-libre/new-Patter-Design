import QtQuick 2.0
import QtGraphicalEffects 1.0
Rectangle{
    property var kolor: "#ff0000"
    Image{
        id: bridge
        clip: true
        anchors.margins: 20
        smooth: true
//        m: true
//        fillMode: Image.scale
        anchors.fill: parent
        anchors.centerIn: parent
        fillMode: Image.PreserveAspectFit
        sourceSize.width: width
        sourceSize.height: height
        antialiasing: true
        source: "../icons/Asset 58.svg"
    }
    ColorOverlay {
         anchors.fill: bridge
         source: bridge
         color: kolor  // make image like it lays under red glass
     }
}
