import 'package:hashtags/scr/configure/imports.dart';
import 'package:hashtags/scr/configure/route.dart';
import 'package:hashtags/scr/feature/select_hashtags/bloc/selected_items_cubit.dart';
import 'package:hashtags/scr/feature/select_hashtags/hashtags_page/hashtags_view.dart';
import 'package:hashtags/scr/feature/show_daft/show_draft.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => SelectedItemsCubit())],
      child: MaterialApp(
        title: 'HashTags',
        theme: ThemeData(
          textTheme: const TextTheme(
            titleLarge: TextStyle(
                color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
            bodyMedium: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
            bodySmall: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.normal),
          ),
        ),
        initialRoute: homePage,
        home: BlocProvider(
          create: (context) => SelectedItemsCubit(),
          child: const HashTagsView(),
        ),
        routes: {
          'HashTagsView': (context) => const HashTagsView(),
          'showDraftPage': (context) => const ShowDraftPage(),
        },
      ),
    );
  }
}
