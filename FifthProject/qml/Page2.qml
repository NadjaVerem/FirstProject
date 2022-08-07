import QtQuick 2.0
import QtQuick.Controls 2.5

Page {

    Rectangle {
        id: rect

        color: "#ff0000"
        state: 'red_color'
        anchors {
            left: parent.left
            right: parent.right
            //                        bottom: parent.bottom
            top: parent.top
            leftMargin: 20
            rightMargin: 20
            //                        bottomMargin: 20
            topMargin: 20
        }

        states: [
            State {
                name: "red_color"
                PropertyChanges { target: rect; color: "red" }
                PropertyChanges { target: rect; height: parent.height / 4 }
                //                            PropertyChanges { target: rect; width:parent.width }
                PropertyChanges { target: rect; anchors.leftMargin: 20 }
            },
            State {
                name: "blue_color"
                PropertyChanges { target: rect; color: "blue" }
                PropertyChanges { target: rect; height: parent.height / 3 }
                //                            PropertyChanges { target: rect; width:parent.width / 5 }
                PropertyChanges { target: rect; anchors.leftMargin: 40 }
            }
        ]
        transitions: Transition {
            NumberAnimation { properties: "height, anchors.leftMargin"; easing.type: Easing.InOutQuad }
        }
    }


    Row {
        spacing: 15
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottomMargin: 25

        Button {
            width: 150
            height: 100
            anchors.bottom: parent.bottom
            text: 'MyButton'
            onClicked: {
                if (text === "MyButton") {
                    console.log ("A old color = ", rect.color)
                    text = "кряк"
                } else {
                    console.log ("B old color = ", rect.color)
                    text = "MyButton"
                }

                if (rect.state === "blue_color") {
                    console.log ("A old color = ", rect.color)
                    rect.state = "red_color"
                } else {
                    console.log ("B old color = ", rect.color)
                    rect.state = "blue_color"
                }
            }
        }

        Button {
            width: 150
            height: 100
            anchors.bottom: parent.bottom
            text: 'MyButton'
            onClicked: {
                if (text === "MyButton") {
                    console.log ("A old color = ", rect.color)
                    text = "кряк"
                } else {
                    console.log ("B old color = ", rect.color)
                    text = "MyButton"
                }

                if (rect.state === "blue_color") {
                    console.log ("A old color = ", rect.color)
                    rect.state = "red_color"
                } else {
                    console.log ("B old color = ", rect.color)
                    rect.state = "blue_color"
                }
            }
        }

        Button {
            width: 150
            height: 100
            anchors.bottom: parent.bottom
            text: 'MyButton'
            onClicked: {
                if (text === "MyButton") {
                    console.log ("A old color = ", rect.color)
                    text = "кряк"
                } else {
                    console.log ("B old color = ", rect.color)
                    text = "MyButton"
                }

                if (rect.state === "blue_color") {
                    console.log ("A old color = ", rect.color)
                    rect.state = "red_color"
                } else {
                    console.log ("B old color = ", rect.color)
                    rect.state = "blue_color"
                }
            }

        }

        Button {
            width: 150
            height: 100
            anchors.bottom: parent.bottom
            text: 'MyButton'
            onClicked: {
                if (text === "MyButton") {
                    console.log ("A old color = ", rect.color)
                    text = "кряк"
                } else {
                    console.log ("B old color = ", rect.color)
                    text = "MyButton"
                }

                if (rect.state === "blue_color") {
                    console.log ("A old color = ", rect.color)
                    rect.state = "red_color"
                } else {
                    console.log ("B old color = ", rect.color)
                    rect.state = "blue_color"
                }
            }
        }
    }
}
