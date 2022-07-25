import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: rect
        width: parent.width / 2 + 80
        height: parent.height / 2 + 80
        anchors.centerIn: parent
        border.color: "black"
        border.width: 3

        ListModel {
            id: dataModel

            ListElement {
                myText: "Item 1"
                myColor: "green"
            }

            ListElement {
                myText: "Item 2"
                myColor: "red"
            }

            ListElement {
                myText: "Item 3"
                myColor: "yellow"
            }

            ListElement {
                myText: "Item 4"
                myColor: "black"
            }

            ListElement {
                myText: "Item 5"
                myColor: "grey"
            }
        }

        ListView {
            id: view
            anchors.margins: 10
            anchors.fill: rect
            spacing: 10
            model: dataModel
            clip: true

            Image {
                id: name
                source: "file"
            }

            delegate: Rectangle {
                width: parent.width
                height: 80
                border.color:"black"
                border.width: 3

                Row {
                    spacing: 12

                    Image {
                        source: "qrc:/image.svg"
                        height: 60
                        width: 60
                    }

                    Text {
                        text: qsTr("Love")
                        color: "red"
                    }

                    Image {
                        source: "qrc:/image2.png"
                        height: 60
                        width: 60
                    }

                    Text {
                        text: qsTr("You")
                        color: "red"
                    }

                    Image {
                        source: "qrc:/image3.jpg"
                        height: 60
                        width: 60
                    }
                }
            }
        }
        //            delegate: Button {
        //                width: parent.width
        //                height: 80
        //                text: myText
        //                icon.source: "qrc:/image2.png"
        //                icon.color: myColor
        //            }
    }
}
