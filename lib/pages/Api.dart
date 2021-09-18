import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

import 'package:youtube_clone_flutter_app/models/Video.dart';

const API_YOUTUBE_KEY = "";
const CHANNEL_ID = "";
const BASE_URL = "https://www.googleapis.com/youtube/v3/";

class Api {
  Future<List<Video>> search(String? query) async {
    http.Response response = await http.get(Uri.parse(BASE_URL +
        "search"
            "?part=snippet"
            "&type=video"
            "&maxResults=20"
            "&order=date"
            "&key=$API_YOUTUBE_KEY"
            "&channelId=$CHANNEL_ID"
            "&q=$query"));
    //if (response.statusCode == 200) {
    Map<String, dynamic> jsonData = json.decode(response.body);
    List<Video> videos = jsonData["items"].map<Video>((map) {
      return Video.fromJson(map);
    }).toList();

    return videos;
    //}
  }
}
