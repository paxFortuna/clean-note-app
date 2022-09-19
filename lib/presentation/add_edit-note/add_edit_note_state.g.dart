// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_edit_note_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddEditNoteState _$$_AddEditNoteStateFromJson(Map<String, dynamic> json) =>
    _$_AddEditNoteState(
      note: json['note'] == null
          ? null
          : Note.fromJson(json['note'] as Map<String, dynamic>),
      color: json['color'] as int,
    );

Map<String, dynamic> _$$_AddEditNoteStateToJson(_$_AddEditNoteState instance) =>
    <String, dynamic>{
      'note': instance.note,
      'color': instance.color,
    };
