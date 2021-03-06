import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls.Styles 1.4

ApplicationWindow {
    id: mainWindow
    visible: true
    width: 1920
    height: 1080
    title: qsTr("Snake")
    property var records: []

    background: Rectangle {
        gradient: Gradient {
            GradientStop { position: 0; color: "#4DB6AC" }
            GradientStop { position: 1; color: "#004D40" }
        }
    }

    StackView {
        id: stackView
        focus: true
        initialItem: SnakeGameView {}
        anchors.fill: parent
        onCurrentItemChanged: {
            currentItem.focus = true
        }
    }
}
