import 'package:clean_note_app/domain/repository/note_repository.dart';

import '../model/note.dart';

enum NoteOrder {
  title, date, color,
}

enum OrderType {
  ascending, descending,
}

class GetNotesUseCase {
  final NoteRepository repository;

  GetNotesUseCase(this.repository);

  Future<List<Note>> call(NoteOrder noteOrder, OrderType orderType) async {
    switch(noteOrder){
      case NoteOrder.title:

        switch(orderType){
          case OrderType.ascending:
            // TODO: Handle this case.
            break;
          case OrderType.descending:
            // TODO: Handle this case.
            break;
        }
        break;
      case NoteOrder.date:
        switch(orderType){
          case OrderType.ascending:
            // TODO: Handle this case.
            break;
          case OrderType.descending:
            // TODO: Handle this case.
            break;
        }
        break;

      case NoteOrder.color:
        switch(orderType){
          case OrderType.ascending:
            // TODO: Handle this case.
            break;
          case OrderType.descending:
            // TODO: Handle this case.
            break;
        }
        // TODO: Handle this case.
        break;
    }
    List<Note> notes = await repository.getNotes();
    notes.sort((a,b) => -a.timestamp.compareTo(b.timestamp));

    return notes;
  }

}