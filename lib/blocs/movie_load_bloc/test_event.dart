part of 'test_bloc.dart';

abstract class TestEvent {}

class MovieLoadEvent implements TestEvent {
  //event 처리 관련된 로직
  MovieLoadEvent(this.page);

  final int page;
}

class ThemeChangedEvent implements TestEvent {
  ThemeChangedEvent();
}
