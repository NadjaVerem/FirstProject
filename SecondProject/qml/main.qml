import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        width: parent.width
        height: parent.height
        color: "light blue"
    }

    Rectangle {
        width: parent.width / 2
        height: parent.height / 2
        color: "light green"
        border.color: "orange"
        border.width: 8
        radius: 16
        anchors.centerIn: parent

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            text: "My Button"
            color: "orange"
            font.pixelSize: 24
        }

        MouseArea {
            anchors.fill: parent
//            onClicked: console.log("Одно нажатие")
//            onDoubleClicked: console.log("Два нажатия")
//            onPressAndHold: console.log("Нажатие и удержание")
            onPressed: console.log("Нажато")                        //   нажимает
            onReleased: console.log("Отпущено")                     //  отпускает
        }
    }
}

