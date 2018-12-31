import QtQuick 1.1
import com.nokia.meego 1.1

Page {
    id: page1
    width: 480
    height: 854
    tools: ToolBarLayout {
             ToolItem { iconId: "icon-m-toolbar-back"; onClicked: pageStack.pop(); }
//             ToolItem { iconId: "icon-m-toolbar-view-menu" }
         }

    Rectangle {
        // name this element root
        id: gruppo

        // properties: <name>: <value>
        width: 480; height: 1074

        // color property
        color: "#3188be"

        Rectangle {
                id: box1
                width: 360
                height: 59
                gradient: Gradient {
                    GradientStop {
                        position: 0.00;
                        color: "#82d0f7";
                    }
                    GradientStop {
                        position: 1.00;
                        color: "#19a3cc";
                    }
                }
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 0
                anchors.top: parent.top
                anchors.topMargin: 0
            }

        Button { // our Button component
                id: button
                x: 12;                text: "Start"
                anchors.top: parent.top
                anchors.topMargin: 600
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    status.text = "Button clicked!"
            }
        }

        Text {
                id: thisLabel
                x: 18 ; y: 18
                width: 323
                height: 40
                color: "#ffffff"
                text: "Swipenokia app"
                font.family: "Nokia Pure Text"
                font.pixelSize: 28
            }

            Text {
                id: testobenvenuto
                x: 30
                y: 246
                width: 421
                height: 277
                color: "#ffffff"
                text: qsTr("Sei in First Page")
                anchors.verticalCenterOffset: -152
                anchors.horizontalCenterOffset: 1
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                font.family: "Nokia Pure Text Light"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                verticalAlignment: Rectangle.Center
                font.pixelSize: 48
            }
            Text { // text changes when button was clicked
                    id: status
                    x: 182; width: 116; height: 26; text: " "
                    anchors.top: button.bottom
                    anchors.topMargin: 10
                    anchors.horizontalCenterOffset: 0
                    anchors.horizontalCenter: parent.horizontalCenter
                    horizontalAlignment: Text.AlignHCenter
                }
    }

}
