import QtQuick 2.0
import QtQuick.Controls 2.5

Page {
property alias rectColor: rect.color

   Rectangle {
    id: rect
    anchors.fill: parent
    color: "yellow"
    MouseArea {
            id: mouseArea
            anchors.fill: parent
        }

        states: State {
            name: "moved"; when: mouseArea.pressed
            PropertyChanges { target: rect; x: 50; y: 50 }
        }

        transitions: Transition {
            NumberAnimation { properties: "x,y"; easing.type: Easing.InOutQuad }
        }
    }
}


