import './song.dart';

class PlaylistSong {
  final Song? song;
  final int? order;
  final int? songPk;

  PlaylistSong({
    this.song,
    this.order,
    this.songPk,
  });
}
