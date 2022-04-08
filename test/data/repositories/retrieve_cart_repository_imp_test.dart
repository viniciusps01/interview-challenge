import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:interview_challenge/core/injection/inject.dart';
import 'package:interview_challenge/domain/repositories/retrieve_cart_repository.dart';

main() {
  late final RetrieveCartRepository cart;

  setUpAll(() {
    Inject.init();
    cart = GetIt.I.get<RetrieveCartRepository>();
  });

  test('RetrieveCartRepository should exit', () {
    expect(cart, isNotNull);
  });
}
