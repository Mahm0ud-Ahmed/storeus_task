import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart' show WidgetsFlutterBinding;
import 'package:get_it/get_it.dart';
import 'package:storeus_task/src/core/utils/theme_manager.dart';
import 'package:storeus_task/src/data/repositories/api_repository_imp.dart';
import 'package:storeus_task/src/domain/interfaces/i_remote_repository.dart';

import '../../data/remote/dio_api_service.dart';
import '../../presentation/view_model/blocs/assistance/my_bloc_observer.dart';
import '../services/dio_service.dart';

final injector = GetIt.instance;

Future<void> initializeDependencies() async {
  WidgetsFlutterBinding.ensureInitialized();
  injector.registerSingleton<DioService>(DioService());
  await injector<DioService>().initializeService();

  injector.registerSingleton<DioApiService>(DioApiService(dio: injector<DioService>().dio));

  injector.registerSingleton<IRemoteRepository>(ApiRepositoryImp(dioApiService: injector()));

  injector.registerSingleton<ThemeManager>(ThemeManager());

  Bloc.observer = MyBlocObserver();
}
