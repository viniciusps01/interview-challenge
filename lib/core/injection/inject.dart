import 'package:get_it/get_it.dart';
import 'package:interview_challenge/data/datasources/get_all_products_datasource.dart';
import 'package:interview_challenge/data/datasources/remote/get_all_products_remote_datasource_imp.dart';
import 'package:interview_challenge/data/repositories/get_all_products_repository_imp.dart';
import 'package:interview_challenge/domain/repositories/get_all_products_repository.dart';
import 'package:interview_challenge/domain/usecases/get_all_products_usecase/get_all_products_usecase.dart';
import 'package:interview_challenge/domain/usecases/get_all_products_usecase/get_all_products_usecase_imp.dart';

class Inject {
  static init() {
    initDataSources();
    initRepositories();
    initUseCases();
    initControllers();
  }

  static initDataSources() {
    GetIt.I.registerLazySingleton<GetAllProductsDataSource>(
        () => GetAllProductsRemoteDataSourceImp());
  }

  static initRepositories() {
    GetIt.I.registerLazySingleton<GetAllProductsRepository>(
        () => GetAllProductsRepositoryImp(GetIt.I()));
  }

  static initUseCases() {
    GetIt.I.registerLazySingleton<GetAllProductsUseCase>(
        () => GetAllProductsUseCaseImp(GetIt.I()));
  }

  static initControllers() {}
}
