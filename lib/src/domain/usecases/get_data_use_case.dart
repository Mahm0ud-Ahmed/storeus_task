// Package imports:
import 'dart:developer';

import 'package:storeus_task/src/core/utils/api_info.dart';
import 'package:storeus_task/src/domain/parsing_power.dart';

import '../../core/error/app_exception.dart';
import '../../core/utils/data_state.dart';
import '../interfaces/i_remote_repository.dart';
import '../usecase.dart';

class GetDataUseCase<T> extends UseCase<Future<DataState<List<T>>>, ApiInfo> {
  final IRemoteRepository _apiRepository;

  GetDataUseCase(this._apiRepository);

  @override
  Future<DataState<List<T>>> call({required ApiInfo event}) async {
    try {
      final data = await _apiRepository.callApi(event);
      final parsingData = (data.data as List).map<T>((e) => parseModel(e),).toList();
      return DataState.success(parsingData);
    } on AppException catch (error, s) {
      log('Stack Trace  ', stackTrace: s);
      return DataState.failure(AppException(error).handleError);
    } catch (error, s) {
      log('Stack Trace  ', stackTrace: s);
      return DataState.failure(AppException(error).handleError);
    }
  }
}
