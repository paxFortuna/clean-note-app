// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:sqflite/sqflite.dart' as _i5;

import '../data/data_source/note_db_helper.dart' as _i9;
import '../domain/repository/note_repository.dart' as _i10;
import '../domain/use_case/add_note_use_case.dart' as _i4;
import '../domain/use_case/delete_note_use_case.dart' as _i6;
import '../domain/use_case/get_note_use_case.dart' as _i7;
import '../domain/use_case/get_notes_use_case.dart' as _i8;
import '../domain/use_case/update_note_use_case.dart' as _i11;
import '../domain/use_case/use_cases.dart' as _i12;
import '../presentation/add_edit-note/add_edit_note_view_model.dart' as _i3;
import 'app_module.dart' as _i15;
import 'repository_module.dart' as _i16;
import 'use_case_module.dart' as _i14;
import 'view_model_module.dart' as _i13; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final viewModelModule = _$ViewModelModule();
  final useCaseModule = _$UseCaseModule();
  final appModule = _$AppModule();
  final repositoryModule = _$RepositoryModule();
  gh.factory<_i3.AddEditNoteViewModel>(
      () => viewModelModule.addEditNoteViewModel);
  gh.singleton<_i4.AddNoteUseCase>(useCaseModule.addNoteUseCase);
  await gh.factoryAsync<_i5.Database>(
    () => appModule.database,
    preResolve: true,
  );
  gh.singleton<_i6.DeleteNoteUseCase>(useCaseModule.deleteNoteUseCase);
  gh.singleton<_i7.GetNoteUseCase>(useCaseModule.getNoteUseCase);
  gh.singleton<_i8.GetNotesUseCase>(useCaseModule.getNotesUseCase);
  gh.singleton<_i9.NoteDbHelper>(appModule.noteDbHelper);
  gh.singleton<_i10.NoteRepository>(repositoryModule.noteRepository);
  gh.singleton<_i11.UpdateNoteUseCase>(useCaseModule.updateNoteUseCase);
  gh.factory<_i12.UseCases>(() => viewModelModule.notesViewModel);
  return get;
}

class _$ViewModelModule extends _i13.ViewModelModule {}

class _$UseCaseModule extends _i14.UseCaseModule {}

class _$AppModule extends _i15.AppModule {}

class _$RepositoryModule extends _i16.RepositoryModule {}
