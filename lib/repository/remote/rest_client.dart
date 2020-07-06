import 'package:FaKenXel/model/model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: 'https://api.pexels.com')
abstract class FaKenXelClient {
  factory FaKenXelClient(Dio dio, {String baseUrl}) = _FaKenXelClient;

  @GET("/v1/search")
  Future<PhotoList> searchPhotos(@Query('query') String query,
      {@Query('locale') String locale,
      @Query('per_page') int perPage,
      @Query('page') int page});

  @GET('/v1/curated')
  Future<PhotoList> curatedPhotos(
      {@Query('per_page') int perPage, @Query('page') int page});

  @GET('/v1/photos/{id}')
  Future<Photo> photo(@Path('id') String id);

  @GET("/videos/search")
  Future<VideoList> searchVideos(@Query('query') String query,
      {@Query('per_page') int perPage,
      @Query('page') int page,
      @Query('min_width') int minWidth,
      @Query('min_height') int minHeight,
      @Query('min_duration') int minDuration,
      @Query('max_duration') int maxDuration});

  @GET('/videos/popular')
  Future<VideoList> popularVideos(
      {@Query('per_page') int perPage,
      @Query('page') int page,
      @Query('min_width') int minWidth,
      @Query('min_height') int minHeight,
      @Query('min_duration') int minDuration,
      @Query('max_duration') int maxDuration});

  @GET('/videos/videos/{id}')
  Future<Video> video(@Path('id') String id);
}
