import 'package:injectable/injectable.dart';

import '../model/note.dart';
import '../repository/note_repository.dart';

@singleton
class GetNoteUseCase {
  final NoteRepository repository;

  GetNoteUseCase(this.repository);

  Future<Note?> call(int id) async {
    return await repository.getNoteById(id);
  }
}