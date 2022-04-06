import 'package:get_it/get_it.dart';
import 'package:interview_challenge/data/dtos/product_dto.dart';
import 'package:interview_challenge/domain/usecases/get_all_products_usecase/get_all_products_usecase.dart';
import 'package:mobx/mobx.dart';

part 'products_controller.g.dart';

class ProductsController = _ProductsControllerBase with _$ProductsController;

abstract class _ProductsControllerBase with Store {
  final _getAllProductsUseCase = GetIt.I.get<GetAllProductsUseCase>();
  var _isLoading = false;

  bool get isLoading => _isLoading;

  @observable
  List<ProductDto>? products;

  @action
  loadProducts() async {
    _isLoading = true;
    products = await _getAllProductsUseCase();
    _isLoading = false;
  }
}
