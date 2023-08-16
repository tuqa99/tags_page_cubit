// ignore: must_be_immutable
import 'package:hashtags/scr/configure/colors.dart';
import 'package:hashtags/scr/configure/imports.dart';

// ignore: must_be_immutable
class HashTagsAdded extends StatelessWidget {
  HashTagsAdded({super.key, required this.choice});

  String choice;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 20,
          height: 100,
        ),
        Container(
          height: 50,
          width: 100,
          decoration: BoxDecoration(
            color: grey,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(choice),
          ),
        ),
      ],
    );
  }
}
