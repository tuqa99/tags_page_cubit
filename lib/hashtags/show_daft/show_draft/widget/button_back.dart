import 'package:hashtags/configure/imports.dart';

class BackButton11 extends StatefulWidget {
  const BackButton11({super.key});

  @override
  State<BackButton11> createState() => _BackButton11State();
}

class _BackButton11State extends State<BackButton11> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialButton(
        minWidth: 200,
        color: grey,
        onPressed: () {
          Navigator.pushNamed(context, 'HashTagsView');
        },
        child: Text(
          'Back',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
