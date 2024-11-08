// Package imports:
import 'dart:developer';

import '../../core/error/app_exception.dart';
import '../../core/utils/api_info.dart';
import '../../core/utils/data_state.dart';
import '../interfaces/i_remote_repository.dart';
import '../parsing_power.dart';
import '../usecase.dart';

class StoreUseCase<T> extends UseCase<Future<DataState<T>>, ApiInfo> {
  final IRemoteRepository _apiRepository;

  StoreUseCase(this._apiRepository);

  @override
  Future<DataState<T>> call({required ApiInfo event}) async {
    try {
      final data = await _apiRepository.callApi(event);
      final parsingData = parseModel<T>(data.data);
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
