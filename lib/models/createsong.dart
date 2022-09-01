import './user.dart';

import 'package:dio/dio.dart' show FormData;
import 'package:http/http.dart' as http;
import 'dart:convert' show jsonEncode;
import 'package:intl/intl.dart' show DateFormat;

class CreateSong {
  final String? publicId;
  final String title;
  final User author;
  final FormData songFile;
  final double duration;
  final String cover;
  final bool isPublic;
  //Defaults to DateTime.now()
  final DateTime? createdAt;

  const CreateSong({
    this.publicId,
    required this.title,
    required this.author,
    required this.songFile,
    required this.duration,
    required this.cover,
    this.isPublic = true,
    this.createdAt,
  });

  Future<http.Response> addSong() async {
    final url = Uri.parse("http://127.0.0.1:8000/song/");
    final nowTime = DateFormat("y-M-d").format(DateTime.now());

    return http.post(
      url,
      headers: <String, String>{
        "Content-Type": "application/json; charset=UTF-8",
      },
      body: jsonEncode(
        {
          "author": {
            "username": author.username,
            "email": author.email,
            "first_name": author.firstName,
            "last_name": author.lastName,
            "pfp": author.profilePicture,
          },
          "song_file": songFile,
          "title": title,
          "duration": duration,
          "cover": cover,
          "public": isPublic,
          "created_at": createdAt ?? nowTime,
        },
      ),
    );
  }
}
