import 'package:get_it/get_it.dart';
import 'package:interview_challenge/data/datasources/add_product_to_cart_datasource.dart';
import 'package:interview_challenge/data/datasources/clear_cart_datasource.dart';
import 'package:interview_challenge/data/datasources/get_all_products_remote_datasource.dart';
import 'package:interview_challenge/data/datasources/remote/add_product_to_cart_remote_datasource.dart';
import 'package:interview_challenge/data/datasources/remote/clear_cart_remote_datasource_imp.dart';
import 'package:interview_challenge/data/datasources/remote/get_all_products_remote_datasource_imp.dart';
import 'package:interview_challenge/data/datasources/remote/remove_product_from_cart_remote_datasource_imp.dart';
import 'package:interview_challenge/data/datasources/remote/retrieve_cart_remote_datasource_imp.dart';
import 'package:interview_challenge/data/datasources/remove_product_from_cart_datasource.dart';
import 'package:interview_challenge/data/datasources/retrieve_cart_datasource.dart';
import 'package:interview_challenge/data/dtos/cart_dto.dart';
import 'package:interview_challenge/data/repositories/add_product_to_cart_repository_imp.dart';
import 'package:interview_challenge/data/repositories/clear_cart_repository_imp.dart';
import 'package:interview_challenge/data/repositories/get_all_products_repository_imp.dart';
import 'package:interview_challenge/data/repositories/remove_product_from_cart_repository_imp.dart';
import 'package:interview_challenge/data/repositories/retrieve_cart_repository_imp.dart';
import 'package:interview_challenge/domain/repositories/add_product_to_cart_repository.dart';
import 'package:interview_challenge/domain/repositories/clear_cart_repository.dart';
import 'package:interview_challenge/domain/repositories/get_all_products_repository.dart';
import 'package:interview_challenge/domain/repositories/remove_product_from_cart_repository.dart';
import 'package:interview_challenge/domain/repositories/retrieve_cart_repository.dart';
import 'package:interview_challenge/domain/usecases/clear_cart_usecase/clear_cart_usecase.dart';
import 'package:interview_challenge/domain/usecases/clear_cart_usecase/clear_cart_usecase_imp.dart';
import 'package:interview_challenge/domain/usecases/get_all_products_usecase/get_all_products_usecase.dart';
import 'package:interview_challenge/domain/usecases/get_all_products_usecase/get_all_products_usecase_imp.dart';
import 'package:interview_challenge/domain/usecases/remove_product_from_cart_usecase/remove_product_from_cart_usecase.dart';
import 'package:interview_challenge/domain/usecases/remove_product_from_cart_usecase/remove_product_from_cart_usecase_imp.dart';
import 'package:interview_challenge/domain/usecases/retrieve_cart_usecase/retrieve_cart_usecase.dart';
import 'package:interview_challenge/domain/usecases/retrieve_cart_usecase/retrieve_cart_usecase_imp.dart';
import 'package:interview_challenge/presentation/controllers/cart_controller/cart_controller.dart';

import '../../domain/usecases/add_product_to_cart_usecase/add_product_to_cart_usecase.dart';
import '../../domain/usecases/add_product_to_cart_usecase/add_product_to_cart_usecase_imp.dart';
import '../../presentation/controllers/products_controller/products_controller.dart';

class Inject {
  static init() {
    registerCart();
    initDataSources();
    initRepositories();
    initUseCases();
    initControllers();
  }

  static registerCart() {
    GetIt.I.registerFactory<CartDto>(() => CartDto(id: '1111', items: []));
  }

  static initDataSources() {
    GetIt.I.registerLazySingleton<GetAllProductsRemoteDataSource>(
        () => GetAllProductsRemoteDataSourceImp());
    GetIt.I.registerLazySingleton<RetrieveCartDataSource>(
        () => RetrieveCartRemoteDataSourceImp());
    GetIt.I.registerLazySingleton<AddItemToCartDataSource>(
        () => AddProductToCartRemoteDataSourceImp());
    GetIt.I.registerLazySingleton<RemoveProductFromCartDataSource>(
        () => RemoveProductFromCartRemoteDataSourceImp());
    GetIt.I.registerLazySingleton<ClearCartDataSource>(
        () => ClearCartRemoteDataSourceImp());
  }

  static initRepositories() {
    GetIt.I.registerLazySingleton<GetAllProductsRepository>(
        () => GetAllProductsRepositoryImp(GetIt.I()));
    GetIt.I.registerLazySingleton<RetrieveCartRepository>(
        () => RetrieveCartRepositoryImp(GetIt.I()));
    GetIt.I.registerLazySingleton<AddProductToCartRepository>(
        () => AddProductToCartRepositoryImp(GetIt.I()));
    GetIt.I.registerLazySingleton<RemoveProductFromCartRepository>(
        () => RemoveProductFromCartRepositoryImp(GetIt.I()));
    GetIt.I.registerLazySingleton<ClearCartRepository>(
        () => ClearCartRepositoryImp(GetIt.I()));
  }

  static initUseCases() {
    GetIt.I.registerLazySingleton<GetAllProductsUseCase>(
        () => GetAllProductsUseCaseImp(GetIt.I()));
    GetIt.I.registerLazySingleton<RetrieveCartUseCase>(
        () => RetrieveCartUseCaseImp(GetIt.I()));
    GetIt.I.registerLazySingleton<AddProductToCartUseCase>(
        () => AddProductToCartUseCaseImp(GetIt.I()));
    GetIt.I.registerLazySingleton<RemoveProductFromCartUseCase>(
        () => RemoveProductFromCartUseCaseImp(GetIt.I()));
    GetIt.I.registerLazySingleton<ClearCartUseCase>(
        () => ClearCartUseCaseImp(GetIt.I()));
  }

  static initControllers() {
    GetIt.I
        .registerLazySingleton<ProductsController>(() => ProductsController());
    GetIt.I.registerLazySingleton<CartController>(() => CartController());
  }
}
