// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _FaKenXelClient implements FaKenXelClient {
  _FaKenXelClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    this.baseUrl ??= 'https://api.pexels.com';
  }

  final Dio _dio;

  String baseUrl;

  @override
  searchPhotos(query, {locale, perPage, page}) async {
    ArgumentError.checkNotNull(query, 'query');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'query': query,
      r'locale': locale,
      r'per_page': perPage,
      r'page': page
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/v1/search',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = PhotoList.fromJson(_result.data);
    return value;
  }

  @override
  curatedPhotos({perPage, page}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'per_page': perPage,
      r'page': page
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/v1/curated',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = PhotoList.fromJson(_result.data);
    return value;
  }

  @override
  photo(id) async {
    ArgumentError.checkNotNull(id, 'id');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/v1/photos/$id',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = Photo.fromJson(_result.data);
    return value;
  }

  @override
  searchVideos(query,
      {perPage, page, minWidth, minHeight, minDuration, maxDuration}) async {
    ArgumentError.checkNotNull(query, 'query');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'query': query,
      r'per_page': perPage,
      r'page': page,
      r'min_width': minWidth,
      r'min_height': minHeight,
      r'min_duration': minDuration,
      r'max_duration': maxDuration
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/videos/search',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = VideoList.fromJson(_result.data);
    return value;
  }

  @override
  popularVideos(
      {perPage, page, minWidth, minHeight, minDuration, maxDuration}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'per_page': perPage,
      r'page': page,
      r'min_width': minWidth,
      r'min_height': minHeight,
      r'min_duration': minDuration,
      r'max_duration': maxDuration
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/videos/popular',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = VideoList.fromJson(_result.data);
    return value;
  }

  @override
  video(id) async {
    ArgumentError.checkNotNull(id, 'id');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/videos/videos/$id',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = Video.fromJson(_result.data);
    return value;
  }
}
