import QtQuick 2.4
import QtQuick.Layouts 1.1

Rectangle {
    id: keyboard

    property Item inputField: activeFocusItem ? (activeFocusItem.cursorVisible ? activeFocusItem : null) : null
    property bool activated: false
    property bool showSecondaryKeys: false
    property bool shiftActive: false
    property bool capslock: false

    onInputFieldChanged: activated = inputField

    function insert(key) {
        inputField.insert(inputField.cursorPosition, key)
    }

    function remove() {
        inputField.remove(inputField.cursorPosition, inputField.cursorPosition - 1)
    }

    function moveRight() {
        inputField.cursorPosition -= 1
    }

    function moveLeft() {
        inputField.cursorPosition += 1
    }

    function hide() {
        activated = false
        forceActiveFocus()
    }

    enabled: activated
    color: "black"
    height: width * 0.30
    anchors { horizontalCenter: parent.horizontalCenter }

    MouseArea { id: dummyMA; anchors.fill: parent }
    KeyboardDataModels { id: dataModel }

    Component {
        id: keyDelegate
        KeyboardKey {
            key: keyboard.showSecondaryKeys ? secondaryKey : shiftActive || capslock ? primaryKey : primaryKey.toLowerCase()
            onPressed: { insert(key); shiftActive = false }
        }
    }

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
                model: dataModel.row1
                delegate: keyDelegate
            }
            BackspaceKey { repeatOnHold: true; onPressed: remove() }
        }

        RowLayout {
            id: row2
            height: container.height * 0.22
            anchors { left: container.left ; right: container.right }
            anchors { leftMargin: height * 0.6 }
            spacing: container.spacing

            Repeater {
                model: dataModel.row2
                delegate: keyDelegate
            }
            EnterKey { onPressed: insert("\x0D") }
        }

        RowLayout {
            id: row3
            height: container.height * 0.22
            anchors { left: container.left ; right: container.right }
            spacing: container.spacing

            ShiftKey { id: shift }
            Repeater {
                model: dataModel.row3
                delegate: keyDelegate
            }
        }

        RowLayout {
            id: row4
            height: container.height * 0.22
            anchors { left: container.left ; right: container.right }
            spacing: container.spacing

            MoreKey { key: "123?"; onPressed: keyboard.showSecondaryKeys = !keyboard.showSecondaryKeys }
            //LanguageKey {  }
            KeyboardKey { key: " "; Layout.fillWidth: true; onPressed: insert(key) }
            KeyboardKey { key: "←"; repeatOnHold: true; onPressed: moveRight() }
            KeyboardKey { key: "→"; repeatOnHold: true; onPressed: moveLeft() }
            HideKeyboardKey { onPressed: hide() }
        }
    }
}
