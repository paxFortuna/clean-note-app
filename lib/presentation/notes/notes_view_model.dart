import 'dart:collection';

import 'package:clean_note_app/domain/repository/note_repository.dart';
import 'package:clean_note_app/presentation/notes/notes_event.dart';
import 'package:flutter/foundation.dart';
import '../../domain/model/note.dart';

class NoteViewModel with ChangeNotifier {
  final NoteRepository repository;

  NoteViewModel(this.repository);

  List<Note> _notes = [];
  UnmodifiableListView<Note> get note => UnmodifiableListView(_notes);

  Note? _recentlyDeleteNote;

  void onEvent(NotesEvent event) {
    event.when(
      loadNotes: _loadNotes,
      deleteNote: _deleteNote,
      restoreNote: () {},
    );
  }

  Future<void> _loadNotes() async {
    List<Note> notes = await repository.getNotes();
    _notes = notes;
    notifyListeners();
  }

  Future<void> _deleteNote(Note note) async {
    await repository.deleteNote(note);
    await _loadNotes();
  }

  Future<void> _restoreNote() async {
    if(_recentlyDeleteNote != null) {
      await repository.insertNote(_recentlyDeleteNote!);
      _recentlyDeleteNote = null;

      _loadNotes();
    }
  }

}
