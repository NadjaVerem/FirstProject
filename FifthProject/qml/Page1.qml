import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

Page {
    property string modelRole: "Name"
    property ListModel listModel: ListModel {}

    Rectangle {
        id:rect2

        width: parent.width / 2
        height: parent.height
        color: "transparent"
        border {
            color: (result === 1) ? "green" : ((result === 0) ? "red" : "gray")
            width: 2
        }

        ColumnLayout {
            anchors.fill: parent
            anchors.margins: 50

            Rectangle {
                id:rect3
                Layout.fillWidth: true
                Layout.preferredHeight: 1
                color: "gray"
            }

            ScrollView {
                Layout.fillWidth: true
                Layout.fillHeight: true
            }
        }
    }

    Text {
        anchors.top: rect2.top
        anchors.horizontalCenter: rect2.horizontalCenter
        anchors.topMargin:  15
        font.pointSize: 14
        color: "black"
        text: qsTr("Name")
    }

    Text {
        text: qsTr("№")
        anchors.left: rect2.left
        anchors.top: rect2.top
        anchors.leftMargin: 25
        anchors.topMargin: 20
        color: "black"
        font.pointSize: 14
    }

    Column {
        spacing: 15
        //                        anchors.centerIn: parent

        anchors.left: rect2.right
        anchors.leftMargin: 20
        anchors.topMargin: 200
        Button {
            id:button
            height: 50
            width: 80
            Text {
                anchors.centerIn: button
                color: "black"
                text: "+"
                font.pointSize: 14
            }
        }

        Button {
            id:button2
            height: 50
            width: 80

        }

        Button {
            id:button3
            height: 50
            width: 80

            Text {
                anchors.top: button3.top
                anchors.left: button3.left
                anchors.leftMargin: 30
                anchors.topMargin: 2
                color: "grey"
                text: "_"
                font.pointSize: 20
            }
        }
    }
}
