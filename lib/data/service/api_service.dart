import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:myairdeal/data/secure_storage/secure_storage.dart';
import 'package:myairdeal/domain/core/api_endpoints/api_endpoints.dart';

class ApiService {
  final Dio _dio = Dio(BaseOptions(baseUrl: ApiEndPoints.baseUrl));

  Future<Response<dynamic>> get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? data,
    bool addHeader = true,
  }) async {
    try {
      if (addHeader) {
        final token =
            await SecureStorage.getToken().then((token) => token.token);
        _dio.options.headers.addAll(
          {
            'authorization': "Bearer $token",
            ...headers ?? {'content-Type': 'application/json'}
          },
        );
      } else {
        _dio.options.headers['content-Type'] = 'application/json';
      }
      log('api uri ==>get  ${_dio.options.baseUrl + url}');
      log('token ==>  ${_dio.options.headers['authorization']}');
      final response =
          await _dio.get(url, data: data, queryParameters: queryParameters);
      return response;
    } on DioException catch (exception) {
      log('Dio exception code => ${exception.response?.statusCode}');
      log('Dio exception => ${exception.response}');
      rethrow;
    } catch (e) {
      log('Exception => $e');
      rethrow;
    }
  }

  Future<Response<dynamic>> post(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    dynamic data,
    bool addHeader = true,
  }) async {
    try {
      if (addHeader) {
        final token =
            await SecureStorage.getToken().then((token) => token.token);
        _dio.options.headers.addAll(
          {
            'authorization': "Bearer $token",
            ...headers ?? {'content-Type': 'application/json'}
          },
        );
      } else {
        _dio.options.headers['content-Type'] = 'application/json';
      }
      log('api uri ==>post  ${_dio.options.baseUrl + url}');
      final response = await _dio.post(
        url,
        data: data is FormData ? data : data as Map<String, dynamic>?,
        queryParameters: queryParameters,
      );
      return response;
    } on DioException catch (exception) {
      log('Dio exception code => ${exception.response?.statusCode}');
      log('Dio exception => ${exception.response?.statusCode}');
      if (exception.response?.statusCode == 403) {
        //_logOut();
      }
      rethrow;
    } catch (e) {
      log('Exception => $e');
      rethrow;
    }
  }

  Future<Response<dynamic>> put(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    dynamic data,
    bool addHeader = true,
  }) async {
    try {
      if (addHeader) {
        final token =
            await SecureStorage.getToken().then((token) => token.token);
        _dio.options.headers.addAll(
          {
            'authorization': "Bearer $token",
            ...headers ?? {'content-Type': 'application/json'}
          },
        );
      } else {
        _dio.options.headers['content-Type'] = 'application/json';
      }
      log('api uri ==>put  ${_dio.options.baseUrl + url}');
      final response = await _dio.put(url,
          data: data is FormData ? data : data as Map<String, dynamic>?,
          queryParameters: queryParameters);
      return response;
    } on DioException catch (exception) {
      log('Dio exception code => ${exception.response?.statusCode}');
      log('Dio exception => ${exception.response?.statusCode}');
      if (exception.response?.statusCode == 403) {
        //_logOut();
      }
      rethrow;
    } catch (e) {
      log('Exception => $e');
      rethrow;
    }
  }

  Future<Response<dynamic>> delete(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? data,
    bool addHeader = true,
  }) async {
    try {
      if (addHeader) {
        final token =
            await SecureStorage.getToken().then((token) => token.token);
        _dio.options.headers.addAll(
          {
            'authorization': "Bearer $token",
            ...headers ?? {'content-Type': 'application/json'}
          },
        );
      } else {
        _dio.options.headers['content-Type'] = 'application/json';
      }
      log('api uri ==>delete  ${_dio.options.baseUrl + url}');
      final response =
          await _dio.delete(url, data: data, queryParameters: queryParameters);
      return response;
    } on DioException catch (exception) {
      log('Dio exception code => ${exception.response?.statusCode}');
      log('Dio exception => ${exception.response?.statusCode}');
      if (exception.response?.statusCode == 403) {
        //_logOut();
      }
      rethrow;
    } catch (e) {
      log('Exception => $e');
      rethrow;
    }
  }

  Future<Response<dynamic>> patch(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? data,
    bool addHeader = true,
  }) async {
    try {
      if (addHeader) {
        final token =
            await SecureStorage.getToken().then((token) => token.token);
        _dio.options.headers.addAll(
          {
            'authorization': "Bearer $token",
            ...headers ?? {'content-Type': 'application/json'}
          },
        );
      } else {
        _dio.options.headers['content-Type'] = 'application/json';
      }
      log('api uri ==>patch  ${_dio.options.baseUrl + url}');
      final response =
          await _dio.patch(url, data: data, queryParameters: queryParameters);
      return response;
    } on DioException catch (exception) {
      log('Dio exception code => ${exception.response?.statusCode}');
      log('Dio exception => ${exception.response?.statusCode}');
      if (exception.response?.statusCode == 403) {}
      rethrow;
    } catch (e) {
      log('Exception => $e');
      rethrow;
    }
  }
}
