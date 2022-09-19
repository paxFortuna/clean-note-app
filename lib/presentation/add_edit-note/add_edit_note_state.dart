import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/model/note.dart';

part 'add_edit_note_state.freezed.dart';

part 'add_edit_note_state.g.dart';

@freezed
abstract class AddEditNoteState with _$AddEditNoteState {
  const factory AddEditNoteState({
    Note? note,
    required int color,
  }) = _AddEditNoteState;

  factory AddEditNoteState.fromJson(Map<String, Object?> json) => _$AddEditNoteStateFromJson(json);
}