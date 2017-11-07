import QtQuick 2.4
import QtQuick.Layouts 1.1

Rectangle {
    id: key
    property alias key : label.text
    property alias color: key.color
    property bool down: false // Rename to "pressed" ?
    property bool repeatOnHold: false

    signal pressed()
    signal clicked()

    Layout.fillWidth: true
    Layout.fillHeight: true
    Layout.preferredHeight: parent.height
    Layout.preferredWidth: height
    color: down ? "#4c4c4c" : "#1e1e1e"
    radius: 2

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
        mouseEnabled: true
        maximumTouchPoints: 1
        onPressed: { key.pressed(); key.down = true }
        onReleased:  {
            key.down = false

            var touchCoordinate = Qt.point(touchPoints[0].x, touchPoints[0].y)
            if (keyMA.contains(touchCoordinate)) {
                key.clicked()
            }
        }
    }

    Text {
        id: label
        anchors { fill: parent }
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font { pixelSize: height * 0.50; bold: false }
        fontSizeMode: Text.Fit
        minimumPixelSize: 1
        color: "white"
    }
}

