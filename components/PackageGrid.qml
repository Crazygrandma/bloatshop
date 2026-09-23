import QtQuick

GridView {
    width: 300
    height: 200

    cellWidth: 100
    cellHeight: 100

    model: GuideModel {}

    delegate: Rectangle {
        width: 90
        height: 90

        color: "transparent"
        radius: 8

        border.width: mouseArea.containsMouse ? 2 : 0
        border.color: "white"

        Column {
            anchors.centerIn: parent
            spacing: 6

            Image {
                width: 48
                height: 48

                source: portrait
                fillMode: Image.PreserveAspectFit

                anchors.horizontalCenter: parent.horizontalCenter
            }

            Text {
                text: name
                color: "white"

                anchors.horizontalCenter: parent.horizontalCenter
            }
        }

        MouseArea {
            id: mouseArea

            anchors.fill: parent
            hoverEnabled: true

            onClicked: {
                console.log("Clicked:", name)
            }
        }
    }
}