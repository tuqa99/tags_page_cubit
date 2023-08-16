import 'package:hashtags/scr/configure/imports.dart';

class HashTagsView extends StatefulWidget {
  const HashTagsView({super.key});

  @override
  State<HashTagsView> createState() => _HashTagsViewState();
}

class _HashTagsViewState extends State<HashTagsView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0), child: SelectHeaderHashtags()),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            BodySelectHashtags(),
            AddTags(),
            TrendingTags(),
            ButtonShowDraft()
          ],
        ),
      ),
    );
  }
}
