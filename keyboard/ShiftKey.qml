import QtQuick 2.5
import QtQuick.Layouts 1.1

KeyboardKey {
    Layout.preferredWidth: height * 1.5
    Layout.fillWidth: true
    color: shiftActive ? "#4c4c4c" : "#263138"

    onPressed: shiftActive = !shiftActive
}
