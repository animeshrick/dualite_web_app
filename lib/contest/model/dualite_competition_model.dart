class DualiteContestModel {
  DualiteContestModel({
    this.id,
    this.name,
    this.videoTitle,
    this.email,
    this.category,
    this.contentOne,
    this.contentTwo,
  });

  int? id;
  String? name, videoTitle, email, category, contentOne, contentTwo;

  factory DualiteContestModel.fromJson(Map<String, dynamic> json) =>
      DualiteContestModel(
        id: json["id"],
        name: json["name"],
        videoTitle: json["video_title"],
        email: json["email"],
        category: json["category"],
        contentOne: json["content_one"],
        contentTwo: json["content_two"],
      );
}

class ContestModel {
  ContestModel({
    this.contentOneUploadUrl,
    this.contentTwoUploadUrl,
  });

  String? contentOneUploadUrl, contentTwoUploadUrl;

  factory ContestModel.fromJson(Map<String, dynamic> json) => ContestModel(
        contentOneUploadUrl: json["content_one_upload_url"],
        contentTwoUploadUrl: json["content_two_upload_url"],
      );
}

class ApiResponse {
  String? contentOneUploadUrl;
  String? contentTwoUploadUrl;

  ApiResponse({this.contentOneUploadUrl, this.contentTwoUploadUrl});

  ApiResponse.fromJson(Map<String, dynamic> json) {
    contentOneUploadUrl = json['content_one_upload_url'];
    contentTwoUploadUrl = json['content_two_upload_url'];
  }
}
