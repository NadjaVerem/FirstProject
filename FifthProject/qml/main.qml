import QtQuick 2.0
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls.Material 2.3
import Qt.labs.platform 1.1

ApplicationWindow {
    id: window
    width: 850
    height: 600
    minimumWidth: 300
    minimumHeight: 300
    visible: true
    title: qsTr("Trajectory building")

    ListView {
        id: listView
        anchors {
            top: parent.top
            left: parent.left
            bottom: parent.bottom
        }

        width: 100
        model: [
            "rhzr",
            "vvrver",
            "vfgfnnr",
            "btber"

        ]
        highlight: Pane { Material.elevation: 6 }
        delegate: ItemDelegate {
            width: listView.width
            text: modelData
            onClicked: {
                console.log("----------------------------------")
                console.log("нажата кнопка = ", index)
                listView.currentIndex = index
            }
        }
    }

    Pane {
        anchors {
            left: listView.right
            top: parent.top
            right: parent.right
            bottom: parent.bottom

        }
        padding: 0

        StackLayout {
            id: stackLayout
            anchors.fill: parent
            clip: true
            currentIndex: {
                console.log("был индекс = ", currentIndex)

                return listView.currentIndex

            }

            onCurrentIndexChanged: console.log("cтал индекс = ", currentIndex)

            Page1 {

            }

            Page2 {

            }

            Page3 {
                rectColor: "black"
            }

            Page4 {
                rectColor: "blue"
            }

        }
    }
}



