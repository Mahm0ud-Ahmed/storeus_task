// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import '../../../../core/config/injector.dart';
import '../../../../core/error/error.dart';
import '../../../../core/utils/api_info.dart';
import '../../../../domain/usecases/delete_data_use_case.dart';
import '../../../../domain/usecases/get_data_use_case.dart';
import '../../../../domain/usecases/store_use_case.dart';
import 'api_data_state.dart';

class ApiDataBloc<MODEL> extends Cubit<ApiDataState<MODEL>> {
  GetDataUseCase<MODEL>? _getDataUseCase;
  DeleteDataUseCase<MODEL>? _deleteDataUseCase;
  StoreUseCase<MODEL>? _storeUseCase;

  ApiDataBloc() : super(const ApiDataIdle());

  Future<void> getData({required ApiInfo info}) async {
    _getDataUseCase ??= GetDataUseCase<MODEL>(injector());
    emit(ApiDataLoading<MODEL>());
    return await _getDataUseCase?.call(event: info).then((value) {
      value.when(
        success: (successState) {
          emit(ApiDataSuccessList(data: successState));
        },
        failure: (errorState) {
          _emitError(errorState);
        },
      );
    });
  }

  Future<void> storeData({required ApiInfo info}) async {
    _storeUseCase ??= StoreUseCase<MODEL>(injector());
    emit(ApiDataLoading<MODEL>());
    return await _storeUseCase?.call(event: info).then((value) {
      value.when(
        success: (successState) {
          emit(ApiDataSuccessModel(data: successState));
        },
        failure: (errorState) {
          _emitError(errorState);
        },
      );
    });
  }

  Future<void> deleteData({required ApiInfo info}) async {
    _deleteDataUseCase ??= DeleteDataUseCase<MODEL>(injector());
    emit(ApiDataLoading<MODEL>());
    return await _deleteDataUseCase?.call(event: info).then((value) {
      value.when(
        success: (successState) {
          emit(ApiDataSuccessModel(data: successState));
        },
        failure: (errorState) {
          _emitError(errorState);
        },
      );
    });
  }

  void _emitError(AppError errorState, {String? id}) {
    emit(ApiDataError<MODEL>(error: errorState, id: id));
  }

  @override
  Future<void> close() {
    _getDataUseCase = null;
    _deleteDataUseCase = null;
    _storeUseCase = null;
    return super.close();
  }
}
