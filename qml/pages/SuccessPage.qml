import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "successPage"
    allowedOrientations: Orientation.All

    Label {
        id: congrText
        anchors.centerIn: parent
        width: parent.width
        text: qsTr("Congratulations ") + fullName + qsTr(" ! You are successfully registered.")
        wrapMode: Text.WordWrap
        font.pixelSize: Theme.fontSizeExtraLarge
    }

    Button {
        id: btSave
        anchors.top: congrText.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        text: qsTr("OК")
        onClicked: {
            Qt.quit()
        }
    }
}

