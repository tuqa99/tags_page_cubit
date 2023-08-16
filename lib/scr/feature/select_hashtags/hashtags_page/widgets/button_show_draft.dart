import 'package:flutter/material.dart';
import 'package:hashtags/scr/configure/colors.dart';
import 'package:hashtags/scr/feature/select_hashtags/hashtags_page/widgets/trending_tags.dart';

class ButtonShowDraft extends StatefulWidget {
  const ButtonShowDraft({super.key});

  @override
  State<ButtonShowDraft> createState() => _ButtonShowDraftState();
}

class _ButtonShowDraftState extends State<ButtonShowDraft> {
  Color buttonColor = whiteOrigin;
  Color buttonColor2 = whiteOrigin;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {
            setState(() {
              if (buttonColor == whiteOrigin) {
                buttonColor = bluePrimary;
              } else {
                buttonColor = whiteOrigin;
              }
              trendingTagsSelected.add(trendingTags[tappedIndexTrending]);
              Navigator.pushNamed(context, 'showDraftPage');
            });
          },
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.06,
            decoration: BoxDecoration(
                border: Border.all(),
                color: buttonColor,
                borderRadius: BorderRadius.circular(7)),
            child: const Center(child: Text('Save as Draft')),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        InkWell(
          onTap: () {
            setState(() {
              if (buttonColor2 == whiteOrigin) {
                buttonColor2 = bluePrimary;
              } else {
                buttonColor2 = whiteOrigin;
              }
            });
          },
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.06,
            decoration: BoxDecoration(
                border: Border.all(),
                color: buttonColor2,
                borderRadius: BorderRadius.circular(7)),
            child: const Center(child: Text('Continue')),
          ),
        ),
      ],
    );
  }
}
