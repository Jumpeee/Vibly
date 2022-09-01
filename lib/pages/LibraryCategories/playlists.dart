import 'package:flutter/material.dart';

class PlaylistsCategory extends StatelessWidget {
  const PlaylistsCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: const Text(
          "Playlists",
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
      body: ListView(
        children: const [],
      ),
    );
  }
}
