import QtQuick 2.5
import QtQuick.Layouts 1.1

KeyboardKey {
    Layout.preferredWidth: height * 1.5
    Layout.fillWidth: true
    color: shiftActive ? "#4c4c4c" : capslock ? "green" : "#263138"
    key: "SHIFT"

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
