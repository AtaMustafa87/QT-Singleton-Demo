import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Stack Window Example")

    StackView{
        id: stackView
        anchors.fill: parent
        initialItem: mainWindow
    }
    Component{
        id: mainWindow
        MainWindow{}
    }
    Component{
        id: analogInputWindow
        AnalogInput{}
    }
    Component{
        id: analogOutputWindow
        AnalogOutput{}
    }
    Component{
        id: digitalInputWindow
        DigitalInput{}
    }
    Component{
        id: digitalOutputWindow
        DigitalOutput{}
    }
}
