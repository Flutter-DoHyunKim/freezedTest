import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:freezed_testing/models/movie_model.dart';
import 'package:freezed_testing/services/repository.dart';

part 'test_event.dart';
part 'test_state.dart';
part 'test_bloc.freezed.dart';

class TestBloc extends Bloc<TestEvent, TestState> { //event는 어떤 일이 일어났을 때, state 상태 변화
  final MovieRepositoryType repositoryType;
  TestBloc(this.repositoryType) : super( TestState.initial()) {
    on<TestEvent>((event, emit) { //abstract class TestEvent 를 사용해서 하위 implements 하고 있는 class들 역시 사용 가능
      // TODO: implement event handler
    });
    on<MovieLoadEvent>(movieLoad);
    on<ThemeChangedEvent>(changeTheme);
  }

  Future<void> movieLoad(MovieLoadEvent event, Emitter<TestState> emit) async { //event 시 호출 함수와 같다
    try {
      final page = event.page;
      final MovieModel? result = await repositoryType.getPopularMovie(page); //repository에서 dio 호출 등으로 result 받아옴
// 상태에 대해 copyWith, 후 emit 으로 방출
      emit(state.copyWith(status: Status.done, movieModel: result?.results ?? [])); //copyWith로 일부 원하는 내용들을 업데이트를 해준다.
    } catch (e) {
      // 에러
      emit(state.copyWith(status: Status.error));
    }
  }
  Future<void> changeTheme(ThemeChangedEvent event, Emitter<TestState> emit) async {
    try {
      if(state.status2==Status2.dark)
      {emit(state.copyWith(status2: Status2.light));}
      else{
      emit(state.copyWith(status2: Status2.dark));
      }
    } catch (e) {
      // 에러
      emit(state.copyWith(status: Status.error));
    }
  }
}
