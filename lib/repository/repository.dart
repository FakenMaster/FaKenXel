import 'package:FaKenXel/repository/remote/rest_client.dart';
import 'package:dio/dio.dart';
import 'package:FaKenXel/model/model.dart';
import 'package:flutter/rendering.dart';
import 'package:get_it/get_it.dart';

/// 有没有一个方法调用另一个方法，参数一样的情况下，像返回类一样调用函数呢？
class Repository {
  Repository() {
    GetIt.I.registerLazySingleton(
      () => FaKenXelClient(
        Dio(
          BaseOptions(headers: {
            'Authorization':
                ' 563492ad6f91700001000001ed1f996f99b94c2f82757063e6b08487'
          }),
        ),
      ),
    );
  }

  FaKenXelClient get restClient {
    return GetIt.I<FaKenXelClient>();
  }

  Future<PhotoList> searchPhotos(String query,
      {String locale, int perPage, int page}) async {
    return await restClient.searchPhotos(query,
        locale: locale, perPage: perPage ?? 20, page: page ?? 1);
  }

  Future<PhotoList> curatedPhotos({
    int perPage,
    int page,
  }) async {
    return await restClient.curatedPhotos(
        perPage: perPage ?? 20, page: page ?? 1);
  }

  Future<Photo> photo(String id) async {
    return await restClient.photo(id);
  }

  Future<VideoList> searchVideos(String query,
      {int perPage,
      int page,
      int minWidth,
      int minHeight,
      int minDuration,
      int maxDuration}) async {
    return await restClient.searchVideos(query,
        perPage: perPage ?? 20,
        page: page ?? 1,
        minWidth: minWidth,
        minHeight: minHeight,
        minDuration: minDuration,
        maxDuration: maxDuration);
  }

  Future<VideoList> popularVideos(
      {int perPage,
      int page,
      int minWidth,
      int minHeight,
      int minDuration,
      int maxDuration}) async {
    return await restClient.popularVideos(
      perPage: perPage,
    );
  }

  Future<Video> video(String id) async {
    return await restClient.video(id);
  }
}
