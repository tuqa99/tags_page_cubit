import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hashtags/scr/configure/colors.dart';

List<String> addedTags = [];

class AddTags extends StatefulWidget {
  const AddTags({super.key});

  @override
  State<AddTags> createState() => _AddTagsState();
}

class _AddTagsState extends State<AddTags> {
  TextEditingController controller = TextEditingController();
  String controllerText = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const SizedBox(
          width: 30,
          height: 25,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text('Add Tags:'),
        ),
        const SizedBox(
          height: 15,
          width: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SizedBox(
            width: 350,
            child: TextField(
              inputFormatters: [
                LengthLimitingTextInputFormatter(10),
              ],
              controller: controller,
              maxLines: 5,
              minLines: 1,
              cursorWidth: 33,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(
                        () {
                          if (controller.text.isNotEmpty) {
                            addedTags.add(controller.text);
                            controller.clear();
                            controller.text = '';
                          } else {}
                        },
                      );
                    },
                    icon: const Icon(
                      Icons.add,
                      color: Colors.black,
                    )),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: grey, width: 3),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 130,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Wrap(
              children: List.generate(
                addedTags.length,
                (index) => Container(
                  height: 50,
                  width: 140,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10.0, vertical: 7),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: grey,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        addedTags[index],
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            addedTags.remove(
                              addedTags[index],
                            );
                          });
                        },
                        icon: const Icon(Icons.close),
                      ),
                    ],
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
