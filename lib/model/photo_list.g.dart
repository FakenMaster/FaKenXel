// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhotoList _$PhotoListFromJson(Map<String, dynamic> json) {
  return PhotoList(
    totalResults: json['total_results'] as int,
    page: json['page'] as int,
    perPage: json['per_page'] as int,
    photos: (json['photos'] as List)
        ?.map(
            (e) => e == null ? null : Photo.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    nextPage: json['next_page'] as String,
  );
}

Map<String, dynamic> _$PhotoListToJson(PhotoList instance) => <String, dynamic>{
      'total_results': instance.totalResults,
      'page': instance.page,
      'per_page': instance.perPage,
      'photos': instance.photos?.map((e) => e?.toJson())?.toList(),
      'next_page': instance.nextPage,
    };
