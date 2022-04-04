import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:interview_challenge/core/injection/inject.dart';
import 'package:interview_challenge/domain/repositories/clear_cart_repository.dart';

void main() {
  late final ClearCartRepositry repository;

  setUpAll(() {
    Inject.init();
    repository = GetIt.I.get<ClearCartRepositry>();
  });

  test('ClearCartRepository should exists', () {
    expect(repository, isNotNull);
  });

  test('It should returns true', () async {
    final result = await repository();
    expect(result, true);
  });
}
