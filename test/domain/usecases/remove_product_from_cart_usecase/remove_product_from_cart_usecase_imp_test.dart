import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:interview_challenge/core/injection/inject.dart';
import 'package:interview_challenge/domain/usecases/remove_product_from_cart_usecase/remove_product_from_cart_usecase.dart';
import 'package:interview_challenge/testing_entries/test_entries.dart';

void main() {
  late final RemoveProductFromCartUseCase useCase;

  setUpAll(() {
    Inject.init();
    useCase = GetIt.I.get<RemoveProductFromCartUseCase>();
  });

  test('RemoveProductFromCartUseCase should exists', () {
    expect(useCase, isNotNull);
  });

  test('It should return true', () async {
    final result = await useCase(TestEntries.products[0]);
    expect(result, true);
  });
}
