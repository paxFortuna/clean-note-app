import 'package:clean_note_app/domain/repository/note_repository.dart';
import 'package:injectable/injectable.dart';

import '../model/note.dart';

@singleton
class DeleteNoteUseCase {
  final NoteRepository repository;

  DeleteNoteUseCase(this.repository);

  Future<void> call(Note note) async {
    await repository.deleteNote(note);
  }
}