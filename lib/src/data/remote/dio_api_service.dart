// Package imports:
import 'dart:io';

import 'package:dio/dio.dart';

import '../../core/error/app_exception.dart';
import '../../core/utils/api_info.dart';
import '../../core/utils/enums.dart';

class DioApiService {
  final Dio dio;
  DioApiService({
    required this.dio,
  });

  Future<Response> action({
    required ApiInfo query,
  }) async {
    switch (query.apiMethod) {
      case ApiMethod.get:
        return await _getData(query: query);
      case ApiMethod.post:
        return await _postData(query: query);
      case ApiMethod.put:
        return await _putData(query: query);
      case ApiMethod.delete:
        return await _deleteData(query: query);
      case null:
        return await _getData(query: query);
    }
  }

  Future<Response> _deleteData({
    required ApiInfo query,
  }) async {
    try {
      final response = await dio.delete(query.endpoint);
      if (response.statusCode == HttpStatus.ok) {
        return response;
      }
      throw (AppException(response.data));
    } catch (error) {
      throw (AppException(error));
    }
  }

  Future<Response> _putData({
    required ApiInfo query,
  }) async {
    try {
      final response = await dio.put(
        query.endpoint,
        data: query.data,
      );
      if (response.statusCode == HttpStatus.ok) {
        return response;
      }
      throw (AppException(response.data));
    } catch (error) {
      throw (AppException(error));
    }
  }

  Future<Response> _postData({
    required ApiInfo query,
  }) async {
    try {
      final response = await dio.post(
        query.endpoint,
        data: query.data,
      );
      if (response.statusCode == HttpStatus.ok || response.statusCode == HttpStatus.created) {
        return response;
      }
      throw (AppException(response.data));
    } catch (error) {
      throw (AppException(error));
    }
  }

  Future<Response> _getData({
    required ApiInfo query,
  }) async {
    try {
      final response = await dio.get(
        query.endpoint,
        queryParameters: query.queries,
      );
      if (response.statusCode == HttpStatus.ok) {
        return response;
      }
      throw (AppException(response.data));
    } catch (error) {
      throw (AppException(error));
    }
  }
}
