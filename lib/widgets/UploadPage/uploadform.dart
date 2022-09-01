import 'package:flutter/material.dart';

import 'choosesongbutton.dart';
import './thumbnailupload.dart';

typedef MSP = MaterialStateProperty;

class UploadForm extends StatelessWidget {
  const UploadForm({Key? key}) : super(key: key);

  static var titleController = TextEditingController();
  static var authorsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var defaultTextStyle = const TextStyle(color: Colors.white, fontSize: 16);
    var textFieldTextStyle = const TextStyle(
      color: Colors.white,
      fontSize: 18,
    );
    var textFieldDeco = const InputDecoration(
      border: InputBorder.none,
      contentPadding: EdgeInsets.symmetric(horizontal: 15),
    );

    var containerMargin = const EdgeInsets.only(top: 5, bottom: 20);
    var defaultContainerDeco = BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      border: Border.all(color: Colors.white, width: 2),
      color: Colors.transparent,
    );

    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 30),

          ///input field for [Title]
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Title",
              style: defaultTextStyle,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: defaultContainerDeco,
            margin: containerMargin,
            child: TextField(
              controller: titleController,
              decoration: textFieldDeco,
              style: textFieldTextStyle,
            ),
          ),

          ///input field for [Authors]
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Authors",
              style: defaultTextStyle,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: defaultContainerDeco,
            margin: containerMargin,
            child: TextField(
              controller: authorsController,
              decoration: textFieldDeco,
              style: textFieldTextStyle,
            ),
          ),

          const ChooseSongButton(),
          const ThumbnailUpload(),

          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Center(
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: Theme.of(context).primaryColor,
                child: const Icon(
                  Icons.check,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
