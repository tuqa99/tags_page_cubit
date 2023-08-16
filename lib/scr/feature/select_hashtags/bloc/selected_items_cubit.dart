import 'package:bloc/bloc.dart';
part 'selected_items_state.dart';

class SelectedItemsCubit extends Cubit<SelectedItemsState> {
  SelectedItemsCubit() : super(SelectedItemsInitial());

  List<String> selectedItem = [];
  List<String> addedItem1 = [];
  List<String> trendingItems = [];

  void addSelectedItems(
    String item,
    List<String> addedItem,
    String trendingItem,
  ) {
    selectedItem.clear();
    trendingItems.clear();
    selectedItem.add(item);
    trendingItems.add(trendingItem);

    emit(SelectedItemsShow(selectedItem, addedItem, trendingItems));
    // addedItem,
    // trendingItem
  }
}
