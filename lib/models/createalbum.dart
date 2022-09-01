import './createalbumposition.dart';
import './user.dart';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' show jsonEncode;

class CreateAlbum {
  final String title;
  final User author;
  final String? description;
  final FormData? cover;
  final List<CreateAlbumPosition>? albumPositions;
  final String? createdAt;
  final bool? isPublic;
  final String? publicId;

  CreateAlbum({
    required this.title,
    required this.author,
    this.description,
    this.cover,
    this.albumPositions,
    this.createdAt,
    this.isPublic,
    this.publicId,
  });

  Future<http.Response> addAlbum() async {
    final url = Uri.parse("http://127.0.0.1:8000/album/");

    return http.post(
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
}
