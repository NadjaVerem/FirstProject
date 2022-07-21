import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {

        id:rect
        width: parent.width / 2 +80
        height: parent.height / 2 + 80
        anchors.centerIn: parent
        border.color: "black"
        border.width: 3

        ListModel {

            id: dataModel

            ListElement {
                color: "white"
                texts: [
                    ListElement { text: "Item 1" }
                ]
            }

            ListElement {
                color: "white"
                texts: [
                    ListElement { text: "Item 2" }
                ]
            }

            ListElement {
                color: "white"
                texts: [
                    ListElement { text: "Item 3" }
                ]
            }

            ListElement {
                color: "white"
                texts: [
                    ListElement { text: "Item 4" }
                ]
            }
        }
          ListView {

            id: view
            anchors.margins: 10
            anchors.fill: rect
            spacing: 10
            model: dataModel

            delegate: Rectangle {

                width: view.width
                height: 100
                color: "white"
                border.color: "black"
                border.width: 3
                anchors.centerIn: rect

                Button{

                    height: parent.height
                    width: parent.width
                    text: btnName
                    onClicked: console.log
                }

                Row {

                    anchors.margins: 10
                    anchors.left: parent.left
                    anchors.verticalCenter: parent.verticalCenter
                    spacing: 10

                    Repeater {
                        model: texts
                        delegate: Text {
                            verticalAlignment: Text.AlignVCenter
                            renderType: Text.NativeRendering
                            text: model.text
                                                  }
                        //                        delegate: Button{
                        //                            height: 80
                        //                            width: parent.width
                        //                            text: "Ghbd"
                        //                            onClicked:
                        //}
                    }
                }
            }
        }
    }
}
