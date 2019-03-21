import QtQuick 2.0

Item {
    id: pageItemId

    anchors.fill: parent
    //width: 100
    //height: 100

    Rectangle {

        anchors.fill: pageItemId

        focus: true

        color: "#DDDDDD"

        Keys.onPressed: {
            console.log("KeyReader captured:",
                        event.text);
            event.accepted = true;
        }
    }

    /*
    id: itemId

    width: 400
    height: 400

    Rectangle {
        id: rectId

        anchors.fill: itemId

        color: "red"

        Text {
            text: qsTr("Test")
        }
    }
    */
}
