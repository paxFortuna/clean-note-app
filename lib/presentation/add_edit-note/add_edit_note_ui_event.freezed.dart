// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_edit_note_ui_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddEditNoteUiEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() saveNote,
    required TResult Function(String message) showSnackBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? saveNote,
    TResult Function(String message)? showSnackBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? saveNote,
    TResult Function(String message)? showSnackBar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveNote value) saveNote,
    required TResult Function(ShowSnackBar value) showSnackBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaveNote value)? saveNote,
    TResult Function(ShowSnackBar value)? showSnackBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveNote value)? saveNote,
    TResult Function(ShowSnackBar value)? showSnackBar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddEditNoteUiEventCopyWith<$Res> {
  factory $AddEditNoteUiEventCopyWith(
          AddEditNoteUiEvent value, $Res Function(AddEditNoteUiEvent) then) =
      _$AddEditNoteUiEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddEditNoteUiEventCopyWithImpl<$Res>
    implements $AddEditNoteUiEventCopyWith<$Res> {
  _$AddEditNoteUiEventCopyWithImpl(this._value, this._then);

  final AddEditNoteUiEvent _value;
  // ignore: unused_field
  final $Res Function(AddEditNoteUiEvent) _then;
}

/// @nodoc
abstract class _$$SaveNoteCopyWith<$Res> {
  factory _$$SaveNoteCopyWith(
          _$SaveNote value, $Res Function(_$SaveNote) then) =
      __$$SaveNoteCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SaveNoteCopyWithImpl<$Res>
    extends _$AddEditNoteUiEventCopyWithImpl<$Res>
    implements _$$SaveNoteCopyWith<$Res> {
  __$$SaveNoteCopyWithImpl(_$SaveNote _value, $Res Function(_$SaveNote) _then)
      : super(_value, (v) => _then(v as _$SaveNote));

  @override
  _$SaveNote get _value => super._value as _$SaveNote;
}

/// @nodoc

class _$SaveNote implements SaveNote {
  const _$SaveNote();

  @override
  String toString() {
    return 'AddEditNoteUiEvent.saveNote()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SaveNote);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() saveNote,
    required TResult Function(String message) showSnackBar,
  }) {
    return saveNote();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? saveNote,
    TResult Function(String message)? showSnackBar,
  }) {
    return saveNote?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? saveNote,
    TResult Function(String message)? showSnackBar,
    required TResult orElse(),
  }) {
    if (saveNote != null) {
      return saveNote();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveNote value) saveNote,
    required TResult Function(ShowSnackBar value) showSnackBar,
  }) {
    return saveNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaveNote value)? saveNote,
    TResult Function(ShowSnackBar value)? showSnackBar,
  }) {
    return saveNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveNote value)? saveNote,
    TResult Function(ShowSnackBar value)? showSnackBar,
    required TResult orElse(),
  }) {
    if (saveNote != null) {
      return saveNote(this);
    }
    return orElse();
  }
}

abstract class SaveNote implements AddEditNoteUiEvent {
  const factory SaveNote() = _$SaveNote;
}

/// @nodoc
abstract class _$$ShowSnackBarCopyWith<$Res> {
  factory _$$ShowSnackBarCopyWith(
          _$ShowSnackBar value, $Res Function(_$ShowSnackBar) then) =
      __$$ShowSnackBarCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$ShowSnackBarCopyWithImpl<$Res>
    extends _$AddEditNoteUiEventCopyWithImpl<$Res>
    implements _$$ShowSnackBarCopyWith<$Res> {
  __$$ShowSnackBarCopyWithImpl(
      _$ShowSnackBar _value, $Res Function(_$ShowSnackBar) _then)
      : super(_value, (v) => _then(v as _$ShowSnackBar));

  @override
  _$ShowSnackBar get _value => super._value as _$ShowSnackBar;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ShowSnackBar(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShowSnackBar implements ShowSnackBar {
  const _$ShowSnackBar(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AddEditNoteUiEvent.showSnackBar(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowSnackBar &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ShowSnackBarCopyWith<_$ShowSnackBar> get copyWith =>
      __$$ShowSnackBarCopyWithImpl<_$ShowSnackBar>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() saveNote,
    required TResult Function(String message) showSnackBar,
  }) {
    return showSnackBar(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? saveNote,
    TResult Function(String message)? showSnackBar,
  }) {
    return showSnackBar?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? saveNote,
    TResult Function(String message)? showSnackBar,
    required TResult orElse(),
  }) {
    if (showSnackBar != null) {
      return showSnackBar(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveNote value) saveNote,
    required TResult Function(ShowSnackBar value) showSnackBar,
  }) {
    return showSnackBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaveNote value)? saveNote,
    TResult Function(ShowSnackBar value)? showSnackBar,
  }) {
    return showSnackBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveNote value)? saveNote,
    TResult Function(ShowSnackBar value)? showSnackBar,
    required TResult orElse(),
  }) {
    if (showSnackBar != null) {
      return showSnackBar(this);
    }
    return orElse();
  }
}

abstract class ShowSnackBar implements AddEditNoteUiEvent {
  const factory ShowSnackBar(final String message) = _$ShowSnackBar;

  String get message;
  @JsonKey(ignore: true)
  _$$ShowSnackBarCopyWith<_$ShowSnackBar> get copyWith =>
      throw _privateConstructorUsedError;
}
