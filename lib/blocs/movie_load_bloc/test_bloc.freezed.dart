// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TestState {
  Status get status => throw _privateConstructorUsedError;
  Status2 get status2 => throw _privateConstructorUsedError;
  List<ResultMovieModel>? get movieModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TestStateCopyWith<TestState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestStateCopyWith<$Res> {
  factory $TestStateCopyWith(TestState value, $Res Function(TestState) then) =
      _$TestStateCopyWithImpl<$Res, TestState>;
  @useResult
  $Res call(
      {Status status, Status2 status2, List<ResultMovieModel>? movieModel});
}

/// @nodoc
class _$TestStateCopyWithImpl<$Res, $Val extends TestState>
    implements $TestStateCopyWith<$Res> {
  _$TestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? status2 = null,
    Object? movieModel = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      status2: null == status2
          ? _value.status2
          : status2 // ignore: cast_nullable_to_non_nullable
              as Status2,
      movieModel: freezed == movieModel
          ? _value.movieModel
          : movieModel // ignore: cast_nullable_to_non_nullable
              as List<ResultMovieModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TestStateCopyWith<$Res> implements $TestStateCopyWith<$Res> {
  factory _$$_TestStateCopyWith(
          _$_TestState value, $Res Function(_$_TestState) then) =
      __$$_TestStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status, Status2 status2, List<ResultMovieModel>? movieModel});
}

/// @nodoc
class __$$_TestStateCopyWithImpl<$Res>
    extends _$TestStateCopyWithImpl<$Res, _$_TestState>
    implements _$$_TestStateCopyWith<$Res> {
  __$$_TestStateCopyWithImpl(
      _$_TestState _value, $Res Function(_$_TestState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? status2 = null,
    Object? movieModel = freezed,
  }) {
    return _then(_$_TestState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      status2: null == status2
          ? _value.status2
          : status2 // ignore: cast_nullable_to_non_nullable
              as Status2,
      movieModel: freezed == movieModel
          ? _value._movieModel
          : movieModel // ignore: cast_nullable_to_non_nullable
              as List<ResultMovieModel>?,
    ));
  }
}

/// @nodoc

class _$_TestState implements _TestState {
  _$_TestState(
      {required this.status,
      required this.status2,
      required final List<ResultMovieModel>? movieModel})
      : _movieModel = movieModel;

  @override
  final Status status;
  @override
  final Status2 status2;
  final List<ResultMovieModel>? _movieModel;
  @override
  List<ResultMovieModel>? get movieModel {
    final value = _movieModel;
    if (value == null) return null;
    if (_movieModel is EqualUnmodifiableListView) return _movieModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TestState(status: $status, status2: $status2, movieModel: $movieModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TestState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.status2, status2) || other.status2 == status2) &&
            const DeepCollectionEquality()
                .equals(other._movieModel, _movieModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, status2,
      const DeepCollectionEquality().hash(_movieModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TestStateCopyWith<_$_TestState> get copyWith =>
      __$$_TestStateCopyWithImpl<_$_TestState>(this, _$identity);
}

abstract class _TestState implements TestState {
  factory _TestState(
      {required final Status status,
      required final Status2 status2,
      required final List<ResultMovieModel>? movieModel}) = _$_TestState;

  @override
  Status get status;
  @override
  Status2 get status2;
  @override
  List<ResultMovieModel>? get movieModel;
  @override
  @JsonKey(ignore: true)
  _$$_TestStateCopyWith<_$_TestState> get copyWith =>
      throw _privateConstructorUsedError;
}
