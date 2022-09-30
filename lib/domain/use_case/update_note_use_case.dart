import 'package:clean_note_app/domain/repository/note_repository.dart';
import 'package:injectable/injectable.dart';

import '../model/note.dart';

@singleton
class UpdateNoteUseCase {
  final NoteRepository repository;

  UpdateNoteUseCase(this.repository);

  Future<void> call(Note note) async {
    await repository.updateNote(note);
  }
}