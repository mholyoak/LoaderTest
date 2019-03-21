import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Layouts 1.3

Window {
    id: appWinId
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
        id: rectId

        width: 200; height: 200

        color: "#AAAAAA"

        Loader {
            id: loader

            width: 100
            height: 100

            focus: true
        }

        property bool displayPage: true

        MouseArea {
            anchors.fill: parent
            onClicked: {

                if (rectId.displayPage) {
                    loader.source = "Page1.qml"
                }
                else {
                    loader.source = ""
                }
                rectId.displayPage = !rectId.displayPage
            }
        }

        Keys.onPressed: {
            console.log("Captured:",
                        event.text);
        }
    }

    /*
    RowLayout {

        Rectangle {
            id: leftRectId

            width: 200
            height: appWinId.height

            //anchors.left: appWinId.left

            color: "#AAAAAA"
        }

        Item {
            id: loaderItemId

            width: 200
            height: 100
            Loader {
                id: pageLoader

                //anchors.right: appWinId.right
            }

            MouseArea {
                anchors.fill: loaderItemId
                //anchors.fill: pageLoader.anchors
                onClicked: {
                    print("clicked")
                    pageLoader.source = "Page1.qml"
                }
            }
        }

    }
    */
}
