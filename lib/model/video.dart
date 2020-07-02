import 'package:json_annotation/json_annotation.dart';

part 'video.g.dart';

@JsonSerializable(explicitToJson: true)
class Video {
  int id;
  int width;
  int height;
  String url;
  String image;
  @JsonKey(name: 'full_res')
  dynamic fullRes;
  List<dynamic> tags;
  int duration;
  User user;
  @JsonKey(name: 'video_files')
  List<VideoFile> videoFiles;
  @JsonKey(name: 'video_pictures')
  List<VideoPicture> videoPictures;

  Video({
    this.id,
    this.width,
    this.height,
    this.url,
    this.image,
    this.fullRes,
    this.tags,
    this.duration,
    this.user,
    this.videoFiles,
    this.videoPictures,
  });

  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);

  Map<String, dynamic> toJson() => _$VideoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class User {
  int id;
  String name;
  String url;

  User({
    this.id,
    this.name,
    this.url,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class VideoFile {
  int id;
  String quality;
  String fileType;
  int width;
  int height;
  String link;

  VideoFile({
    this.id,
    this.quality,
    this.fileType,
    this.width,
    this.height,
    this.link,
  });

  factory VideoFile.fromJson(Map<String, dynamic> json) =>
      _$VideoFileFromJson(json);

  Map<String, dynamic> toJson() => _$VideoFileToJson(this);
}

@JsonSerializable(explicitToJson: true)
class VideoPicture {
  int id;
  String picture;
  int nr;

  VideoPicture({
    this.id,
    this.picture,
    this.nr,
  });

  factory VideoPicture.fromJson(Map<String, dynamic> json) =>
      _$VideoPictureFromJson(json);

  Map<String, dynamic> toJson() => _$VideoPictureToJson(this);
}
