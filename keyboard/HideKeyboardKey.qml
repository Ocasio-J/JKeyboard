import QtQuick 2.5

KeyboardKey {
    id: hideKeyboardKey
    color: down ? "#4c4c4c" : "#263138"

    Image {
        width: hideKeyboardKey.width * 0.50
        height: hideKeyboardKey.height * 0.50
        anchors { centerIn: parent }
        source: "hide-keyboard.svg"
    }
}
