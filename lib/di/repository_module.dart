import 'package:clean_note_app/data/data_source/note_db_helper.dart';
import 'package:clean_note_app/domain/repository/note_repository.dart';
import 'package:injectable/injectable.dart';

import '../data/repository/note_repository_impl.dart';
import 'di_setup.dart';

@module
abstract class RepositoryModule {
  @singleton
  // NoteRepository get noteRepository => NoteRepositoryImpl(getIt.get<NoteDbHelper>());
  NoteRepository get noteRepository => NoteRepositoryImpl(getIt.get<NoteDbHelper>());

}