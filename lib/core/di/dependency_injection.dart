import 'package:dio/dio.dart';
import 'package:doctoc/core/networking/api_service.dart';
import 'package:doctoc/core/networking/dio_factory.dart';
import 'package:doctoc/features/login/data/repos/login_repo.dart';
import 'package:doctoc/features/login/logic/cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setUpGetIt() async {
  Dio dio = await DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
}
