import Quickshell
import Quickshell.Io // for Process
import QtQuick

import "../" as Shop

Item {
    id: root

    Process {
        id: installProc
        command: ["pkexec", "pacman", "-S", "--noconfirm", ...Shop.ShopState.selectedPackages]
        stdout: StdioCollector {
            onStreamFinished: {
                console.log(text);
            }
        }

        stderr: StdioCollector {
            onStreamFinished: {
                console.log("stderr:", text);
            }
        }
    }

    Process {
        id: uninstallProc

        command: ["pkexec", "pacman", "-R", "--noconfirm",...Shop.ShopState.selectedPackages]

        stdout: StdioCollector {
            onStreamFinished: {
                console.log(text);
            }
        }

        stderr: StdioCollector {
            onStreamFinished: {
                console.log("stderr:", text);
            }
        }
    }

    function install() {
        installProc.running = true;
        console.log(...Shop.ShopState.selectedPackages);
    }

    function uninstall() {
        uninstallProc.running = true;
        console.log(...Shop.ShopState.selectedPackages);
    }
}
