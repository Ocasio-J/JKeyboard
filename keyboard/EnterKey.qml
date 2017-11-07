import QtQuick 2.4
import QtQuick.Layouts 1.1

KeyboardKey {
    id: enterKey
    Layout.preferredWidth: height * 2
    Layout.fillWidth: true
    color: down ? "#4c4c4c" : "#263138"

    Image {
        height: enterKey.height * 0.50
        anchors { centerIn: parent }
        mipmap: true
        fillMode: Image.PreserveAspectFit
        source: "enter.svg"
    }
}
