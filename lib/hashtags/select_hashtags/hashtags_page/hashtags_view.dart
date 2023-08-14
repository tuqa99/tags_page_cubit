import 'package:hashtags/configure/imports.dart';

class HashTagsView extends StatefulWidget {
  const HashTagsView({super.key});

  @override
  State<HashTagsView> createState() => _HashTagsViewState();
}

class _HashTagsViewState extends State<HashTagsView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            SelectHeaderHashtags(),
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
