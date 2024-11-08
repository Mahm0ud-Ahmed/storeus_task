import 'package:dio/dio.dart';
import 'package:storeus_task/src/core/utils/api_info.dart';

abstract class IRemoteRepository {
  Future<Response> callApi(ApiInfo apiInfo);
}
