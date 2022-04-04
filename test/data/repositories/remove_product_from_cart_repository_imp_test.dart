import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:interview_challenge/core/injection/inject.dart';
import 'package:interview_challenge/domain/repositories/remove_product_from_cart_repository.dart';
import 'package:interview_challenge/testing_entries/test_entries.dart';

void main() {
  late final RemoveProductFromCartRepository repository;

  setUpAll(() {
    Inject.init();
    repository = GetIt.I.get<RemoveProductFromCartRepository>();
  });

  test('RemoveProductFromCartRepository should exists', () {
    expect(repository, isNotNull);
  });

  test('It should return true', () async {
    final result = await repository(TestEntries.products[0]);
    expect(result, true);
  });
}
