import QtQuick 2.5
import QtQuick.Layouts 1.1

KeyboardKey {
    id: backspaceKey

    Layout.preferredWidth: height * 1.5
    Layout.fillWidth: true
    color: down ? "#4c4c4c" : "#263138"

    onDownChanged: {
        if (!down) {
            timer.interval = 600
        }
    }

    Timer {
        id: timer
        interval: 600
        repeat: true
        running: down
        onTriggered: {
            pressed();
            interval = 50
        }
    }

    Image {
        width: backspaceKey.width * 0.50
        height: backspaceKey.height * 0.50
        anchors { centerIn: parent }
        fillMode: Image.PreserveAspectFit
        source: "backspace.svg"
    }
}
