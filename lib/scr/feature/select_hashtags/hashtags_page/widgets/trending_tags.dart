import 'package:hashtags/scr/configure/colors.dart';
import 'package:hashtags/scr/configure/imports.dart';

List<String> trendingTagsSelected = [];
List<String> trendingTags = [
  'Baby Shower',
  'Country life',
  'Nature',
  'Farm',
  'Farm life'
];
late int tappedIndexTrending;

class TrendingTags extends StatefulWidget {
  const TrendingTags({super.key});

  @override
  State<TrendingTags> createState() => _TrendingTagsState();
}

class _TrendingTagsState extends State<TrendingTags> {
  @override
  void initState() {
    super.initState();
    tappedIndexTrending = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Text(
            'Trending Tags',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        SizedBox(
          child: Wrap(
            direction: Axis.horizontal,
            children: List.generate(
              trendingTags.length,
              (index) => Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      tappedIndexTrending = index;
                    });
                  },
                  child: Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: tappedIndexTrending == index ? bluePrimary : grey,
                    ),
                    child: Center(
                      child: Text(
                        trendingTags[index],
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
