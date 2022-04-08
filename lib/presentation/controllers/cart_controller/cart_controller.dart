import 'package:get_it/get_it.dart';
import 'package:interview_challenge/data/dtos/cart_item_dto.dart';
import 'package:interview_challenge/data/dtos/product_dto.dart';
import 'package:interview_challenge/domain/entities/cart_entity.dart';
import 'package:interview_challenge/domain/usecases/add_product_to_cart_usecase/add_product_to_cart_usecase.dart';
import 'package:interview_challenge/domain/usecases/clear_cart_usecase/clear_cart_usecase.dart';
import 'package:interview_challenge/domain/usecases/remove_product_from_cart_usecase/remove_product_from_cart_usecase.dart';
import 'package:interview_challenge/domain/usecases/retrieve_cart_usecase/retrieve_cart_usecase.dart';
import 'package:mobx/mobx.dart';

part 'cart_controller.g.dart';

class CartController = _CartControllerBase with _$CartController;

abstract class _CartControllerBase with Store {
  final _retrieveCartUseCase = GetIt.I.get<RetrieveCartUseCase>();
  final _addProductToCartUseCase = GetIt.I.get<AddProductToCartUseCase>();
  final _removeProductFromCartUseCase =
      GetIt.I.get<RemoveProductFromCartUseCase>();
  final _clearCartUseCase = GetIt.I.get<ClearCartUseCase>();

  @observable
  int _productsQuantity = 0;

  @observable
  double _totalAmount = 0;

  @observable
  int _cartItemsQuantity = 0;

  @observable
  var _isLoading = false;

  @observable
  CartEntity _cart = CartEntity();

  @computed
  bool get isLoading => _isLoading;

  @computed
  List<CartItemDto> get items => _cart.items;

  @computed
  int get productsQuantity => _productsQuantity;

  @computed
  double get totalAmount => _totalAmount;

  @computed
  int get cartItemsQuantity => _cartItemsQuantity;

  @action
  retrieveCart() async {
    try {
      _isLoading = true;
      _cart = await _retrieveCartUseCase();
      _onCartUpdated();
    } catch (e) {
      //TODO: handle error
    } finally {
      _isLoading = false;
    }
  }

  @action
  addProductToCart(ProductDto product) {
    try {
      _isLoading = true;
      _addProductToCartUseCase(product);
      _cart.addProduct(product);
      _onCartUpdated();
    } catch (e) {
      //TODO: handle error
    } finally {
      _isLoading = false;
    }
  }

  @action
  removeProductFromCart(ProductDto product) {
    try {
      _isLoading = true;
      _removeProductFromCartUseCase(product);
      _cart.removeProduct(product.id);
      _onCartUpdated();
    } catch (e) {
      //TODO: handle error
    } finally {
      _isLoading = false;
    }
  }

  @action
  clearCart() {
    try {
      _isLoading = true;
      _clearCartUseCase();
      _cart.clearCart();
      _onCartUpdated();
    } catch (e) {
      //TODO: handle error
    } finally {
      _isLoading = false;
    }
  }

  _onCartUpdated() {
    _cartItemsQuantity = _cart.itemsQuanity;
    _productsQuantity = _cart.productsQuantity;
    _totalAmount = _cart.totalAmount;
  }
}
