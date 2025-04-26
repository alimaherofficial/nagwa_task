import 'package:dio/dio.dart';
import 'package:nagwa_task/core/api/endpoints.dart';

/// this class is used to manage the dio requests
class DioHelper {
  /// dio instance
  static Dio dio = Dio(
    BaseOptions(
      baseUrl: EndPoints.baseUrl,
      receiveDataWhenStatusError: true,
      // you don't need to write timeout duration in each function
      receiveTimeout: const Duration(seconds: 15),
      connectTimeout: const Duration(seconds: 15),
      sendTimeout: const Duration(seconds: 15),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    ),
  );

  /// this method is used to get data from the server
  static Future<Response<dynamic>> getData({
    required String url,
    Map<String, dynamic>? queryParameters,
    void Function(int, int)? onReceiveProgress,
  }) {
    return dio.get(
      url,
      queryParameters: queryParameters,
      onReceiveProgress: onReceiveProgress,
    );
  }

  /// this method is used to delete data from the server
  static Future<Response<dynamic>> deleteData({required String url}) {
    return dio.delete(url);
  }

  /// this method is used to update data on the server
  static Future<Response<dynamic>> putData({
    required String? url,
    required Map<String, dynamic> data,
    Map<String, dynamic>? queryParameters,
  }) async {
    return dio.put(url!, data: data, queryParameters: queryParameters);
  }

  /// this method is used to post data to the server
  static Future<Response<dynamic>> postData({
    required String? url,
    dynamic data,
    Options? options,
    Map<String, dynamic>? queryParameters,
  }) {
    return dio.post(
      url!,
      data: data,
      options: options,
      queryParameters: queryParameters,
    );
  }

  /// this method is used to download a file from the server
  static Future<Response<dynamic>> downloadFile({
    required String? url,
    required String? savePath,
    void Function(int, int)? onReceiveProgress,
  }) {
    return dio.download(url!, savePath, onReceiveProgress: onReceiveProgress);
  }
}
