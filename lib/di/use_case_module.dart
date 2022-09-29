import 'package:clean_note_app/di/di_setup.dart';
import 'package:clean_note_app/domain/repository/note_repository.dart';
import 'package:clean_note_app/domain/use_case/add_note_use_case.dart';
import 'package:clean_note_app/domain/use_case/update_note_use_case.dart';
import 'package:injectable/injectable.dart';

import '../domain/use_case/delete_note_use_case.dart';
import '../domain/use_case/get_note_use_case.dart';
import '../domain/use_case/get_notes_use_case.dart';

@module
abstract class UseCaseModule {
  @singleton
  AddNoteUseCase get addNoteUseCase =>
      AddNoteUseCase(getIt.get<NoteRepository>());

  @singleton
  DeleteNoteUseCase get deleteNoteUseCase =>
      DeleteNoteUseCase(getIt.get<NoteRepository>());

  @singleton
  GetNoteUseCase get getNoteUseCase =>
      GetNoteUseCase(getIt.get<NoteRepository>());

  @singleton
  GetNotesUseCase get getNotesUseCase =>
      GetNotesUseCase(getIt.get<NoteRepository>());

  @singleton
  UpdateNoteUseCase get updateNoteUseCase =>
      UpdateNoteUseCase(getIt.get<NoteRepository>());
}