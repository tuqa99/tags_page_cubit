import 'package:hashtags/scr/feature/select_hashtags/hashtags_page/hashtags_view.dart';
import 'package:hashtags/scr/feature/show_daft/show_draft.dart';
import 'imports.dart';

const String homePage = 'lib/pages/hashtags/hashtags_page/hashtags_view.dart';
const String showDraft =
    'package:hashtags/hashtags/show_daft/show_draft/show_draft.dart';
Route<dynamic> generateRoute(RouteSettings settings) {
  final String? routName = settings.name;
  switch (routName) {
    case homePage:
      return MaterialPageRoute(
        builder: (context) => const HashTagsView(),
      );
    case showDraft:
      return MaterialPageRoute(
        builder: (context) => const ShowDraftPage(),
      );

    default:
      return MaterialPageRoute(
          builder: (context) => const Scaffold(
                body: Text('no return define'),
              ));
  }
}
