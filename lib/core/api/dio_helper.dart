import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
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

  static void _initializeInterceptors() {
    dio.interceptors.clear();
    dio.interceptors.add(
      LogInterceptor(
        requestBody: true,
        responseBody: true,
        logPrint: (object) {
          debugPrint(object.toString());
        },
      ),
    );
  }

  /// this method is used to initialize the dio instance
  static void initialize() {
    _initializeInterceptors();
  }

  /// this method is used to get data from the server
  static Future<Response<dynamic>> getData({
    required String url,
    Map<String, dynamic>? queryParameters,
    void Function(int, int)? onReceiveProgress,
  }) {
    // Filter out null values from query parameters
    if (queryParameters != null) {
      queryParameters.removeWhere((key, value) => value == null);
    }

    // Debug print
    debugPrint('GET Request: $url');
    debugPrint('Query Parameters: $queryParameters');

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
