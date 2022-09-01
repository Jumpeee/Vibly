import 'package:flutter/material.dart';

class ArtistHolder extends StatelessWidget {
  final String artist;
  const ArtistHolder({
    required this.artist,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 130,
        width: 105,
        margin: const EdgeInsets.only(right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 105,
              width: 105,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/songcover.jpg"),
                ),
              ),
            ),
            const SizedBox(height: 3),
            Center(
              child: Text(
                artist,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
