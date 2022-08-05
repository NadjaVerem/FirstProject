import QtQuick 2.0
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls.Material 2.3
ApplicationWindow {
    id: window
    width: 850
    height: 600
    minimumWidth: 300
    minimumHeight: 300
    visible: true
    title: qsTr("Trajectory building")

    //    property int result: 2
    //    property string fileUrl: " "

    //    footer: ToolBar {
    //        height: 40
    //        background: Rectangle {
    //            anchors.fill: parent
    //            color: (result === 1) ? "green" : ((result === 0) ? "red" : "gray")

    //            TextArea {
    //                id: errorLabel
    //                anchors.centerIn: parent
    //                font.bold: true
    //                color: "white"
    //                text: (result === 1) ? "" : ((result === 0) ? Manager.log : "")
    //                selectByMouse: true
    //            }
    //        }
    //    }

    //    Page_Main {
    //        anchors.fill: parent
    //        anchors.bottomMargin: 5
    //    }



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
                id: page1
                rectColor: "green"

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
                            NumberAnimation { properties: "x,y"; easing.type: Easing.InOutQuad }
                        }
                }


                //                Button {
                //                    width: parent.width
                //                    height: parent.height / 3
                //                    anchors.bottom: parent.bottom
                //                    text: 'MyButton'
                //                    onClicked: {
                //                        if (text === "MyButton") {
                //                            console.log ("A old color = ", rect.color)
                //                            text = "кряк"
                //                        } else {
                //                            console.log ("B old color = ", rect.color)
                //                            text = "MyButton"
                //                        }

                //                        if (rect.state === "blue_color") {
                //                            console.log ("A old color = ", rect.color)
                //                            rect.state = "red_color"
                //                        } else {
                //                            console.log ("B old color = ", rect.color)
                //                            rect.state = "blue_color"
                //                        }
                //                    }

                //                }
                Row {
                    spacing: 15
                    anchors.bottom: parent.bottom
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.bottomMargin: 25
//                    Rectangle {
//                        width: page1.width / 3
//                        height: parent.height / 3
//                        color: "black "
//                        anchors.centerIn: page1.parent



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
//                    }
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
//                Rectangle {
//                    id: rect3
//                    width: 100; height: 100
//                    color: "blue"

//                    MouseArea {
//                        id: mouseArea
//                        anchors.fill: parent
//                    }

//                    states: State {
//                        name: "moved"; when: mouseArea.pressed
//                        PropertyChanges { target: rect; x: 50; y: 50 }
//                    }

//                    transitions: Transition {
//                        NumberAnimation { properties: "x,y"; easing.type: Easing.InOutQuad }
//                    }
//                }

            }
            Page1 {
                rectColor: "white"

            }
            Page1 {
                rectColor: "black"
            }
            Page1 {
                rectColor: "blue"
            }
        }
    }

}

