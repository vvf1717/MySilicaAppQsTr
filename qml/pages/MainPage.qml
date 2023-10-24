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
    objectName: "mainPage"
    allowedOrientations: Orientation.All

    PageHeader {
        id: headerOfPage
        objectName: "pageHeader"
        title: qsTr("Registration")
    }
    Text {
        id: loginLabel
        text: qsTr("Login")
        anchors.top: headerOfPage.bottom
    }
    TextField {
    id: loginField
    anchors.top: loginLabel.bottom
    width: parent.width
    placeholderText: qsTr("Login")
    label: qsTr("Enter login")
    inputMethodHints: Qt.ImhNone
    }

    Text {
        id: phoneLabel
        text: qsTr("Phone")
        anchors.top: loginField.bottom
    }

    TextField {
    id: phoneField
    anchors.top: phoneLabel.bottom

    width: parent.width
    placeholderText: qsTr("+7XXXXXXXXXX")
    label: qsTr("Enter your phone number")
    validator: RegExpValidator {regExp: /^((8|\+7)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{7,10}$/ }
    inputMethodHints: Qt.ImhDialableCharactersOnly
    }

    Button {
        id: btReg
        backgroundColor: phoneField.acceptableInput ? "green" : "red"
        anchors.top: phoneField.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        text: qsTr("Register")
        onClicked: {
            if(phoneField.acceptableInput)
            pageStack.push(Qt.resolvedUrl("RegistrationPage.qml"))
        }
    }
}
