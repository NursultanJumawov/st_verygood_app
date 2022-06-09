import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:http_service1/http_service1.dart';
import 'package:st_bloc_cubit_getit_dartz_api/src/src.dart';
import 'src/src.dart';

final sl = GetIt.I;

const baseUrl = 'https://jsonplaceholder.typicode.com/posts';

void setup() {
  sl
    ..registerLazySingleton<HttpService>(
      () => HttpService(sl<Client>(), baseUrl),
    )
    ..registerLazySingleton<Client>(Client.new)
    ..registerFactory<HomeCubit>(() => HomeCubit(sl<HomeRepository>()))
    ..registerLazySingleton<HomeRepository>(
      () => HomeRepoImpl(sl<HttpService>()),
    );
  // sl.registerLazySingleton<BoredService>(() => BoredService());
}
