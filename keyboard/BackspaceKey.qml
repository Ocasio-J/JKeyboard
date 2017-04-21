import QtQuick 2.5
import QtQuick.Layouts 1.1

KeyboardKey {
    id: backspaceKey    

    Layout.preferredWidth: height * 1.5
    Layout.fillWidth: true
    color: down ? "#4c4c4c" : "#263138"

    Image {
        width: backspaceKey.width * 0.50
        height: backspaceKey.height * 0.50
        anchors { centerIn: parent }
        fillMode: Image.PreserveAspectFit
        source: "backspace.svg"
    }

    Timer {
        id: timer
        interval: 200
        repeat: true
        running: down
        onTriggered: {
            backspaceKey.pressed();
        }
    }   
}
