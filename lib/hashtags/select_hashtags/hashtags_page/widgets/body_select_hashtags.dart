import 'package:hashtags/configure/imports.dart';

List tagsSelected = [];
List tagsStatic = ['Personal', 'Wedding', 'Business'];
late int tappedIndex;

class BodySelectHashtags extends StatefulWidget {
  const BodySelectHashtags({super.key});

  @override
  State<BodySelectHashtags> createState() => _BodySelectHashtagsState();
}

class _BodySelectHashtagsState extends State<BodySelectHashtags> {
  @override
  void initState() {
    super.initState();
    tappedIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          'Select all events that match your property: ',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(
          height: 5,
        ),
        Wrap(
          direction: Axis.horizontal,
          children: List.generate(
            tagsStatic.length,
            (index) => Padding(
              padding: const EdgeInsets.only(top: 10, right: 25),
              child: InkWell(
                onTap: () {
                  setState(() {
                    tappedIndex = index;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: tappedIndex == index ? bluePrimary : grey,
                  ),
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.height * 0.19,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        iconsPath[index],
                        color: Colors.black,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        tagsStatic[index],
                        style: Theme.of(context).textTheme.titleSmall,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
