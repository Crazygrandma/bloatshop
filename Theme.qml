pragma Singleton 

import QtQuick
import Quickshell

Singleton{
  property color bg: "#141b1e"
  property color pill: "#232a2d"
  property color pillIcon: '#404b50'
  property color text: "#dadada"

  property color red: "#e57474"
  property color green: "#8ccf7e"
  property color yellow: "#e5c76b"
  property color blue: "#67b0e8"
  property color magenta: "#c47fd5"
  property color cyan: "#6cbfbf"


  property color accent: blue
  
  property int barHeight: 50
  property int moduleHeight: 26
  property int spacing: 8
  property int radius: 8

  property string font: "SF Mono"
  property real textSize: 15
  property real letterSpacing: -0.5
  
  property string iconFont: "Material Symbols Rounded"
  property int iconSize: 16

  property var iconAxes: ({
    "FILL": 0,
    "wght": 700,
    "GRAD": 0,
    "opsz": 20,
  })
}
