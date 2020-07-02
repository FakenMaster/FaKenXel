// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Video _$VideoFromJson(Map<String, dynamic> json) {
  return Video(
    id: json['id'] as int,
    width: json['width'] as int,
    height: json['height'] as int,
    url: json['url'] as String,
    image: json['image'] as String,
    fullRes: json['full_res'],
    tags: json['tags'] as List,
    duration: json['duration'] as int,
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
    videoFiles: (json['video_files'] as List)
        ?.map((e) =>
            e == null ? null : VideoFile.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    videoPictures: (json['video_pictures'] as List)
        ?.map((e) =>
            e == null ? null : VideoPicture.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$VideoToJson(Video instance) => <String, dynamic>{
      'id': instance.id,
      'width': instance.width,
      'height': instance.height,
      'url': instance.url,
      'image': instance.image,
      'full_res': instance.fullRes,
      'tags': instance.tags,
      'duration': instance.duration,
      'user': instance.user?.toJson(),
      'video_files': instance.videoFiles?.map((e) => e?.toJson())?.toList(),
      'video_pictures':
          instance.videoPictures?.map((e) => e?.toJson())?.toList(),
    };

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    id: json['id'] as int,
    name: json['name'] as String,
    url: json['url'] as String,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
    };

VideoFile _$VideoFileFromJson(Map<String, dynamic> json) {
  return VideoFile(
    id: json['id'] as int,
    quality: json['quality'] as String,
    fileType: json['fileType'] as String,
    width: json['width'] as int,
    height: json['height'] as int,
    link: json['link'] as String,
  );
}

Map<String, dynamic> _$VideoFileToJson(VideoFile instance) => <String, dynamic>{
      'id': instance.id,
      'quality': instance.quality,
      'fileType': instance.fileType,
      'width': instance.width,
      'height': instance.height,
      'link': instance.link,
    };

VideoPicture _$VideoPictureFromJson(Map<String, dynamic> json) {
  return VideoPicture(
    id: json['id'] as int,
    picture: json['picture'] as String,
    nr: json['nr'] as int,
  );
}

Map<String, dynamic> _$VideoPictureToJson(VideoPicture instance) =>
    <String, dynamic>{
      'id': instance.id,
      'picture': instance.picture,
      'nr': instance.nr,
    };
