import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

import '../const.dart';
import '../custom_drawer.dart';
import '../responsive.dart';
import '../web_view_pages/competition_page_web.dart';
import 'model/dualite_competition_model.dart';

class ContestPage extends StatefulWidget {
  const ContestPage({Key? key}) : super(key: key);

  @override
  _ContestPageState createState() => _ContestPageState();
}

class _ContestPageState extends State<ContestPage> {
  String videoCat = 'CATEGORY *';
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController videoTitle = TextEditingController();
  String file1Name = "";
  String file2Name = "";
  String file3Name = "";
  String? videoUrl1, videoUrl2, v1, v2;
  File? f1, f2, _video;
  ImagePicker picker = ImagePicker();
  VideoPlayerController? _videoPlayerController;
  bool isStatic = false;
  ContestModel? contest = ContestModel();
  late Future<ContestModel?> contest2;
  bool active = true;
  Future<dynamic> uploadVideo(
      {required String name,
      required String videoTitle,
      required String email,
      required String cat}) async {
    var response = await http.post(
      Uri.parse('https://dualite.xyz/api/v1/videos/contest/'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'name': name,
        'email': email,
        'video_title': videoTitle,
        'category': cat,
      }),
    );
    var body = response.body;
    var resp = jsonDecode(body);
    ApiResponse resp2 = ApiResponse.fromJson(resp);

    videoUrl1 = resp2.contentOneUploadUrl;
    videoUrl2 = resp2.contentTwoUploadUrl;

    debugPrint('videourl - $videoUrl1 $videoUrl2');
    debugPrint('resp $body');
    try {
      if (response.statusCode == 201) {
        showToast('Video uploaded !!!', Colors.green);
        return resp;
      } else {
        throw response.body;
      }
    } catch (e) {
      debugPrint('err-$e');
      showToast(e, red);
      throw Exception('Failed to store video');
    }
  }

  // Future<ContestModel?> postContestVideo1({required String video1}) async {
  //   Map<String, dynamic> data = {
  //     'content_one_upload_url': video1,
  //   };
  //   final response = await http.put(
  //     Uri.parse(videoUrl1.toString()), body: video1,
  //     headers: <String, String>{
  //       'Content-Type': 'video/quicktime',
  //     },
  //     // headers: <String, String>{
  //     //   'Content-Type': 'application/json',
  //     //   'Charset': 'utf-8'
  //     // },
  //   );
  //   // var resp = response.body;
  //   var body = response.body;
  //   var resp = jsonDecode(body);
  //   debugPrint('contestApiUrl 1 ----> $resp  $data ${response.statusCode}');
  //   try {
  //     // if (response.statusCode == 201) {
  //     final myResponse = ContestModel.fromJson(jsonDecode(resp));
  //     return myResponse;
  //     // } else {
  //     //   throw response.body;
  //     // }
  //   } on SocketException {
  //     showToast(internetError, red);
  //     throw internetError;
  //   }
  // }
  // Future<ContestModel?> postContestVideo2({required String video2}) async {
  //   Map<String, dynamic> data = {
  //     'content_two_upload_url': video2,
  //   };
  //   final response = await http.put(
  //     Uri.parse(videoUrl2.toString()), body: video2,
  //     headers: <String, String>{
  //       'Content-Type': 'video/quicktime',
  //     },
  //     // headers: <String, String>{
  //     //   'Content-Type': 'application/json',
  //     //   'Charset': 'utf-8'
  //     // },
  //   );
  //   // var resp = response.body;
  //   var body = response.body;
  //   var resp = jsonDecode(body);
  //   debugPrint('contestApiUrl 2 ----> $resp  $data ${response.statusCode}');
  //   try {
  //     // if (response.statusCode == 201) {
  //     final myResponse = ContestModel.fromJson(jsonDecode(resp));
  //     return myResponse;
  //     // } else {
  //     //   throw response.body;
  //     // }
  //   } on SocketException {
  //     showToast(internetError, red);
  //     throw internetError;
  //   }
  // }

  Future<ContestModel?> v1put1({required String video1}) async {
    var headers = {'Content-Type': 'video/mp4'};
    var request = http.Request('PUT', Uri.parse(videoUrl1.toString()));
    request.body = video1;
    request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();
    if (response.statusCode == 200) {
      showToast('Video 1 Uploaded', Colors.green);
    } else {
      showToast('Video 1 Upload failed', Colors.red);
    }
    return null;
  }

  Future<ContestModel?> v2put2({required String video2}) async {
    var headers = {'Content-Type': 'video/mp4'};
    var request = http.Request('PUT', Uri.parse(videoUrl2.toString()));
    request.body = video2;
    request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();
    if (response.statusCode == 200) {
      showToast('Video 2 Uploaded', Colors.green);
    } else {
      showToast('Video 2 Upload failed', Colors.red);
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? SafeArea(
            child: Scaffold(
              backgroundColor: primaryColor,
              endDrawer: NavDraw(),
              appBar: AppBar(
                elevation: 0,
                iconTheme: const IconThemeData(
                  color: red,
                ), // color will chnage
                leading: Image.asset(
                  logo,
                  color: Colors.white,
                ), //icon will change
                backgroundColor: Colors.grey[800],
              ),
              body: Container(
                constraints: const BoxConstraints.expand(),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/bg.png",
                        ),
                        fit: BoxFit.cover)),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, right: 10),
                    child: Column(
                      children: [
                        const Text(
                          '  THE DUALITE COMPETITION',
                          style: TextStyle(
                            fontSize: 55,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              'ENTER',
                              style: TextStyle(
                                fontSize: 55,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                        const Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              'ENTER',
                              style: TextStyle(
                                fontSize: 55,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                        const Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              'ENTER',
                              style: TextStyle(
                                fontSize: 55,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            )),

                        // ---------- name
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 60, right: 35, top: 5),
                          child: TextFormField(
                            controller: name,
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              hintText: "ENTER YOUR NAME",
                              labelStyle: const TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                              hintStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.white,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(
                                  5,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.white,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(
                                  5,
                                ),
                              ),
                              disabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.white,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(
                                  5,
                                ),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.white,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(
                                  5,
                                ),
                              ),
                            ),
                          ),
                        ),
                        // ---------- email
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 60, right: 35, top: 15),
                          child: TextFormField(
                            controller: email,
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                              labelStyle:
                                  TextStyle(fontSize: 20, color: Colors.white),
                              hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                              hintText: "ENTER YOUR EMAIL",
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.0,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.0,
                                ),
                              ),
                              disabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.0,
                                ),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        // ---------- video title
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 60, right: 35, top: 15),
                          child: TextFormField(
                            controller: videoTitle,
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                              labelStyle:
                                  TextStyle(fontSize: 20, color: Colors.white),
                              hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                              hintText: "ENTER VIDEO TITLE",
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.0,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.0,
                                ),
                              ),
                              disabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.0,
                                ),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        // ---------- category
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 60, right: 35, top: 15),
                          child: Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                            ),
                            child: DropdownButton<String>(
                              isExpanded: true,
                              value: videoCat,
                              dropdownColor: Color(0xff452578),
                              style: const TextStyle(color: Colors.white),
                              underline: const SizedBox(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  videoCat = newValue!;
                                });
                              },
                              items: <String>[
                                'CATEGORY *',
                                'FILM',
                                'MUSIC',
                                'DANCE',
                                'MISC'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        value,
                                        // style: const TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const SizedBox(
                              width: 60,
                            ),
                            SizedBox(
                              height: 50,
                              width: 160,
                              child: ElevatedButton(
                                child: const Text('Interective'),
                                onPressed: () {
                                  setState(() {
                                    isStatic = false;
                                  });
                                },
                              ),
                            ),
                            const SizedBox(
                              width: 70,
                            ),
                            SizedBox(
                              height: 50,
                              width: 160,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(),
                                child: const Text('Static'),
                                onPressed: () {
                                  setState(() {
                                    isStatic = true;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        !isStatic
                            ? SizedBox()
                            : Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 60, right: 35, top: 15),
                                    child: InkWell(
                                      onTap: () {
                                        staticVideo();
                                      },
                                      child: Container(
                                        height: 50,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.white),
                                        ),
                                        child: file3Name == ""
                                            ? const Center(
                                                child: Text(
                                                  'CHOOSE FILE TO PREVIEW',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              )
                                            : Center(
                                                child: Text(
                                                file3Name,
                                                style: TextStyle(
                                                    color: Colors.white),
                                              )),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    height: 50,
                                    width: MediaQuery.of(context).size.width *
                                        0.85,
                                    padding: const EdgeInsets.only(left: 30),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: Color(0xff462c85)),
                                      child: const Text('PREVIEW'),
                                      onPressed: () {},
                                    ),
                                  ),
                                ],
                              ),
                        const SizedBox(height: 10),
                        isStatic
                            ? SizedBox()
                            : Padding(
                                padding: const EdgeInsets.only(
                                    left: 60, right: 35, top: 15),
                                child: InkWell(
                                  onTap: () {
                                    pickVideo1();
                                  },
                                  child: Container(
                                    height: 50,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                    ),
                                    child: file1Name == ""
                                        ? const Center(
                                            child: Text(
                                              'CHOOSE FILE ONE',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          )
                                        : Center(
                                            child: Text(
                                            v1.toString(),
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                  ),
                                ),
                              ),
                        // ---------- file 2
                        isStatic
                            ? SizedBox()
                            : Padding(
                                padding: const EdgeInsets.only(
                                    left: 60, right: 35, top: 15),
                                child: InkWell(
                                  onTap: () {
                                    pickVideo2();
                                  },
                                  child: Container(
                                    height: 50,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                    ),
                                    child: file2Name == ""
                                        ? const Center(
                                            child: Text(
                                              'CHOOSE FILE TWO',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          )
                                        : Center(
                                            child: Text(
                                            v2.toString(),
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                  ),
                                )),
                        const SizedBox(height: 10),
                        isStatic
                            ? const SizedBox()
                            : TextButton(
                                onPressed: () async {
                                  // networkCallService.postContestApiCall(
                                  //   email: email.text,
                                  //   name: name.text,
                                  //   videoCat: videoCat,
                                  //   videoTitle: videoTitle.text,
                                  // );
                                  // if (videoUrl1 != null && videoUrl2 != null) {
                                  final x = await uploadVideo(
                                    cat: videoCat,
                                    email: email.text,
                                    name: name.text,
                                    videoTitle: videoTitle.text,
                                  );
                                  v1put1(video1: file1Name);
                                  v2put2(video2: file2Name);
                                  // } else {
                                  //   showToast('Something went wrong', red);
                                  // }
                                },
                                child: const Text(
                                  "UPLOAD",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                        const SizedBox(height: 10),
                        const SizedBox(
                          width: 350,
                          child: Text(
                            "By clicking upload, i hereby agree and adhere to the rules and regulations that have been provided under the DUALITE COMPETITION Rules",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        : CompetitionPageWeb();
  }

  pickVideo1() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      setState(() {
        file1Name = result.files.single.bytes.toString();
        v1 = result.files.first.name;
        debugPrint('$file1Name $v1 d1 -- ');
      });
    } else {
      showToast('FILE NOT PICKED', Colors.red);
    }
  }

  pickVideo2() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      setState(() {
        file2Name = result.files.single.bytes.toString();
        v2 = result.files.first.name;
        debugPrint('$file2Name $v2 d2 -- ');
      });
    } else {
      showToast('FILE NOT PICKED', Colors.red);
    }
  }

  staticVideo() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['mp4'],
    );
    if (result != null) {
      setState(() {
        File file = File(result.files.single.path.toString());
        file3Name = result.files.first.name;
        debugPrint('d3 -- $file3Name name $file');
      });
      // if (file3Name.isNotEmpty) {
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (_) => StaticContestVideo(
      //         staticVideoFile: null,
      //       ),
      //     ),
      //   );
      // }
    } else {
      showToast('FILE NOT PICKED', Colors.red);
    }
  }
}
