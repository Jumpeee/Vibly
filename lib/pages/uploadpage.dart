import 'package:flutter/material.dart';

import '../widgets/UploadPage/uploadform.dart';

class UploadPage extends StatelessWidget {
  const UploadPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(2),
          child: Container(
            height: 2,
            color: Theme.of(context).primaryColor,
          ),
        ),
        centerTitle: true,
        title: const Text(
          "Upload file",
          style: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: const [
              UploadForm(),
            ],
          ),
        ),
      ),
    );
  }
}
