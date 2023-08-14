import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'selected_choose_state.dart';

class SelectedChooseCubit extends Cubit<SelectedChooseState> {
  SelectedChooseCubit() : super(SelectedChooseInitial());
}
