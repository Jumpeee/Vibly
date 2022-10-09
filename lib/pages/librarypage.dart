import 'package:flutter/material.dart';

import '../pages/uploadpage.dart';

///category imports related to [LibraryPage]
import '../pages/LibraryCategories/artists.dart';
import '../pages/LibraryCategories/songs.dart';
import '../pages/LibraryCategories/albums.dart';
import '../pages/LibraryCategories/playlists.dart';

typedef MSP = MaterialStateProperty;

class LibraryPage extends StatelessWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const UploadPage(),
            ),
          );
        },
        child: Container(
          width: 55,
          height: 55,
          margin: const EdgeInsets.only(bottom: 90, right: 20),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context).primaryColor,
          ),
          child: const Icon(
            Icons.upload,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: const Text(
          "My Library",
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).backgroundColor,
        shadowColor: Colors.black,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(2),
          child: Container(
            height: 2,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
      body: Column(
        children: [
          _libCategory(
            icon: Icons.person,
            caption: "Artists",
            onClick: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => const ArtistsCategory()),
                ),
              );
            },
            ctx: context,
          ),
          _libCategory(
            icon: Icons.music_note_outlined,
            caption: "Songs",
            onClick: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => const SongsCategory()),
                ),
              );
            },
            ctx: context,
          ),
          _libCategory(
            icon: Icons.album,
            caption: "Albums",
            onClick: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AlbumsCategory(),
                ),
              );
            },
            ctx: context,
          ),
          _libCategory(
            icon: Icons.playlist_play_rounded,
            caption: "Playlists",
            onClick: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PlaylistsCategory(),
                ),
              );
            },
            ctx: context,
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }

  Widget _libCategory({
    required IconData icon,
    required String caption,
    required VoidCallback onClick,
    required BuildContext ctx,
  }) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MSP.all(Colors.transparent),
        fixedSize: MSP.all(const Size(double.infinity, 70)),
        alignment: Alignment.centerLeft,
        elevation: MSP.all(0),
        padding: MSP.all(
          const EdgeInsets.only(
            left: 20,
          ),
        ),
      ),
      onPressed: onClick,
      child: Row(
        children: [
          Icon(
            icon,
            color: Theme.of(ctx).primaryColor,
            size: 32,
          ),
          const SizedBox(width: 20),
          Text(
            caption,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
