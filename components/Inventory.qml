import QtQuick
import Quickshell
import Quickshell.Io

ShellRoot {
    id: root

    DropArea {
        id: dragTarget

        property string colorKey

        width: 64
        height: 64
        keys: [colorKey]

        Rectangle {
            id: dropRectangle

            anchors.fill: parent
            color: dragTarget.containsDrag ? "white" : dragTarget.colorKey
        }
    }
}
