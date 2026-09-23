import QtQuick
import Quickshell

FloatingWindow {
    Rectangle {
        id: container

        property int gridColumns: 10
        property int gridRows: 4
        property real cellWidth: width / gridColumns
        property real cellHeight: height / gridRows

        width: 800
        height: 300

        GridView {
            id: grid

            anchors.fill: parent
            cellWidth: container.cellWidth
            cellHeight: container.cellHeight
            model: container.gridColumns * container.gridRows
            interactive: false

            delegate: Rectangle {
                width: grid.cellWidth
                height: grid.cellHeight
                color: "blue"
                border.color: "black"
                border.width: 1
            }

        }

        Rectangle {
            id: rect

            x: 0
            y: 0
            width: 50
            height: 50
            color: "red"
            z: 1

            MouseArea {
                anchors.fill: parent
                drag.target: rect
                drag.axis: Drag.XAndYAxis
                drag.minimumX: 0
                drag.maximumX: container.width - rect.width
                drag.minimumY: 0
                drag.maximumY: container.height - rect.height
                onReleased: {
                    var centerX = rect.x + rect.width / 2;
                    var centerY = rect.y + rect.height / 2;
                    var snappedCenterX = Math.floor(centerX / container.cellWidth) * container.cellWidth + container.cellWidth / 2;
                    var snappedCenterY = Math.floor(centerY / container.cellHeight) * container.cellHeight + container.cellHeight / 2;
                    rect.x = snappedCenterX - rect.width / 2;
                    rect.y = snappedCenterY - rect.height / 2;
                    // Clamp after snapping
                    rect.x = Math.max(0, Math.min(rect.x, container.width - rect.width));
                    rect.y = Math.max(0, Math.min(rect.y, container.height - rect.height));
                }
            }

        }

    }

}
