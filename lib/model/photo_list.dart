import 'package:json_annotation/json_annotation.dart';

import 'photo.dart';
part 'photo_list.g.dart';

@JsonSerializable(explicitToJson: true)
class PhotoList {
  @JsonKey(name: 'total_results')
  int totalResults;
  int page;
  @JsonKey(name: 'per_page')
  int perPage;
  List<Photo> photos;
  @JsonKey(name: 'next_page')
  String nextPage;

  PhotoList({
    this.totalResults,
    this.page,
    this.perPage,
    this.photos,
    this.nextPage,
  });

  factory PhotoList.fromJson(Map<String, dynamic> json) =>
      _$PhotoListFromJson(json);

  Map<String, dynamic> toJson() => _$PhotoListToJson(this);
}
