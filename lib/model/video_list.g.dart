// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VideoList _$VideoListFromJson(Map<String, dynamic> json) {
  return VideoList(
    page: json['page'] as int,
    perPage: json['per_page'] as int,
    totalResults: json['total_results'] as int,
    url: json['url'] as String,
    videos: (json['videos'] as List)
        ?.map(
            (e) => e == null ? null : Video.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$VideoListToJson(VideoList instance) => <String, dynamic>{
      'page': instance.page,
      'per_page': instance.perPage,
      'total_results': instance.totalResults,
      'url': instance.url,
      'videos': instance.videos?.map((e) => e?.toJson())?.toList(),
    };
