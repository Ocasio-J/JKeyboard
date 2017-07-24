import QtQuick 2.4
import QtQuick.Layouts 1.1

Rectangle {
    id: key
    property string key
    property alias color: key.color
    property bool down: false
    property bool repeatOnHold: false

    signal pressed()

    Layout.preferredHeight: parent.height
    Layout.preferredWidth: height * 1.30
    color: down ? "#4c4c4c" : "#1e1e1e"
    radius: 5

    onDownChanged: {
        if (!down) {
            timer.interval = 600
        }
    }

    Timer {
        id: timer
        interval: 600
        repeat: true
        running: down && repeatOnHold
        onTriggered: {
            pressed();
            interval = 50
        }
    }

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
        anchors { fill: parent; }
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font { pixelSize: 30; bold: true }
        fontSizeMode: Text.Fit
        minimumPixelSize: 1
        color: "white"
        text: key.key
    }
}

