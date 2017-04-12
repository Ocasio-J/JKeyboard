import QtQuick 2.0

KeyboardKey {
    id: hideKeyboardKey
    color: pressed ? "#4c4c4c" : "#263138"

    Image {
        width: hideKeyboardKey.width * 0.50
        height: hideKeyboardKey.height * 0.50
        anchors { centerIn: parent }
        source: "hide-keyboard.svg"
    }
}
