import 'package:http/http.dart' as http;
import 'dart:convert' show jsonEncode;

import './album.dart';
import './song.dart';

class CreateAlbumPosition {
  final Song song;
  final int? order;
  final String? songPk;

  CreateAlbumPosition({
    required this.song,
    this.order,
    this.songPk,
  });

  Future<http.Response> addAlbumPosition(Album album) {
    final url = Uri.parse("http://127.0.0.1:8000/${album.publicId}/order");

    return http.post(
      url,
      body: jsonEncode(
        {
          "song": {
            "title": song.title,
            "author": {
              "first_name": song.author.firstName,
              "last_name": song.author.lastName,
            },
            "public": song.isPublic,
          },
          "order": order,
          "song_pk": songPk,
        },
      ),
    );
  }
}
