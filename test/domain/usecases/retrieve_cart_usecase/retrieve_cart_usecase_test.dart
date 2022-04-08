import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:interview_challenge/core/injection/inject.dart';
import 'package:interview_challenge/data/dtos/cart_dto.dart';
import 'package:interview_challenge/domain/usecases/retrieve_cart_usecase/retrieve_cart_usecase.dart';

void main() {
  late final RetrieveCartUseCase useCase;

  setUpAll(() {
    Inject.init();
    useCase = GetIt.I.get<RetrieveCartUseCase>();
  });

  test('RetrieveCartUseCase should exists', () {
    expect(useCase, isNotNull);
  });

  test('It should returns a CartDto', () async {
    final result = await useCase();
    expect(result, isA<CartDto>());
  });
}
