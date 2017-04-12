import QtQuick 2.0
import QtQuick.Layouts 1.1

KeyboardKey {
    id: backspaceKey
    signal backspace

    Layout.preferredWidth: height * 1.5
    Layout.fillWidth: true
    color: pressed ? "#4c4c4c" : "#263138"

    Image {
        width: backspaceKey.width * 0.50
        height: backspaceKey.height * 0.50
        anchors { centerIn: parent }
        fillMode: Image.PreserveAspectFit
        source: "backspace.svg"
    }

    Timer {
        id: timer
        interval: 150
        repeat: true
        running: backspaceKey.pressed
        onTriggered: backspaceKey.backspace();
    }

    onClicked: backspaceKey.backspace();
}
