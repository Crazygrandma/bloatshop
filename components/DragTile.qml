import QtQuick

Item {
    id: root

    required property string colorKey
    required property int modelData



    MouseArea {
        id: mouseArea

        width: 64
        height: 64



        drag.target: tile

   /*      onReleased: {
            if (tile.Drag.target !== null && !tile.Drag.target.occupied) {
                // Drop item into drop area
                parent = tile.Drag.target;
                tile.color = "blue";
                console.log(tile.Drag.target.occupied);

                

            } else {
                parent = root;
                tile.color = "red";
            }
        } */

        Rectangle{
            id: mouseVisualize
            color: '#87305f24'

            anchors.fill: parent
        }

        Rectangle {
            id: tile

            Text {
                text: "Hello"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
            }

            width: 64
            height: 64
            anchors {
                verticalCenter: parent.verticalCenter
                horizontalCenter: parent.horizontalCenter
            }

            color: root.colorKey

            Drag.keys: [root.colorKey]
            Drag.active: mouseArea.drag.active
            Drag.hotSpot.x: 32
            Drag.hotSpot.y: 32
            states: State {
                when: mouseArea.drag.active
                AnchorChanges {
                    target: tile
                    anchors {
                        verticalCenter: undefined
                        horizontalCenter: undefined
                    }
                }
            }
        }
    }
}
