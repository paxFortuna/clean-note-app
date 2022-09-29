import 'package:clean_note_app/data/data_source/note_db_helper.dart';
import 'package:clean_note_app/data/repository/note_repository_impl.dart';
import 'package:clean_note_app/domain/repository/note_repository.dart';
import 'package:clean_note_app/domain/use_case/add_note_use_case.dart';
import 'package:clean_note_app/domain/use_case/delete_note_use_case.dart';
import 'package:clean_note_app/domain/use_case/get_note_use_case.dart';
import 'package:clean_note_app/domain/use_case/get_notes_use_case.dart';
import 'package:clean_note_app/domain/use_case/update_note_use_case.dart';
import 'package:clean_note_app/domain/use_case/use_cases.dart';
import 'package:clean_note_app/presentation/add_edit-note/add_edit_note_view_model.dart';
import 'package:clean_note_app/presentation/notes/notes_view_model.dart';
import 'package:get_it/get_it.dart';
import 'package:sqflite/sqflite.dart';

// GetIt 의존성 주입
final getIt = GetIt.instance;

Future<void> setupDi() async {
  getIt.registerSingletonAsync(() => openDatabase(
    'notes_db',
    version: 1,
    onCreate: (db, version) async {
      await db.execute('''CREATE TABLE note (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        title TEXT, 
        content TEXT, 
        color INTEGER, 
        timestamp INTEGER)''');
    },
  ));


  // getIt.registerSingleton<Database>(database);
  // getIt.registerSingleton<NoteDbHelper>(NoteDbHelper(database));
  // 객체가 여기 저기 흩어져 있을 때는 아래 코드가 효율적임
  getIt.registerSingleton(NoteDbHelper(await getIt.getAsync()));
  getIt.registerSingleton<NoteRepository>(NoteRepositoryImpl(getIt.get()));
  getIt.registerSingleton(AddNoteUseCase(getIt.get()));
  getIt.registerSingleton(DeleteNoteUseCase(getIt.get()));
  getIt.registerSingleton(GetNoteUseCase(getIt.get()));
  getIt.registerSingleton(GetNotesUseCase(getIt.get()));
  getIt.registerSingleton(UpdateNoteUseCase(getIt.get()));

  getIt.registerFactory(
    () => NotesViewModel(
      UseCases(
        addNote: getIt.get(),
        deleteNote: getIt.get(),
        getNote: getIt.get(),
        getNotes: getIt.get(),
        updateNote: getIt.get(),
      ),
    ),
  );

  getIt.registerFactory(() => AddEditNoteViewModel(getIt.get()));
}

// db를 위한 탑 레벨 함수 생성
// Future<List<SingleChildWidget>> getProviders() async {
//   Database database = await openDatabase(
//     'notes_db',
//     version: 1,
//     onCreate: (db, version) async {
//       await db.execute('''CREATE TABLE note (
//         id INTEGER PRIMARY KEY AUTOINCREMENT,
//         title TEXT,
//         content TEXT,
//         color INTEGER,
//         timestamp INTEGER)''');
//     },
//   );
//   NoteDbHelper noteDbHelper = NoteDbHelper(database);
//   NoteRepository repository = NoteRepositoryImpl(noteDbHelper);
//   // NotesViewModel noteViewModel = NotesViewModel(repository);
//
//   UseCases useCases = UseCases(
//     addNote: AddNoteUseCase(repository),
//     deleteNote: DeleteNoteUseCase(repository),
//     getNote: GetNoteUseCase(repository),
//     getNotes: GetNotesUseCase(repository),
//     updateNote: UpdateNoteUseCase(repository),
//   );
//   NotesViewModel noteViewModel = NotesViewModel(useCases);
//   AddEditNoteViewModel addEditNoteViewModel = AddEditNoteViewModel(repository);
//
//   return [
//     ChangeNotifierProvider(create: (_) => noteViewModel),
//     // ChangeNotifierProvider(create: (_) => addEditNoteViewModel),
//     Provider(create: (_) => repository),
//   ];

