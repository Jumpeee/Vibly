import './user.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' show jsonEncode;

class Song {
  final int? publicId;
  final String title;
  final User author;
  final String? songFile;
  final double? duration;
  final String? cover;
  final bool isPublic;
  final String? createdAt;

  Song({
    this.publicId,
    required this.title,
    required this.author,
    this.songFile,
    this.duration,
    this.cover,
    this.isPublic = true,
    this.createdAt,
  });

  Future<http.Response> get getSong {
    final url = Uri.parse("http://127.0.0.1:8000/song/$publicId");

    return http.get(url);
  }

  Future<http.Response> patchSong() {
    final url = Uri.parse("http://127.0.0.1:8000/song/$publicId");

    return http.patch(
      url,
      body: jsonEncode(
        {
          "title": title,
          "author": {
            author.firstName,
            author.lastName,
          },
          "public": isPublic,
        },
      ),
    );
  }

  Future<http.Response> deleteSong() {
    final url = Uri.parse("http://127.0.0.1:8000/song/$publicId");

    return http.delete(url);
  }
}
