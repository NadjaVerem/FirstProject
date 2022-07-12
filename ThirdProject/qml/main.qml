import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Row {
        anchors.centerIn: parent
        spacing: 15

        Column {
            spacing: 25

            Repeater {
                model: 4

                Rectangle {
                    width: 80
                    height: 80
                    color: "white"
                    border.color: "orange"
                    border.width: 6
                }
            }
        }

        Column {
            spacing: 25

            Repeater {
                model: 4

                Rectangle {
                    width: 80
                    height: 80
                    color: "white"
                    border.color: "red"
                    border.width: 6
                }
            }
        }

        Column {
            spacing: 25

            Repeater {
                model: 4

                Rectangle {
                    width: 80
                    height: 80
                    color: "white"
                    border.color: "green"
                    border.width: 6
                }
            }
        }

        Column {
            spacing:25

            Repeater {
                model: 4


                Rectangle {
                    width: 80
                    height: 80
                    color: "white"
                    border.color: "blue"
                    border.width: 6
                }
            }
        }
    }
}

