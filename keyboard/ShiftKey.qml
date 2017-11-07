import QtQuick 2.4
import QtQuick.Layouts 1.1

KeyboardKey {
    Layout.preferredWidth: height
    Layout.fillWidth: true
    color: shiftActive ? "#4c4c4c" : capslock ? "green" : "#263138"

    Image {
        height: parent.height * 0.50
        anchors { centerIn: parent }
        mipmap: true
        fillMode: Image.PreserveAspectFit
        source: "shift.svg"
    }

    onPressed: {
        if (doubleClickTimer.running) {
            capslock = true
            shiftActive = false
        } else {
            doubleClickTimer.start()
            if (capslock) {
                capslock = false
                shiftActive = false
            } else {
                shiftActive = !shiftActive
            }
        }

    }

    Timer {
        id: doubleClickTimer
        interval: 400
        repeat: false
    }
}
