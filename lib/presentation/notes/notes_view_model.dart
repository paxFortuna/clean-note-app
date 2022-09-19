import 'package:clean_note_app/domain/repository/note_repository.dart';
import 'package:clean_note_app/domain/use_case/get_notes_use_case.dart';
import 'package:clean_note_app/presentation/notes/notes_event.dart';
import 'package:clean_note_app/presentation/notes/notes_state.dart';
import 'package:flutter/foundation.dart';

import '../../domain/model/note.dart';
import '../../domain/use_case/add_note_use_case.dart';
import '../../domain/use_case/delete_note_use_case.dart';
import '../../domain/use_case/use_cases.dart';
import '../../domain/util/note_order.dart';
import '../../domain/util/order_type.dart';

class NotesViewModel with ChangeNotifier {
  final UseCases useCases;

  NotesState _state = NotesState(
    notes: [],
    noteOrder: const NoteOrder.date(OrderType.descending()),
  );

  NotesState get state => _state;

  Note? _recentlyDeletedNote;

  NotesViewModel(this.useCases) {
    _loadNotes();
  }

  void onEvent(NotesEvent event) {
    event.when(
      loadNotes: _loadNotes,
      deleteNote: _deleteNote,
      restoreNote: _restoreNote,
      changeOrder: (NoteOrder noteOrder) {
        _state = state.copyWith(
          noteOrder: noteOrder,
        );
        _loadNotes();
      },
    );
  }

  Future<void> _loadNotes() async {
    // await getNotes.call(); call()생략 가능
    List<Note> notes = await useCases.getNotes(state.noteOrder);
    notes.sort((a, b) => -a.timestamp.compareTo(b.timestamp));
    _state = state.copyWith(
      notes: notes,
    );
    notifyListeners();
  }

  Future<void> _deleteNote(Note note) async {
    await useCases.deleteNote(note);
    _recentlyDeletedNote = note;
    await _loadNotes();
  }

  Future<void> _restoreNote() async {
    if (_recentlyDeletedNote != null) {
      await useCases.addNote(_recentlyDeletedNote!);
      _recentlyDeletedNote = null;

      _loadNotes();
    }
  }
}
