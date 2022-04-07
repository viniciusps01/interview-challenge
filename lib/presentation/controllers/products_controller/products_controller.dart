import 'package:get_it/get_it.dart';
import 'package:interview_challenge/data/dtos/product_dto.dart';
import 'package:interview_challenge/domain/usecases/get_all_products_usecase/get_all_products_usecase.dart';
import 'package:mobx/mobx.dart';

part 'products_controller.g.dart';

class ProductsController = _ProductsControllerBase with _$ProductsController;

abstract class _ProductsControllerBase with Store {
  final _getAllProductsUseCase = GetIt.I.get<GetAllProductsUseCase>();
  @observable
  var _isLoading = false;

  @computed
  bool get isLoading => _isLoading;

  @observable
  List<ProductDto>? _products;

  @computed
  List<ProductDto>? get products => _products == null ? null : [..._products!];

  @action
  loadProducts() async {
    _isLoading = true;
    _products = await _getAllProductsUseCase();
    _isLoading = false;
  }
}
