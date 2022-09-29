import 'package:clean_note_app/presentation/notes/notes_screen.dart';
import 'package:clean_note_app/ui/colors.dart';
import 'package:flutter/material.dart';

import 'di/provider_setup.dart';

void main() async {
  // 플랫폼 채널의 위젯 바인딩을 보장 : db 초기화를 실행
  WidgetsFlutterBinding.ensureInitialized();

  await setupDi(); // injectable 사용
  // configureDependencies();
  runApp(const MyApp(),

  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        unselectedWidgetColor: Colors.white,
        primaryColor: Colors.white,
        backgroundColor: darkGray,
        canvasColor: darkGray,
        floatingActionButtonTheme:
            Theme.of(context).floatingActionButtonTheme.copyWith(
                  backgroundColor: Colors.white,
                  foregroundColor: darkGray,
                ),
        appBarTheme: Theme.of(context).appBarTheme.copyWith(
              backgroundColor: darkGray,
            ),
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: Colors.white,
        ),
      ),
      home: const NotesScreen(),
    );
  }
}
