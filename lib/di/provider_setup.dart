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
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:sqflite/sqflite.dart';

// db를 위한 탑 레벨 함수 생성
Future<List<SingleChildWidget>> getProviders() async {
  Database database = await openDatabase(
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
  );

  NoteDbHelper noteDbHelper = NoteDbHelper(database);
  NoteRepository repository = NoteRepositoryImpl(noteDbHelper);
  // NotesViewModel noteViewModel = NotesViewModel(repository);

  UseCases useCases = UseCases(
    addNote: AddNoteUseCase(repository),
    deleteNote: DeleteNoteUseCase(repository),
    getNote: GetNoteUseCase(repository),
    getNotes: GetNotesUseCase(repository),
    updateNote: UpdateNoteUseCase(repository),
  );
  NotesViewModel noteViewModel = NotesViewModel(useCases);
  AddEditNoteViewModel addEditNoteViewModel = AddEditNoteViewModel(repository);

  return [
    ChangeNotifierProvider(create: (_) => noteViewModel),
    // ChangeNotifierProvider(create: (_) => addEditNoteViewModel),
    Provider(create: (_) => repository),
  ];
}
