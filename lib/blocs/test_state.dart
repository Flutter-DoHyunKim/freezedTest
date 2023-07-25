part of 'test_bloc.dart';

enum Status { init, error, done, load } //4가지 상태 들이 있다.
enum Status2 {dark, light}
@freezed
class TestState with _$TestState {
  //const factory TestState.initial() = _Initial; //TestState 를 바라보고 나머지를 사용하고 싶은대로 사용! abstract event와 비슷
  factory TestState( //여기서 State 에 어떤 정보가 들어 가야 하는지 확인 할 수 있다
      {required final Status status,required final Status2 status2,
        required final List<ResultMovieModel>? movieModel}) = _TestState;

  factory TestState.initial() => //처음 state 를 초기화 세팅 하는 것.
      TestState(status: Status.init, movieModel: null,status2: Status2.light);
}
/*
@freezed
class ThemeState with _$ThemeState {
  //const factory TestState.initial() = _Initial; //TestState 를 바라보고 나머지를 사용하고 싶은대로 사용! abstract event와 비슷
  factory ThemeState(
      {required final Status2 status}) = _ThemeState;

  factory ThemeState.initial() =>
      ThemeState(status: Status2.light);
}*/