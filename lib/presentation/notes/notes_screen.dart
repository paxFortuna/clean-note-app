import 'package:clean_note_app/presentation/add_edit-note/add_edit_note_screen.dart';
import 'package:clean_note_app/presentation/add_edit-note/add_edit_note_view_model.dart';
import 'package:clean_note_app/presentation/notes/notes_event.dart';
import 'package:clean_note_app/presentation/notes/notes_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../di/di_setup.dart';
import 'components/note_item.dart';
import 'components/order_section.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => getIt.get<NotesViewModel>(),
        builder: (context, widget) {
          final viewModel = context.watch<NotesViewModel>();
          final state = viewModel.state;

          return Scaffold(
            appBar: AppBar(
              title: const Text(
                'Your note',
                style: TextStyle(fontSize: 30),
              ),
              actions: [
                IconButton(
                  onPressed: () {
                    viewModel.onEvent(const NotesEvent.toggleOrderSection());
                  },
                  icon: const Icon(Icons.sort),
                ),
              ],
              elevation: 0,
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () async {
                bool? isSaved = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ChangeNotifierProvider(
                        // factory로 새로 생성해서 전달됨
                        create: (_) => getIt.get<AddEditNoteViewModel>(),
                        child: const AddEditNoteScreen(),
                      );
                    },
                  ),
                );
                if (isSaved != null && isSaved) {
                  viewModel.onEvent(const NotesEvent.loadNotes());
                }
              },
              child: const Icon(Icons.add),
            ),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: [
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    child: state.isOrderSectionVisible
                        ? OrderSection(
                            noteOrder: state.noteOrder,
                            onOrderChanged: (noteOrder) {
                              viewModel
                                  .onEvent(NotesEvent.changeOrder(noteOrder));
                            },
                          )
                        : Container(),
                  ),
                  ...state.notes
                      .map(
                        (note) => GestureDetector(
                          onTap: () async {
                            bool? isSaved = await Navigator.push(
                              context,
                              MaterialPageRoute(
                                // note: note,
                                builder: (context) {
                                  return ChangeNotifierProvider(
                                    // ..setNote()하면 getIt.get<>의 값이 setNote에 리턴 된다
                                    create: (_) => getIt.get<AddEditNoteViewModel>()..setNote(note),
                                    child: AddEditNoteScreen(note: note),
                                  );
                                },
                              ),
                            );

                            if (isSaved != null && isSaved) {
                              viewModel.onEvent(const NotesEvent.loadNotes());
                            }
                          },
                          child: NoteItem(
                            note: note,
                            onDeleteTap: () {
                              viewModel.onEvent(NotesEvent.deleteNote(note));

                              final snackBar = SnackBar(
                                content: const Text('노트가 삭제되었습니다'),
                                action: SnackBarAction(
                                  label: '취소',
                                  onPressed: () {
                                    viewModel.onEvent(
                                        const NotesEvent.restoreNote());
                                  },
                                ),
                              );

                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            },
                          ),
                        ),
                      )
                      .toList(),
                ],
              ),
            ),
          );
        });
  }
}
