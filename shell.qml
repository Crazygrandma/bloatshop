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

        Rectangle {
            width: 1000
            height: 500

            anchors.centerIn: parent

            color: "#1e1e1e"
            radius: 12

            Grid{
                columns: 2
                rows: 2
                PackageGrid{

                }
                NPC{

                }
                InventorySlot{

                }
                Rectangle { color: '#7543d8'; width: 300; height: 100 }
            }
        }
    }
}
