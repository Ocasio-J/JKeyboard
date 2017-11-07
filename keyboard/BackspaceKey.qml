import QtQuick 2.4
import QtQuick.Layouts 1.1

KeyboardKey {
    id: backspaceKey

    Layout.preferredWidth: height * 1.75
    color: down ? "#4c4c4c" : "#263138"

    Image {
        height: backspaceKey.height * 0.50
        anchors { centerIn: parent }
        mipmap: true
        fillMode: Image.PreserveAspectFit
        source: "backspace.svg"
    }
}
