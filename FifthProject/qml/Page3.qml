import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

Page {
    id: root
    Column {
        anchors {
        top: parent.top
        left: parent.left
        topMargin: 30
        leftMargin: 30
        }
        spacing: 25

        Rectangle {
            id:rect1

            width: 150
            height: 50
            Text {
                anchors.centerIn: rect1.parent
                text: "Receive port"
                font.pointSize: 15
                color: "black"
            }
        }

        Rectangle {
            id:rect2

            width: 150
            height: 50
            Text {
                anchors.centerIn: rect2.parent
                text: "Number of handlers"
                font.pointSize: 15
                color: "black"
            }
        }

        CheckBox {
            id: testCheckBox

            text: qsTr("Don't process data older then")
            font.pointSize: 15
        }

        Rectangle {
            id:rect5

        anchors.centerIn: root.parent
        width: 600
        height: 200
        border.color: "grey"
        border.width: 1


        Column {
            anchors {
            top: parent.top
            left: parent.left
            topMargin: 30
            leftMargin: 30
            }
            spacing: 25

            Rectangle {
                id:rect3

                width: 150
                height: 50
                Text {
                    anchors.centerIn: rect3.parent
                    text: "Receive port"
                    font.pointSize: 15
                    color: "black"
                }
            }

            Rectangle {
                id:rect6

                width: 150
                height: 50
                Text {
                    anchors.centerIn: rect6.parent
                    text: "Number of handlers"
                    font.pointSize: 15
                    color: "black"
                }
            }
        }

        Column {
            anchors {
                top: parent.top
                right: parent.right
                topMargin: 30
                rightMargin: 30
            }
            spacing: 20
            SpinBox {

            }
            SpinBox {

            }

}
        }

        }


    Column {
        anchors {
            top: parent.top
            right: parent.right
            topMargin: 30
            rightMargin: 30
        }
        spacing: 20

        Row {
            height: 50
            spacing: 25

            Button {
                id: button

                height: parent.height
                width: 50
                text: "-"
                font {
                    bold: true
                    pixelSize: 20
                }

                background: Rectangle {
                    anchors.fill: parent
                    color: {
                        if (button.pressed) {
                            return "red"
                        } else {
                            return "blue"
                        }
                    }
                    radius: height / 2
                }

                enabled: Number(textField.text) > 0

                onClicked: {
                    textField.text = Number(textField.text) - 1
                }
            }

            TextField {
                id: textField

                width: 100
                height: parent.height
                verticalAlignment: TextInput.AlignVCenter
                horizontalAlignment: TextInput.AlignHCenter
                clip: true
                validator: IntValidator {bottom: 0; top: 1000000;}
                selectByMouse: true
                text: "10"
            }

            Button {
                id: button2

                height: parent.height
                width: 50
                text: "+"
                font {
                    bold: true
                    pixelSize: 20
                }

                background: Rectangle {

                    anchors.fill: parent
                    color: {
                        if (button2.pressed) {
                            return "red"
                        } else {
                            return "blue"
                        }
                                            //button2.pressed ! "red" : "blue"
                    }
                    radius: height / 2
                }

                onClicked: {
                    textField.text = Number(textField.text) + 1
                }
            }
        }

        Row {
            height: 50
            spacing: 25

            Button {
                id: button7

                height: parent.height
                width: 50
                text: "-"
                font {
                    bold: true
                    pixelSize: 20
                }
                background: Rectangle {
                    anchors.fill: parent
                    color: {
                        if (button7.pressed) {
                            return "red"
                        } else {
                            return "blue"
                        }
                    }
                    radius: height / 2
                }

                enabled: Number(textField2.text) > 0

                onClicked: {
                    textField2.text = Number(textField2.text) - 1
                }
            }

            TextField {
                id: textField2

                width: 100
                height: parent.height
                verticalAlignment: TextInput.AlignVCenter
                horizontalAlignment: TextInput.AlignHCenter
                clip: true
                validator: IntValidator {bottom: 0; top: 1000000;}
                selectByMouse: true
                text: "10"
            }

            Button {
                id: button6

                height: parent.height
                width: 50
                text: "+"
                font {
                    bold: true
                    pixelSize: 20
                }
                background: Rectangle {
                    anchors.fill: parent
                    color: {
                        if (button6.pressed) {
                            return "red"
                        } else {
                            return "blue"
                        }

                        //                        button2.pressed ! "red" : "blue"
                    }
                    radius: height / 2
                }
                enabled: Number(textField2.text) > 0

                onClicked: {
                    textField2.text = Number(textField2.text) + 1
                }
            }
        }
    }
}


