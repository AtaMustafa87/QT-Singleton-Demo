import QtQuick 2.15
import QtQuick.Controls 2.15

Page{
    Column{
        anchors.centerIn: parent
        Text{
            text: "Digital Input"
        }
        Button{
            text: "Back"
            onClicked: stackView.pop()
        }
    }
}
