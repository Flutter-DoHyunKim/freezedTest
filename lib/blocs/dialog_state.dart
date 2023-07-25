part of 'dialog_bloc.dart';

@freezed
class DialogState with _$DialogState {
  const factory DialogState({required final int count}) = _DialogState;

  factory DialogState.initial() => const DialogState(count: 1);
}
