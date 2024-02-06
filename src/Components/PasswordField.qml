import QtQuick 2.12
import QtQuick.Controls 2.12

TextField {
  id: passwordField
  focus: true
  selectByMouse: true
  placeholderText: "Password"
  echoMode: TextInput.Password
  passwordCharacter: "•"
  passwordMaskDelay: config.PasswordShowLastLetter
  selectionColor: config.overlay
  renderType: Text.NativeRendering
  font.family: config.Font
  font.pointSize: config.FontSize
  font.bold: true
  color: config.text
  horizontalAlignment: TextInput.AlignHCenter
  background: Rectangle {
    id: passFieldBackground
    radius: 3
    color: config.surface
  }
  states: [
    State {
      name: "focused"
      when: passwordField.activeFocus
      PropertyChanges {
        target: passFieldBackground
        color: config.surface
      }
    },
    State {
      name: "hovered"
      when: passwordField.hovered
      PropertyChanges {
        target: passFieldBackground
        color: config.surface
      }
    }
  ]
  transitions: Transition {
    PropertyAnimation {
      properties: "color"
      duration: 300
    }
  }
}
