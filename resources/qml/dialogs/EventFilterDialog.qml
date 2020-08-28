import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.2

Dialog {
	standardButtons: Dialog.Save | Dialog.Abort
	visible: true
	modal: true

	Component.onCompleted: open()

	ColumnLayout {
		RowLayout {
			RadioButton {
				id: disableFiltering
				checked: true
				text: qsTr("Disable filtering")
			}
			RadioButton {
				text: qsTr("Global")
			}
			RadioButton {
				text: qsTr("Room specific")
			}
		}

		ListView {
			Layout.fillHeight: true

			model: ["m.reaction", "m.room.member", "m.encrypted"]
			delegate: Switch {
				enabled: modelData != "m.encrypted" && !disableFiltering.checked
				text: modelData
			}
		}
	}
}
