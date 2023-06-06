import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:manga_easy_landing_page/src/core/inject/inject.dart';
import 'package:manga_easy_landing_page/src/domain/entities/app_request_entity.dart';
import 'package:manga_easy_landing_page/src/domain/usecases/get_app_version_usecase.dart';

void main() {
  setUpAll(() {
    Inject().registerDependencies();
  });

  test('Conferindo se o requestVersion nao ta retornando null', () async {
    GetAppVersionUsecase requestVersionUseCase = GetIt.I();
    var request = requestVersionUseCase.getVersion();
    expect(request, isNotNull);
  });
  test('Conferindo se o requestVersion ta retornando o value', () async {
    GetAppVersionUsecase requestVersionUseCase = GetIt.I();
    AppRequestEntity getAppVersion = await requestVersionUseCase.getVersion();
    expectLater(getAppVersion.value, isNotEmpty);
  });
}
