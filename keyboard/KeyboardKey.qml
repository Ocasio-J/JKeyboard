import QtQuick 2.5
import QtQuick.Layouts 1.1

Rectangle {
    id: key
    property string key
    property alias color: key.color
    property bool down: false

    signal pressed()

    Layout.preferredHeight: parent.height
    Layout.preferredWidth: height * 1.30
    color: down ? "#4c4c4c" : "#1e1e1e"
    radius: 5

    MultiPointTouchArea {
        id: keyMA
        anchors { fill: parent }
        mouseEnabled: false
        maximumTouchPoints: 1
        onPressed: { key.pressed(); key.down = true }
        onReleased: key.down = false
    }

    Text {
        id: label
        anchors { centerIn: parent }
        font { pixelSize: 25; bold: true }
        color: "white"
        text: key.key
    }   
}

