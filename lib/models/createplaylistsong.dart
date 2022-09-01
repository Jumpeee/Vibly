import './song.dart';

class CreatePlaylistSong {
  final Song? song;
  final int songPk;
  final int? order;

  CreatePlaylistSong({
    this.song,
    required this.songPk,
    this.order,
  });
}
