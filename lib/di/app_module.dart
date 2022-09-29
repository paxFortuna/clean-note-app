import 'package:clean_note_app/data/data_source/note_db_helper.dart';
import 'package:clean_note_app/di/di_setup.dart';
import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';

@module
abstract class AppModule {
  // 오래 걸리는 비동기 함수는 @preResolve로 세팅하면, getIt에 자동 등록됨
  @preResolve
  Future<Database> get database => openDatabase(
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

  @singleton
  NoteDbHelper get noteDbHelper => NoteDbHelper(getIt.get<Database>());
}