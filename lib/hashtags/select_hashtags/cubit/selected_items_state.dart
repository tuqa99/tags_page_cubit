part of 'selected_items_cubit.dart';

sealed class SelectedItemsState {
  const SelectedItemsState();

  List<Object> get props => [];
}

final class SelectedItemsInitial extends SelectedItemsState {}

// ignore: must_be_immutable
class SelectedItemsShow extends SelectedItemsState {
  late List<String> selectedItems;
  late List<String> addedChoose;
  late List<String> trendingChoose;
  SelectedItemsShow(this.selectedItems, this.addedChoose, this.trendingChoose);
  @override
  List<Object> get props => [selectedItems, selectedItems, trendingChoose];
}
