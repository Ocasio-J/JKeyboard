import QtQuick 2.0
import QtQuick.Layouts 1.1

Rectangle {
    id: key
    property alias key: label.text
    property alias color: key.color
    property bool pressed: false

    signal clicked

    Layout.preferredHeight: parent.height
    Layout.preferredWidth: height * 1.30
    color: pressed ? "#4c4c4c" : "#1e1e1e"
    radius: 5

    Text {
        id: label
        anchors { centerIn: parent }
        font { pixelSize: 25; bold: true }
        color: "white"
    }

    MultiPointTouchArea {
        id: keyMA
        anchors { fill: parent }
        mouseEnabled: false
        onPressed: { key.pressed = true; key.clicked() }
        onReleased: { key.pressed = false }
    }
}

