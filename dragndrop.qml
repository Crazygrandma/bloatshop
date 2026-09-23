import Quickshell
import QtQuick
import Quickshell.Hyprland


import QtQuick

Item {
    width: 200; height: 200

    DropArea {
        x: 75; y: 75
        width: 50; height: 50

        Rectangle {
            anchors.fill: parent
            color: "green"

            visible: parent.containsDrag
        }
    }

    Rectangle {
        x: 10; y: 10
        width: 20; height: 20
        color: "red"

        Drag.active: dragArea.drag.active
        Drag.hotSpot.x: 10
        Drag.hotSpot.y: 10

        MouseArea {
            id: dragArea
            anchors.fill: parent

            drag.target: parent
        }
    }
}
/* 
ShellRoot {
    id: root

    PanelWindow {
        id: panel

        property var monitor: Hyprland.monitorFor(panel.screen)

        property var activeWorkspace: monitor ? Hyprland.workspaces.values.find(w => w.monitor === monitor && w.active) : undefined

        visible: activeWorkspace?.id === 3

        anchors {
            top: true
            left: true
            right: true
            bottom: true
        }

        color: "transparent"

        DropTile {
            x: 100
            y: 300
            colorKey: "blue"
        }

        DragTile {

            colorKey: "blue"
        }
    }
}
 */