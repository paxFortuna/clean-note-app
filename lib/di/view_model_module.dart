import 'package:clean_note_app/domain/repository/note_repository.dart';
import 'package:clean_note_app/presentation/add_edit-note/add_edit_note_view_model.dart';
import 'package:injectable/injectable.dart';

import '../domain/use_case/add_note_use_case.dart';
import '../domain/use_case/delete_note_use_case.dart';
import '../domain/use_case/get_note_use_case.dart';
import '../domain/use_case/get_notes_use_case.dart';
import '../domain/use_case/update_note_use_case.dart';
import '../domain/use_case/use_cases.dart';
import 'di_setup.dart';

@module
abstract class ViewModelModule {
  @injectable
  UseCases get notesViewModel =>
      UseCases(
        addNote: getIt.get<AddNoteUseCase>(),
        deleteNote: getIt.get<DeleteNoteUseCase>(),
        getNote: getIt.get<GetNoteUseCase>(),
        getNotes: getIt.get<GetNotesUseCase>(),
        updateNote: getIt.get<UpdateNoteUseCase>(),
      );

  @injectable
  AddEditNoteViewModel get addEditNoteViewModel => AddEditNoteViewModel(
    getIt.get<NoteRepository>()
  );
}