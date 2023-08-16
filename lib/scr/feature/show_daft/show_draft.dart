import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hashtags/scr/feature/select_hashtags/bloc/selected_items_cubit.dart';
import 'package:hashtags/scr/feature/select_hashtags/hashtags_page/widgets/add_tags.dart';
import 'package:hashtags/scr/feature/select_hashtags/hashtags_page/widgets/body_select_hashtags.dart';
import 'package:hashtags/scr/feature/select_hashtags/hashtags_page/widgets/trending_tags.dart';
import 'package:hashtags/scr/feature/show_daft/widget/added_tags.dart';
import 'package:hashtags/scr/feature/show_daft/widget/back_button.dart';

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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'your selected',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                Wrap(
                  children: List.generate(
                      state.selectedItems.length,
                      (index) => HashTagsAdded(
                            choice: state.selectedItems[index],
                          )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Tags added',
                      style: Theme.of(context).textTheme.titleLarge),
                ),
                Row(
                  children: [
                    Wrap(
                      children: List.generate(
                        state.addedChoose.length,
                        (index) => HashTagsAdded(
                          choice: state.addedChoose[index],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Trending Tags',
                      style: Theme.of(context).textTheme.titleLarge),
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
