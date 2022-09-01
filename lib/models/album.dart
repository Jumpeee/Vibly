import 'package:http/http.dart' as http;
import 'dart:convert' show jsonEncode;

import './albumposition.dart';
import './user.dart';

class Album {
  final String title;
  final User author;
  final String? description;
  final String? cover;
  final List<AlbumPosition>? albumPositions;
  final String? createdAt;
  final bool isPublic;
  final String? publicId;

  Album({
    required this.title,
    required this.author,
    this.description,
    this.cover,
    this.albumPositions,
    this.createdAt,
    this.isPublic = true,
    this.publicId,
  });

  Future<http.Response> get getAlbum {
    final url = Uri.parse("http://127.0.0.1:8000/album/$publicId");
    return http.get(url);
  }

  Future<http.Response> patchAlbum() {
    final url = Uri.parse("http://127.0.0.1:8000/album/$publicId");
    return http.patch(
      url,
      body: jsonEncode(
        {
          "title": title,
          "author": {
            "first_name": author.firstName,
            "last_name": author.lastName,
          },
          "description": description,
          "album_positions": albumPositions,
          "public": isPublic,
        },
      ),
    );
  }

  Future<http.Response> deleteAlbum() {
    final url = Uri.parse("http://127.0.0.1:8000/album/$publicId");
    return http.delete(url);
  }
}
