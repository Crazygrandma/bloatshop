pragma Singleton

import QtQuick
import Quickshell

Singleton {
    property var selectedPackages: []

    function addPackage(pkg) {
        if (!selectedPackages.includes(pkg))
            selectedPackages = [...selectedPackages, pkg]
    }

    function removePackage(pkg) {
        selectedPackages = selectedPackages.filter(p => p !== pkg)
    }

    function togglePackage(pkg) {
        if (selectedPackages.includes(pkg))
            removePackage(pkg)
        else
            addPackage(pkg)
    }

    function clear() {
        selectedPackages = []
    }
}