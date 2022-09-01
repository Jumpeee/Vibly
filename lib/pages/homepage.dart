import 'package:flutter/material.dart';

import '../widgets/HomePage/categoryroll.dart';
import '../widgets/HomePage/welcomeheader.dart';
import '../widgets/HomePage/ItemRoll/itemroll.dart';
import '../widgets/HomePage/ItemRoll/playlistholder.dart';
import '../widgets/HomePage/ItemRoll/artistholder.dart';
import '../widgets/HomePage/ItemRoll/songholder.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    int selectedCategory = 0;
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const WelcomeHeader(),
            CategoryRoll(
              onSelect: (index) {
                selectedCategory = index;
              },
            ),
            const ItemRoll(
              caption: "Curated playlists",
              items: [
                PlaylistHolder(
                  caption: "Hip-Hop Mix",
                  description: "Travis Scott",
                ),
                PlaylistHolder(
                  caption: "Unkle: The main",
                  description: "Top hits of the group",
                ),
                PlaylistHolder(
                  caption: "Nie wiem co to dac",
                  description: "Tutaj tez nie wiem",
                ),
              ],
            ),
            const ItemRoll(
              caption: "Recently played",
              items: [
                SongHolder(
                  song: "Jezyk",
                  artist: "Oki",
                ),
                SongHolder(
                  song: "Jezyk",
                  artist: "Oki",
                ),
                SongHolder(
                  song: "Jezyk",
                  artist: "Oki",
                ),
                SongHolder(
                  song: "Jezyk",
                  artist: "Oki",
                ),
              ],
            ),
            const ItemRoll(
              caption: "Top artists",
              items: [
                ArtistHolder(
                  artist: "Travis Scott",
                ),
                ArtistHolder(
                  artist: "Travis Scott",
                ),
                ArtistHolder(
                  artist: "Travis Scott",
                ),
                ArtistHolder(
                  artist: "Travis Scott",
                ),
              ],
            ),
            const SizedBox(height: 200),
          ],
        ),
      ),
    );
  }
}
