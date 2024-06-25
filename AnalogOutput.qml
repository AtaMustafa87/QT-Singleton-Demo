import QtQuick 2.15
import QtQuick.Controls 2.15
import MyApp 1.0

Page{
    Column{
        anchors.centerIn: parent

        Text{
            id: label
            text: "Analog Output " + MySingleton.myProperty
        }
        Button{
            text: "Back"
            onClicked: stackView.pop()
        }
    }
    // Connections{
    //     target: MySingleton
    //     onMyPropertyChanged:
    //     {
    //         label.text = "updated value is "+MySingleton.myProperty
    //     }
    //}
}
