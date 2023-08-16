import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hashtags/scr/configure/colors.dart';

class SelectHeaderHashtags extends StatelessWidget {
  const SelectHeaderHashtags({super.key});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 20,
      leadingWidth: 50,
      centerTitle: true,
      systemOverlayStyle:
          const SystemUiOverlayStyle(statusBarColor: whiteOrigin),
      backgroundColor: whiteOrigin,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.05,
          width: MediaQuery.of(context).size.width * 0.09,
          decoration: BoxDecoration(
            border: Border.all(color: grey),
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Center(
              child: Icon(
                Icons.arrow_back_ios,
                color: black,
              ),
            ),
          ),
        ),
      ),
      title: Text(
        'Events and Hashtags',
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
