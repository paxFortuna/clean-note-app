import 'package:clean_note_app/domain/repository/note_repository.dart';
import 'package:injectable/injectable.dart';

import '../model/note.dart';

@singleton
class AddNoteUseCase {
  final NoteRepository repository;

  AddNoteUseCase(this.repository);

  Future<void> call(Note note) async {
    await repository.insertNote(note);
  }
}