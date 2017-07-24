import QtQuick 2.4
import QtQuick.Window 2.2
import "keyboard"

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    MouseArea {
        anchors.fill: parent
        onClicked: forceActiveFocus()
    }

    TextEdit {
        id: textEdit
        text: qsTr("Enter some text...")
        verticalAlignment: Text.AlignVCenter
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 20

        Rectangle {
            anchors.fill: parent
            anchors.margins: -10
            color: "transparent"
            border.width: 1
        }
    }

    TextInput {
        text: "Hello"
        anchors { top: textEdit.bottom; topMargin: 20; horizontalCenter: parent.horizontalCenter }
    }

    Keyboard {
        width: parent.width
        y: activated ? parent.height - height : parent.height
    }
}
