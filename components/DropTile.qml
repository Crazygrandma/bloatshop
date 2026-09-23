import QtQuick

DropArea {
    id: dragTarget

    property string colorKey
    property bool occupied: false

    width: 64
    height: 64
    keys: [colorKey]

    onEntered: {
        console.log("Entered DropArea")
        console.log("DropArea key:", colorKey)
    }

    onExited: {
        console.log("Exited DropArea")
    }

    onDropped: {
        console.log("Tile has been dropped")
    }

    Rectangle {
        id: dropRectangle

        anchors.fill: parent
        color: dragTarget.containsDrag ? "white" : dragTarget.colorKey
    }
}
