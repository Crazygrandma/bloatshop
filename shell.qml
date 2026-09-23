import Quickshell
import QtQuick
import Quickshell.Hyprland

import "./components/" as Shop
import "./services/" as Services

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

        Shop.Buttons{
            onBuyClicked: console.log("Buy")
            onSellClicked: packageManager.uninstall()
        }

        Services.PackageManager{
            id: packageManager
        }
    }
}
