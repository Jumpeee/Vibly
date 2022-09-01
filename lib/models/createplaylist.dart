import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' show jsonEncode;
import 'package:intl/intl.dart' show DateFormat;

import './createplaylistsong.dart';
import './user.dart';

class CreatePlaylist {
  final String? publicId;
  final User author;
  final List<CreatePlaylistSong>? playlistSongs;
  final String? title;
  final FormData? cover;
  final String? description;
  final bool isPublic;
  final String? createdAt;

  CreatePlaylist({
    this.publicId,
    required this.title,
    this.playlistSongs,
    required this.author,
    this.cover,
    this.description,
    this.isPublic = true,
    this.createdAt,
  });

  Future<http.Response> addPlaylist() {
    final url = Uri.parse("http://127.0.0.1:8000/playlist/");
    final nowTime = DateFormat("y-M-d").format(DateTime.now());

    return http.post(
      url,
      headers: <String, String>{
        "Content-Type": "application/json; charset=UTF-8",
      },
      body: jsonEncode({
        "title": title,
        "author": {
          "first_name": author.firstName,
          "last_name": author.lastName,
        },
        "playlist_songs": playlistSongs,
        "cover": cover,
        "description": description,
        "public": isPublic,
        "createdAt": nowTime,
      }),
    );
  }
}
