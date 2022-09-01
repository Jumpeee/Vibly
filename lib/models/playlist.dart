import './playlistsong.dart';
import './user.dart';

class Playlist {
  final String? publicId;
  final String title;
  final User? author;
  final List<PlaylistSong>? playlistSongs;
  final String? cover;
  final String? description;
  final bool isPublic;
  final String? createdAt;

  Playlist({
    this.publicId,
    this.playlistSongs,
    this.author,
    required this.title,
    this.cover,
    this.description,
    this.isPublic = true,
    this.createdAt,
  });
}
