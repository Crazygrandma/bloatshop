import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
    signal buyClicked
    signal sellClicked

    RowLayout {
        Button {
            text: "Buy"
            onClicked: buyClicked()
        }

        Button {
            text: "Sell"
            onClicked: sellClicked()
        }
    }
}
