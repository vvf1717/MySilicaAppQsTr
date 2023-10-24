/*******************************************************************************
**
** Copyright (C) 2022 ru.auroraos
**
** This file is part of the Моё приложение для ОС Аврора project.
**
** Redistribution and use in source and binary forms,
** with or without modification, are permitted provided
** that the following conditions are met:
**
** * Redistributions of source code must retain the above copyright notice,
**   this list of conditions and the following disclaimer.
** * Redistributions in binary form must reproduce the above copyright notice,
**   this list of conditions and the following disclaimer
**   in the documentation and/or other materials provided with the distribution.
** * Neither the name of the copyright holder nor the names of its contributors
**   may be used to endorse or promote products derived from this software
**   without specific prior written permission.
**
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
** AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
** THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
** FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
** IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
** FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY,
** OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
** PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
** LOSS OF USE, DATA, OR PROFITS;
** OR BUSINESS INTERRUPTION)
** HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
** WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
** (INCLUDING NEGLIGENCE OR OTHERWISE)
** ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
** EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
**
*******************************************************************************/

import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "registrationPage"
    allowedOrientations: Orientation.All

    SilicaFlickable {
        objectName: "flickable"
        anchors.fill: parent
        contentHeight: layout.height + Theme.paddingLarge

        Column {
            id: layout
            objectName: "layout"
            width: parent.width

            PageHeader {
                objectName: "registrationPageHeader"
                title: qsTr("New User")
            }

 // name
            Text {
                id: firstNameLabel
                text: qsTr("First name")
            }
            TextField {
            id: firstNameField
            width: parent.width
            placeholderText: qsTr("First name")
            inputMethodHints: Qt.ImhPreferUppercase
            }

            Text {
                id: secondNameLabel
                text: qsTr("Second name")
            }
            TextField {
            id: secondNameField
            width: parent.width
            placeholderText: qsTr("Second name")
            inputMethodHints: Qt.ImhNone
            }

            Text {
                id: thirdNameLabel
                text: qsTr("Thrid name")
            }
            TextField {
            id: thirdNameField
            width: parent.width
            placeholderText: qsTr("Third name")
            inputMethodHints: Qt.ImhNone
            }
// email
            Text {
                id: emaleLabel
                text: qsTr("Emale")
            }
            TextField {
            id: emaleField
            width: parent.width
            placeholderText: qsTr("Emale")
            inputMethodHints: Qt.ImhEmailCharactersOnly
            }

// Favorite topics
            Text {
                id: favLabel
                text: qsTr("Favorite topics")
            }

            ComboBox {
                width: parent.width

                menu: ContextMenu {
                    MenuItem { text: qsTr("Cars") }
                    MenuItem { text: qsTr("Science") }
                    MenuItem { text: qsTr("Goods") }
                }
            }

// Agreement to processing of personal data
            Label {
                text: qsTr("Agreement to processing of personal data: ") + (persAgr.checked ? qsTr("yes") : qsTr("no"))
                wrapMode: Text.WordWrap

            }
            Switch {
                id: persAgr
            }

// Agreement to newsletters
            Label {
                text: qsTr("Are your agreement to newsletters: ") + (newsAgr.checked ? qsTr("yes") : qsTr("no"))
                wrapMode: Text.WordWrap
            }
            Switch {
                id: newsAgr
            }

            Button {
                id: btSave
                anchors.horizontalCenter: parent.horizontalCenter
                text: qsTr("Save")
                onClicked: {
                    fullName = firstNameField.text + " " + secondNameField.text + " " + thirdNameField.text;
                    pageStack.push(Qt.resolvedUrl("SuccessPage.qml"))
                }
            }
        }
    }
}
