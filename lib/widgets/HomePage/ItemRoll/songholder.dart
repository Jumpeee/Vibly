import 'package:flutter/material.dart';

import 'package:vibly/pages/songpage.dart';

class SongHolder extends StatelessWidget {
  final String song;
  final String artist;
  const SongHolder({
    required this.song,
    required this.artist,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SongPage(),
          ),
        );
      },
      child: Container(
        height: 146,
        width: 105,
        margin: const EdgeInsets.only(right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 105,
              width: 105,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/songcover.jpg"),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    const SizedBox(height: 3),
                    Text(
                      song,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      artist,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 140, 140, 140),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
