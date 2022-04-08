import 'package:interview_challenge/data/dtos/product_dto.dart';
import 'package:interview_challenge/domain/entities/product_entity.dart';
import 'package:interview_challenge/domain/repositories/get_all_products_repository.dart';
import 'package:interview_challenge/domain/usecases/get_all_products_usecase/get_all_products_usecase.dart';

class GetAllProductsUseCaseImp implements GetAllProductsUseCase {
  final GetAllProductsRepository _repository;

  GetAllProductsUseCaseImp(this._repository);

  @override
  Future<List<ProductDto>> call() => _repository();
}
