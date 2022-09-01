import 'package:flutter/material.dart';

class ArtistsCategory extends StatelessWidget {
  const ArtistsCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: const Text(
          "Artists",
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).backgroundColor,
        shadowColor: Colors.black,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(2),
          child: Container(
            height: 2,
            color: Theme.of(context).bottomAppBarColor,
          ),
        ),
      ),
      body: Wrap(
        children: const [],
      ),
    );
  }
}
