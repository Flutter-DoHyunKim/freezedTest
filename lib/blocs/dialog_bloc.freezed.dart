// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dialog_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DialogState {
  int get count => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DialogStateCopyWith<DialogState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DialogStateCopyWith<$Res> {
  factory $DialogStateCopyWith(
          DialogState value, $Res Function(DialogState) then) =
      _$DialogStateCopyWithImpl<$Res, DialogState>;
  @useResult
  $Res call({int count});
}

/// @nodoc
class _$DialogStateCopyWithImpl<$Res, $Val extends DialogState>
    implements $DialogStateCopyWith<$Res> {
  _$DialogStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DialogStateCopyWith<$Res>
    implements $DialogStateCopyWith<$Res> {
  factory _$$_DialogStateCopyWith(
          _$_DialogState value, $Res Function(_$_DialogState) then) =
      __$$_DialogStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count});
}

/// @nodoc
class __$$_DialogStateCopyWithImpl<$Res>
    extends _$DialogStateCopyWithImpl<$Res, _$_DialogState>
    implements _$$_DialogStateCopyWith<$Res> {
  __$$_DialogStateCopyWithImpl(
      _$_DialogState _value, $Res Function(_$_DialogState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_$_DialogState(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DialogState implements _DialogState {
  const _$_DialogState({required this.count});

  @override
  final int count;

  @override
  String toString() {
    return 'DialogState(count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DialogState &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DialogStateCopyWith<_$_DialogState> get copyWith =>
      __$$_DialogStateCopyWithImpl<_$_DialogState>(this, _$identity);
}

abstract class _DialogState implements DialogState {
  const factory _DialogState({required final int count}) = _$_DialogState;

  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$_DialogStateCopyWith<_$_DialogState> get copyWith =>
      throw _privateConstructorUsedError;
}
