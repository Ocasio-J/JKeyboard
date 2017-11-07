import QtQuick 2.4

KeyboardKey {
    id: hideKeyboardKey
    color: down ? "#4c4c4c" : "#263138"

    Image {
        height: parent.height * 0.60
        anchors { centerIn: parent }
        mipmap: true
        fillMode: Image.PreserveAspectFit
        source: "hide-keyboard.svg"
    }
}
