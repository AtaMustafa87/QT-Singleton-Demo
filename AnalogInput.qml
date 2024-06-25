import QtQuick 2.15
import QtQuick.Controls 2.15
import MyApp 1.0


Page{
    Column{
        anchors.centerIn: parent
        Text{
            id: textInput
            text: "Analog Input "+ MySingleton.myProperty
        }
        Slider{
            id: slider
            from: 0
            to: 100
            value: 10
            onValueChanged: MySingleton.setMyProperty(value)//data.value = value
        }

        Button{
            text: "Back"
            onClicked: stackView.pop()
        }
    }
}
