import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column {
        anchors.centerIn: parent
        spacing: 25

        Button {
            height: 50
            width: 200
            text: "Button 1"
            onClicked: {
                console.log("Нажата кнопка 1")
            }

            Rectangle {
                id: rect3
                width: parent.width
                height: parent.height
                anchors.bottom: rect.top
                color: "green"
            }
        }

        Button {
            height: 50
            width: 200
            text: "Button 2"
            onClicked: {
                console.log("Нажата кнопка 2")
            }

            Rectangle {
                id: rect
                width: parent.width
                height: parent.height
                color: "green"
            }
        }

        Button {
            height: 50
            width: 200
            text: "Button 3"
            onClicked: {
                console.log("Нажата кнопка 3")
            }

            Rectangle {
                id: rect2
                width: parent.width
                height: parent.height
                anchors.top :rect.bottom
                color:"green"
            }
        }
    }
}
