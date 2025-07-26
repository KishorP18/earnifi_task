import 'package:dio/dio.dart';
import 'network_exception.dart';

class DioClient {
  final Dio _dio;

  DioClient(this._dio) {
    _dio.options = BaseOptions(
      baseUrl: 'https://mockapi.earnifi.dev',
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    );
  }

  Future<Response> get(String path) async {
    try {
      return await _dio.get(path);
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<Response> post(String path, {dynamic data}) async {
    try {
      return await _dio.post(path, data: data);
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Exception _handleDioError(DioException e) {
    if (e.response != null) {
      return NetworkException('Error: ${e.response?.statusCode} ${e.response?.statusMessage}');
    } else if (e.type == DioExceptionType.connectionTimeout) {
      return NetworkException('Connection timeout');
    } else if (e.type == DioExceptionType.receiveTimeout) {
      return NetworkException('Receive timeout');
    } else if (e.type == DioExceptionType.badResponse) {
      return NetworkException('Invalid server response');
    } else {
      return NetworkException('Network error: ${e.message}');
    }
  }
}
