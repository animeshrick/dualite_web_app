import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart' show Client;

import '../../base_client.dart';
import '../../const.dart';
import '../model/dualite_competition_model.dart';

class NetworkCall {
  static final NetworkCall networkCall = NetworkCall._internal();

  NetworkCall._internal();

  factory NetworkCall() {
    return networkCall;
  }

  final String contestApiUrl = "$baseUrl/videos/contest/";
  final _client = Client();

  // uploadVideo(String name, String videoTitle, String email) async {
  //   var response = await http.post(
  //     Uri.parse('https://dualite.xyz/api/v1/videos/contest/'),
  //     headers: <String, String>{
  //       'Content-Type': 'application/json; charset=UTF-8',
  //     },
  //     body: jsonEncode(<String, String>{
  //       'name': name,
  //       'email': 'rohan1234@email.com',
  //       'video_title': videoTitle,
  //       'category': 'FILM'
  //     }),
  //   );
  //   var body = jsonDecode(response.body);
  //   print(body);
  //   print("Upload video !!!");
  //   return response.body;
  // }

  Future<ContestModel?> postContestApiCall({
    required String name,
    required String email,
    required String videoTitle,
    required String videoCat,
  }) async {
    Map<String, dynamic> data = {
      'name': name,
      'video_title': videoTitle,
      'email': email,
      'category': videoCat,
    };
    final response = await MyClient().post(
      Uri.parse(contestApiUrl),
      body: data,
       headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    var resp = response.body;
    debugPrint('contestApiUrl -->  $contestApiUrl --> $resp  $data');
    try {
      if (response.statusCode == 201) {
        final myResponse = ContestModel.fromJson(jsonDecode(resp));
        return myResponse;
      } else {
        throw response.body;
      }
    } on SocketException {
      showToast(internetError, red);
      throw internetError;
    }
  }
}

class Final {}

NetworkCall networkCallService = NetworkCall();
