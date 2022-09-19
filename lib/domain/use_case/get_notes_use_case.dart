import 'package:clean_note_app/domain/repository/note_repository.dart';
import 'package:clean_note_app/domain/util/note_order.dart';

import '../model/note.dart';

class GetNotesUseCase {
  final NoteRepository repository;

  GetNotesUseCase(this.repository);

  Future<List<Note>> call(NoteOrder noteOrder) async {
    List<Note> notes = await repository.getNotes();
    noteOrder.when(
      title: (orderType) {},
      date: (orderType) {
        orderType.when(
          ascending: () {},
          descending: () {
            notes.sort((a, b) => -a.timestamp.compareTo(b.timestamp));
          },
        );
      },
      color: (orderType) {},
    );

    return notes;
  }
}
