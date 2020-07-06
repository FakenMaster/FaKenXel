import 'package:FaKenXel/model/model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'video_list.g.dart';

@JsonSerializable(explicitToJson: true)
class VideoList {
  int page;
  @JsonKey(name: 'per_page')
  int perPage;
  @JsonKey(name: 'total_results')
  int totalResults;
  String url;
  List<Video> videos;

  VideoList({
    this.page,
    this.perPage,
    this.totalResults,
    this.url,
    this.videos,
  });

  factory VideoList.fromJson(Map<String, dynamic> json) =>
      _$VideoListFromJson(json);

  Map<String, dynamic> toJson() => _$VideoListToJson(this);
}
