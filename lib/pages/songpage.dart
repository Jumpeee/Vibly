import 'package:flutter/material.dart';

import 'package:blur/blur.dart';
import 'package:vibly/widgets/SongPage/musiccontroller.dart';
import '../widgets/SongPage/topbar.dart';
import '../widgets/SongPage/mainbox.dart';

class SongPage extends StatelessWidget {
  const SongPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        children: [
          Blur(
            blur: 16,
            blurColor: Colors.black,
            alignment: Alignment.topCenter,
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                "assets/images/cool.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
              width: double.infinity,
              height: double.infinity,
              alignment: Alignment.center,
              padding: const EdgeInsets.only(
                top: 50,
                left: 10,
                right: 10,
              ),
              child: Column(
                children: const [
                  TopBar(),
                  SizedBox(height: 20),
                  MainBox(),
                  MusicController(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
