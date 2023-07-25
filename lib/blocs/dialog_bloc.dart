import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dialog_event.dart';
part 'dialog_state.dart';
part 'dialog_bloc.freezed.dart';

class DialogBloc extends Bloc<DialogEvent, DialogState> {
  DialogBloc() : super( DialogState.initial()) {
    on<DialogEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<PopDialogEvent>(popDialog);
  }
  Future<void> popDialog(DialogEvent event, Emitter<DialogState> emit) async {
    try {
      emit(state.copyWith(count: state.count+1));
      print(state.count);
    } catch (e) {
      // 에러
      print(e);
    }
  }
}
