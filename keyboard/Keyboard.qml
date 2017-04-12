import QtQuick 2.0
import QtQuick.Layouts 1.1

Rectangle {
    id: keyboard

    property var inputField
    property bool activated: inputField.activeFocus
    property bool showSecondaryKeys: false    

    color: "black"
    height: width * 0.30
    anchors { horizontalCenter: parent.horizontalCenter }

    function test(ip) {
        keyboard.inputField = ip
    }

    function insert(key) {
        keyboard.inputField.insert(keyboard.inputField.cursorPosition, key)
    }

    function remove() {
        keyboard.inputField.remove(keyboard.inputField.cursorPosition, keyboard.inputField.cursorPosition - 1)
    }

    function moveRight() {
        keyboard.inputField.cursorPosition -= 1
    }

    function moveLeft() {
        keyboard.inputField.cursorPosition += 1
    }

    function hide() {
        keyboard.forceActiveFocus()
    }

    MouseArea { id: dummy; anchors.fill: parent }
    KeyboardDataModels { id: datamodel }

    Column {
        id: container
        anchors { fill: parent }
        anchors { margins: 20 }
        spacing: height * 0.04

        RowLayout {
            id: row1
            height: container.height * 0.22
            anchors { left: container.left; right: container.right }
            spacing: container.spacing

            Repeater {
                model: datamodel.row1
                delegate: KeyboardKey {
                    key: keyboard.showSecondaryKeys ? secondaryCharacter : primaryCharacter
                    onClicked: insert(key)
                }
            }
            BackspaceKey { onBackspace: remove() }
        }

        RowLayout {
            id: row2
            height: container.height * 0.22
            anchors { left: container.left ; right: container.right }
            anchors { leftMargin: height * 0.6 }
            spacing: container.spacing

            Repeater {
                model: datamodel.row2
                delegate: KeyboardKey {
                    key: keyboard.showSecondaryKeys ? secondaryCharacter : primaryCharacter
                    onClicked: insert(key)
                }
            }
            EnterKey { onClicked: insert("\x0D") }
        }

        RowLayout {
            id: row3
            height: container.height * 0.22
            anchors { left: container.left ; right: container.right }
            spacing: container.spacing

            ShiftKey { key: "SHIFT" }
            Repeater {
                model: datamodel.row3
                delegate: KeyboardKey {
                    key: keyboard.showSecondaryKeys ? secondaryCharacter : primaryCharacter
                    onClicked: insert(key)
                }
            }
        }

        RowLayout {
            id: row4
            height: container.height * 0.22
            anchors { left: container.left ; right: container.right }
            spacing: container.spacing

            MoreKey { key: "123?"; onClicked: keyboard.showSecondaryKeys = !keyboard.showSecondaryKeys }
            //LanguageKey {  }
            KeyboardKey { key: " "; Layout.fillWidth: true; onClicked: insert(key) }
            KeyboardKey { key: "←"; onClicked: moveRight() }
            KeyboardKey { key: "→"; onClicked: moveLeft() }
            HideKeyboardKey { onClicked: hide() }
        }
    }
}
