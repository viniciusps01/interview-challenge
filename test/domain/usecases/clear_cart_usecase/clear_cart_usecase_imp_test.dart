import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:interview_challenge/core/injection/inject.dart';
import 'package:interview_challenge/domain/usecases/clear_cart_usecase/clear_cart_usecase.dart';

void main() {
  late final ClearCartUseCase useCase;

  setUpAll(() {
    Inject.init();
    useCase = GetIt.I.get<ClearCartUseCase>();
  });

  test('ClearCartRepository should exists', () {
    expect(useCase, isNotNull);
  });

  test('It should returns true', () async {
    final result = await useCase();
    expect(result, true);
  });
}
