import Quickshell
import Quickshell.Io // for Process
import QtQuick

Item {
    id: root

    Process {
        id: installProc
        command: ["pkexec", "pacman", "-R", "--noconfirm", ...packagesToInstall]

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
        command: ["pkexec", "pacman", "-R", "--noconfirm", ...packagesToUninstall]

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
    }

    function uninstall() {
        uninstallProc.running = true;
    }
}
