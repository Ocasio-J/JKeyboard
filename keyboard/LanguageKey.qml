import QtQuick 2.4

KeyboardKey {
    id: languageKey
    color: "#263138"

    Image {
        width: languageKey.width * 0.50
        height: width
        anchors { centerIn: parent }
        fillMode: Image.PreserveAspectFit
        source: "language.svg"
    }
}
