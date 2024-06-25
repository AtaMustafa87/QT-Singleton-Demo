import QtQuick 2.15
import QtQuick.Controls 2.15

Page {
    Grid{
        anchors.fill: parent
        columns:2
        rowSpacing: 0
        columnSpacing: 0
        //rowSpacing: 10
        //columnSpacing: 10
        Button{
            text: "Analog Input"
            width: parent.width/2
            height: parent.height/2
            onClicked: stackView.push(analogInputWindow)
        }
        Button{
            text: "Analog Output"
            width: parent.width/2
            height: parent.height/2
            onClicked: stackView.push(analogOutputWindow)
        }
        Button{
            text: "Digital Input"
            width: parent.width/2
            height: parent.height/2
            onClicked: stackView.push(digitalInputWindow)
        }
        Button{
            text: "Digital Output"
            width: parent.width/2
            height: parent.height/2
            onClicked: stackView.push(digitalOutputWindow)
        }
    }

}
