import 'package:hashtags/configure/imports.dart';

class ShowDraftPage extends StatefulWidget {
  const ShowDraftPage({
    super.key,
  });

  @override
  State<ShowDraftPage> createState() => _ShowDraftPageState();
}

class _ShowDraftPageState extends State<ShowDraftPage> {
  @override
  void initState() {
    super.initState();

    tagsSelected.clear();
    trendingTagsSelected.clear();
    BlocProvider.of<SelectedItemsCubit>(context).addSelectedItems(
        tagsStatic[tappedIndex], addedTags, trendingTags[tappedIndexTrending]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<SelectedItemsCubit, SelectedItemsState>(
          builder: (context, state) {
        if (state is SelectedItemsShow) {
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 100,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('your selected'),
                ),
                Wrap(
                  children: List.generate(
                      state.selectedItems.length,
                      (index) => HashTagsAdded(
                            choice: state.selectedItems[index],
                          )),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Tags added'),
                ),
                Row(
                  children: [
                    Wrap(
                      children: List.generate(
                          state.addedChoose.length,
                          (index) => HashTagsAdded(
                                choice: state.addedChoose[index],
                              )),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Trending Tags'),
                ),
                Wrap(
                  children: List.generate(
                      state.trendingChoose.length,
                      (index) => HashTagsAdded(
                            choice: state.trendingChoose[index],
                          )),
                ),
                const BackButton11()
              ],
            ),
          );
        }
        return const CircularProgressIndicator();
      }),
    );
  }
}
