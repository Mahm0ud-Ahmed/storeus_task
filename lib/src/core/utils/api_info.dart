// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'enums.dart';

class ApiInfo {
  String endpoint;
  Map<String, dynamic>? data;
  Map<String, dynamic>? queries;
  ApiMethod? apiMethod;

  ApiInfo({
    required this.endpoint,
    this.data,
    this.queries,
    this.apiMethod = ApiMethod.get,
  });

  ApiInfo copyWith({
    String? endpoint,
    Map<String, dynamic>? data,
    Map<String, dynamic>? queries,
    ApiMethod? apiMethod,
  }) {
    return ApiInfo(
      endpoint: endpoint ?? this.endpoint,
      data: data ?? this.data,
      queries: queries ?? this.queries,
      apiMethod: apiMethod ?? this.apiMethod,
    );
  }
}
