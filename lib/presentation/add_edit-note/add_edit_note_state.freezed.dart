// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_edit_note_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddEditNoteState _$AddEditNoteStateFromJson(Map<String, dynamic> json) {
  return _AddEditNoteState.fromJson(json);
}

/// @nodoc
mixin _$AddEditNoteState {
  Note? get note => throw _privateConstructorUsedError;
  int get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddEditNoteStateCopyWith<AddEditNoteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddEditNoteStateCopyWith<$Res> {
  factory $AddEditNoteStateCopyWith(
          AddEditNoteState value, $Res Function(AddEditNoteState) then) =
      _$AddEditNoteStateCopyWithImpl<$Res>;
  $Res call({Note? note, int color});

  $NoteCopyWith<$Res>? get note;
}

/// @nodoc
class _$AddEditNoteStateCopyWithImpl<$Res>
    implements $AddEditNoteStateCopyWith<$Res> {
  _$AddEditNoteStateCopyWithImpl(this._value, this._then);

  final AddEditNoteState _value;
  // ignore: unused_field
  final $Res Function(AddEditNoteState) _then;

  @override
  $Res call({
    Object? note = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $NoteCopyWith<$Res>? get note {
    if (_value.note == null) {
      return null;
    }

    return $NoteCopyWith<$Res>(_value.note!, (value) {
      return _then(_value.copyWith(note: value));
    });
  }
}

/// @nodoc
abstract class _$$_AddEditNoteStateCopyWith<$Res>
    implements $AddEditNoteStateCopyWith<$Res> {
  factory _$$_AddEditNoteStateCopyWith(
          _$_AddEditNoteState value, $Res Function(_$_AddEditNoteState) then) =
      __$$_AddEditNoteStateCopyWithImpl<$Res>;
  @override
  $Res call({Note? note, int color});

  @override
  $NoteCopyWith<$Res>? get note;
}

/// @nodoc
class __$$_AddEditNoteStateCopyWithImpl<$Res>
    extends _$AddEditNoteStateCopyWithImpl<$Res>
    implements _$$_AddEditNoteStateCopyWith<$Res> {
  __$$_AddEditNoteStateCopyWithImpl(
      _$_AddEditNoteState _value, $Res Function(_$_AddEditNoteState) _then)
      : super(_value, (v) => _then(v as _$_AddEditNoteState));

  @override
  _$_AddEditNoteState get _value => super._value as _$_AddEditNoteState;

  @override
  $Res call({
    Object? note = freezed,
    Object? color = freezed,
  }) {
    return _then(_$_AddEditNoteState(
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddEditNoteState implements _AddEditNoteState {
  const _$_AddEditNoteState({this.note, required this.color});

  factory _$_AddEditNoteState.fromJson(Map<String, dynamic> json) =>
      _$$_AddEditNoteStateFromJson(json);

  @override
  final Note? note;
  @override
  final int color;

  @override
  String toString() {
    return 'AddEditNoteState(note: $note, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddEditNoteState &&
            const DeepCollectionEquality().equals(other.note, note) &&
            const DeepCollectionEquality().equals(other.color, color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(note),
      const DeepCollectionEquality().hash(color));

  @JsonKey(ignore: true)
  @override
  _$$_AddEditNoteStateCopyWith<_$_AddEditNoteState> get copyWith =>
      __$$_AddEditNoteStateCopyWithImpl<_$_AddEditNoteState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddEditNoteStateToJson(
      this,
    );
  }
}

abstract class _AddEditNoteState implements AddEditNoteState {
  const factory _AddEditNoteState(
      {final Note? note, required final int color}) = _$_AddEditNoteState;

  factory _AddEditNoteState.fromJson(Map<String, dynamic> json) =
      _$_AddEditNoteState.fromJson;

  @override
  Note? get note;
  @override
  int get color;
  @override
  @JsonKey(ignore: true)
  _$$_AddEditNoteStateCopyWith<_$_AddEditNoteState> get copyWith =>
      throw _privateConstructorUsedError;
}
