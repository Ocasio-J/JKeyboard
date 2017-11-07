import QtQuick 2.4

KeyboardKey {
    id: languageKey
    color: "#263138"

    Image {
        height: parent.height * 0.50
        anchors { centerIn: parent }
        mipmap: true
        fillMode: Image.PreserveAspectFit
        source: "globe.svg"
    }
}
