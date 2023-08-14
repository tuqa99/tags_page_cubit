part of 'selected_choose_cubit.dart';

sealed class SelectedChooseState extends Equatable {
  const SelectedChooseState();

  @override
  List<Object> get props => [];
}

final class SelectedChooseInitial extends SelectedChooseState {}

class SelectedChooses extends SelectedChooseState {}
