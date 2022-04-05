import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../const.dart';
import '../responsive.dart';
import '../web_view_pages/upload_web.dart';
import 'model/dualite_competition_model.dart';

class UploadContestMobile extends StatefulWidget {
  const UploadContestMobile({Key? key}) : super(key: key);

  @override
  _UploadContestMobileState createState() => _UploadContestMobileState();
}

class _UploadContestMobileState extends State<UploadContestMobile> {
  Color redColor = const Color(0xffec1c26);
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();

  TextEditingController videoTitle = TextEditingController();
  String videoCat = 'CATEGORY *';
  bool isStatic = false;
  String file1Name = "";
  String file2Name = "";
  String file3Name = "";
  String? videoUrl1, videoUrl2, v1, v2;
  File? f1, f2, _video;

  ContestModel? contest = ContestModel();
  late Future<ContestModel?> contest2;

  uploadVideo(
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
    debugPrint('resp $body');
    try {
      if (response.statusCode == 201) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Videos Uploaded'),
          backgroundColor: Colors.greenAccent,
        ));
        Future.delayed(
          const Duration(
            seconds: 3,
          ),
          () => Navigator.pop(context),
        );
        return resp;
      } else {
        throw response.body;
      }
    } catch (e) {
      debugPrint('err-$e');
      showToast(e, red);
      throw Exception('Failed to store video on MUX');
    }
  }

  Future<ContestModel?> v1put1({required String video1}) async {
    var headers = {'Content-Type': 'video/mp4'};
    var request = http.Request('PUT', Uri.parse(videoUrl1.toString()));
    request.body = video1;
    debugPrint('$video1 --video1');
    request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();
    debugPrint('resp code vid1 - ${response.statusCode}');
    if (response.statusCode == 200) {
      debugPrint("resp1 - ${response.stream.bytesToString()}");
    } else {
      debugPrint('err1 ${response.reasonPhrase}');
    }
    return null;
  }

  Future<ContestModel?> v2put2({required String video2}) async {
    var headers = {'Content-Type': 'video/mp4'};
    var request = http.Request('PUT', Uri.parse(videoUrl2.toString()));
    request.body = video2;
    debugPrint('$video2 --video2');
    request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();
    debugPrint('resp code  vid2- ${response.statusCode}');
    if (response.statusCode == 200) {
      debugPrint("resp2 - ${response.stream.bytesToString()}");
    } else {
      debugPrint('err2 ${response.reasonPhrase}');
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return ResponsiveWidget.isSmallScreen(context)
        ? Scaffold(
            body: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.fromLTRB(20, 30, 40, 0),
                // decoration: const BoxDecoration(
                //   image: DecorationImage(
                //     image: AssetImage("assets/web_competition/21.png"),
                //     fit: BoxFit.fill,
                //     opacity: 1,
                //   ),
                // ),
                child: Column(
                  children: [
                    /// texts
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'ENTER',
                          style: TextStyle(
                            color: redColor.withOpacity(0.3),
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Swiss 721 Black BT',
                          ),
                        ),
                        Text(
                          'ENTER',
                          style: TextStyle(
                            color: redColor.withOpacity(0.4),
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Swiss 721 Black BT',
                          ),
                        ),
                        Text(
                          'ENTER',
                          style: TextStyle(
                            color: redColor,
                            fontSize: 70,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Swiss 721 Black BT',
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'THE DUALITE\nCOMPETITION',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: redColor,
                            fontSize: 55,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Swiss 721 Black BT',
                          ),
                        ),
                      ],
                    ),

                    /// forms
                    Form(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          field(
                            controller: name,
                            hintText: 'YOUR NAME',
                            validator: (v) {
                              if (v!.isEmpty) {
                                return "NAME can't be empty";
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: screenSize.height * 0.03,
                          ),
                          field(
                            controller: email,
                            hintText: 'YOUR E-MAIL',
                            validator: (v) {
                              if (v!.isEmpty) {
                                return "E-MAIL can't be empty";
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: screenSize.height * 0.03,
                          ),
                          field(
                            controller: videoTitle,
                            hintText: 'Video Title',
                            validator: (v) {
                              if (v!.isEmpty) {
                                return "Video Title can't be empty";
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: screenSize.height * 0.03,
                          ),
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: red.withOpacity(0.2),
                              border: Border.all(color: red.withOpacity(0.2)),
                            ),
                            child: DropdownButton<String>(
                              isExpanded: true,
                              alignment: Alignment.topLeft,
                              value: videoCat,
                              dropdownColor: Colors.white,
                              style: const TextStyle(
                                color: red,
                              ),
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
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 12.0),
                                    child: Text(
                                      value,
                                      textAlign: TextAlign.start,
                                      style: const TextStyle(
                                          color: red, fontSize: 18),
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                          SizedBox(
                            height: screenSize.height * 0.03,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 50,
                                width: screenSize.width * 0.4,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: red.withOpacity(0.7),
                                  ),
                                  child: const Text('Interactive'),
                                  onPressed: () {
                                    setState(() {
                                      isStatic = false;
                                    });
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 50,
                                width: screenSize.width * 0.4,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: red.withOpacity(0.7),
                                  ),
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
                                      padding: EdgeInsets.only(top: 20.0),
                                      child: InkWell(
                                        onTap: () {
                                          staticVideo();
                                        },
                                        child: Container(
                                          height: 50,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: redColor),
                                          ),
                                          child: file3Name == ""
                                              ? Center(
                                                  child: Text(
                                                    'CHOOSE FILE TO PREVIEW',
                                                    style: TextStyle(
                                                        color: redColor),
                                                  ),
                                                )
                                              : Center(
                                                  child: Text(
                                                  file3Name,
                                                  style: TextStyle(
                                                      color: redColor),
                                                )),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        // Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(builder: (_) {
                                        //     return HtmlPage(
                                        //       title: 'x',
                                        //     );
                                        //   }),
                                        // );
                                      },
                                      child: Container(
                                        height: 50,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        //padding: const EdgeInsets.only(left: 30),
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.topRight,
                                            end: Alignment.bottomLeft,
                                            colors: [
                                              red,
                                              redColor.withOpacity(0.2)
                                            ],
                                          ),
                                        ),
                                        child: const Center(
                                            child: Text(
                                          'PREVIEW',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                    ),
                                  ],
                                ),
                          const SizedBox(height: 20),
                          isStatic
                              ? SizedBox()
                              : InkWell(
                                  onTap: () {
                                    pickVideo1();
                                  },
                                  child: Container(
                                    height: 50,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: redColor),
                                    ),
                                    child: file1Name == ""
                                        ? Center(
                                            child: Text(
                                              'CHOOSE FILE ONE',
                                              style: TextStyle(color: redColor),
                                            ),
                                          )
                                        : Center(
                                            child: Text(
                                            v1.toString(),
                                            style: TextStyle(color: red),
                                          )),
                                  ),
                                ),
                          // ---------- file 2
                          isStatic
                              ? SizedBox()
                              : Padding(
                                  padding: EdgeInsets.only(top: 20.0),
                                  child: InkWell(
                                    onTap: () {
                                      pickVideo2();
                                    },
                                    child: Container(
                                      height: 50,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: red),
                                      ),
                                      child: file2Name == ""
                                          ? const Center(
                                              child: Text(
                                                'CHOOSE FILE TWO',
                                                style: TextStyle(color: red),
                                              ),
                                            )
                                          : Center(
                                              child: Text(
                                              v2.toString(),
                                              style: TextStyle(color: red),
                                            )),
                                    ),
                                  ),
                                ),
                          const SizedBox(height: 30),
                          isStatic
                              ? SizedBox()
                              : const Text(
                                  'Why Upload two videos?',
                                  style: TextStyle(color: red),
                                ),
                          const SizedBox(height: 10),
                          isStatic
                              ? SizedBox()
                              : InkWell(
                                  onTap: () async {
                                    var x = await uploadVideo(
                                      cat: videoCat,
                                      email: email.text,
                                      name: name.text,
                                      videoTitle: videoTitle.text,
                                    );
                                    v1put1(video1: file1Name);
                                    v2put2(video2: file2Name);
                                  },
                                  child: Container(
                                    color: red,
                                    height: 50,
                                    width: screenSize.width,
                                    child: const Center(
                                        child: Text(
                                      'UPLOAD',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24,
                                      ),
                                    )),
                                  ),
                                ),
                          const SizedBox(height: 30),
                          SizedBox(
                            width: 400,
                            child: Text(
                              "By clicking upload, i hereby agree and adhere to the rules and regulations that have been provided under the\nDUALITE COMPETITION Rules",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: redColor,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          const SizedBox(height: 30),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        : UploadContestWeb();
  }

  Widget field({
    required TextEditingController? controller,
    required String hintText,
    required String? Function(String?)? validator,
  }) {
    var screenSize = MediaQuery.of(context).size;
    return TextFormField(
      validator: validator,
      controller: controller,
      style: const TextStyle(color: red),
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        fillColor: red.withOpacity(0.2),
        filled: true,
        labelStyle: const TextStyle(fontSize: 20, color: red),
        hintStyle: const TextStyle(
          color: red,
          fontSize: 20,
        ),
        hintText: hintText,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: red.withOpacity(0.2),
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: red.withOpacity(0.2),
            width: 1.0,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: red.withOpacity(0.2),
            width: 1.0,
          ),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: red,
            width: 1.0,
          ),
        ),
      ),
    );
  }

  pickVideo1() async {
    FilePickerResult? result =
        await FilePicker.platform.pickFiles(type: FileType.video);
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
    FilePickerResult? result =
        await FilePicker.platform.pickFiles(type: FileType.video);
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
        file3Name = result.files.first.name;
        var base64Bytes = result.files.first.bytes.toString();
        final decodedBytes = base64.decoder.convert(base64Bytes);
        debugPrint('d3 --->${decodedBytes.first}');
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
