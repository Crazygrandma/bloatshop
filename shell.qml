import Quickshell
import QtQuick
import Quickshell.Hyprland

ShellRoot {
    id: root

    PanelWindow {
        id: panel

        property var monitor: Hyprland.monitorFor(panel.screen)

        property var activeWorkspace:
            monitor
                ? Hyprland.workspaces.values.find(
                    w => w.monitor === monitor && w.active
                )
                : undefined

        visible: activeWorkspace?.id === 3

        anchors {
            top: true
            left: true
            right: true
            bottom: true
        }

        color: "transparent"

        // TODO add grid layout to display packages
        Rectangle {
            width: 500
            height: 300

            anchors.centerIn: parent

            color: "#1e1e1e"
            radius: 12
        }
    }
}
