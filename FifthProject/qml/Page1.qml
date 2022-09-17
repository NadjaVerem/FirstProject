import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

Page {
    property string modelRole: "Name"
    property ListModel listModel: ListModel {}
    
    Rectangle {
        id: rect2
        
        anchors.centerIn: parent
        width: parent.width / 2
        height: parent.height
        color: "transparent"
        border.color: "black"
        border.width: 3

        Text {
            id: nameText

            anchors{
                top: rect2.top
                bottom: rect3.top
                left: rect2.left
                right: rect2.right
                leftMargin: 150
                topMargin: 25

            }

            Layout.fillWidth: true
            font.pointSize: 14
            color: "black"
            text: qsTr("Name")

        }

        ColumnLayout {
            anchors.fill: parent
            anchors.margins: 50

            Rectangle {
                id: rect3
                Layout.fillWidth: true
                Layout.preferredHeight: 1
                color: "gray"
            }
            
            ScrollView {
                Layout.fillWidth: true
                Layout.fillHeight: true

                Column {
                    anchors {
                        left: parent.left
                        right: parent.right
                    }

                    Rectangle {
                        width: parent.width
                        height: 360

                        ListModel {
                            id: dataModel
                        }

                        ListView {
                            id: view

                            width: parent.width
                            height: 500
                            spacing: 10
                            model: dataModel  

                            delegate: ItemDelegate {
                                id: itemDelegate

                                width: view.width
                                height: 40
                                highlighted: ListView.isCurrentItem

                                onClicked: view.currentIndex = index

                                background: Rectangle {
                                    anchors.fill: parent
                                    color: itemDelegate.highlighted ? "red" : model.color
                                }

                                TextInput {
                                    anchors.centerIn: parent
                                    renderType: Text.NativeRendering
                                    text: model.text || "old"
                                    selectByMouse: true

                                    onTextChanged: {
                                        console.log(text)
                                        dataModel.get(index).text = text
                                    }

                                }
                            }
                        }
                    }
                }
            }
        }
    }

    Column {
        spacing: 15
        
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.rightMargin: 60
        anchors.topMargin: 100

        Button {
            id: button

            height: 60
            width: 90
            Text {
                anchors.centerIn: button
                color: "black"
                text: "+"
                font.pointSize: 14
            }

            onClicked: {
                dataModel.append({ color: "skyblue", text: "new" + view.count, selectByMouse: true })
            }
        }

        Button {
            id: button2

            height: 60
            width: 90

            onClicked: {
                for (var i = 0; i < dataModel.count; ++i) {
                console.log(JSON.stringify(dataModel.get(i)))
                }
            }
        }
        
        Button {
            id: button3

            height: 60
            width: 90
            
            Text {
                anchors.top: button3.top
                anchors.left: button3.left
                anchors.leftMargin: 30
                anchors.topMargin: 2
                color: "grey"
                text: "_"
                font.pointSize: 20
            }
            onClicked: {
                dataModel.remove(view.currentIndex)
            }
        }
    }
}
