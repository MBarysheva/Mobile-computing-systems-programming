import QtQuick 2.0
import Sailfish.Silica 1.0
Page {

    id: page6
    DAO {
        id: dao
    }
    ListModel {
        id: notesListModel
    }
    Column {
        anchors.fill: parent
        spacing: 10
        anchors.margins: 10
        TextField {
            id: textfield6
        }
        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Добавить"
            onClicked: {
                if (!textfield6.text)
                    return;
                dao.insertNote(textfield6.text);
                updateNotes();
            }
        }
        SilicaListView {
            width: parent.width
            height: parent.height
            model: notesListModel
            spacing: 15
            delegate: Button {
                width: parent.width
                onClicked: { dao.deleteNote(model.id); updateNotes(); }
                text: model.name
                height: 70
            }
        }
    }
    function updateNotes() {
        notesListModel.clear();
        dao.fetchNotes(function(notes) {
            for (var i = 0; i < notes.length; i++) {
                var note = notes.item(i);
                notesListModel.append({id: note.id, name: note.name});
            }
        });
    }
    Component.onCompleted: updateNotes()
}
