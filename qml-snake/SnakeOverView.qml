import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls.Styles 1.4
import QtQuick.Controls.Material 2.2

Frame {
    id: gameOverView
    property int foodEaten: 0
    background: Rectangle {
        color: "transparent"
        border.color: "#4DB6AC"
        border.width: 2
        radius: 2
    }
    ColumnLayout {
        anchors.centerIn: parent
        spacing: 10
        Label {
            text: qsTr("Game Over")
            color: "white"
            font { bold: true; pixelSize: 30 }
            Layout.fillWidth: true
        }
        Label {
            text: qsTr("You eat %1 food").arg(gameOverView.foodEaten)
            color: "orange"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font { pixelSize: 24 }
            Layout.fillWidth: true
        }
        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "再玩一局"
            highlighted: true
            Material.accent: Material.Orange

            onClicked: stackView.replace(Qt.resolvedUrl("qrc:/SnakeGameView.qml"));
        }

        Component.onCompleted: {
            console.log("Finished")
        }
    }
}
