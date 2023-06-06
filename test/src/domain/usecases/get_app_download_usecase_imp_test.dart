import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:manga_easy_landing_page/src/core/inject/inject.dart';
import 'package:manga_easy_landing_page/src/domain/entities/app_request_entity.dart';
import 'package:manga_easy_landing_page/src/domain/usecases/get_app_download_usecase.dart';

void main() {
  setUpAll(() {
    Inject().registerDependencies();
  });

  test('Conferindo se o requestDownload nao ta retornando null', () async {
    GetAppDownloadUsecase requestDownloadUseCase = GetIt.I();
    var request = requestDownloadUseCase.getDownload();
    expect(request, isNotNull);
  });
  test('Conferindo se o requestDownload ta retornando o value', () async {
    GetAppDownloadUsecase requestDownloadUseCase = GetIt.I();
    AppRequestEntity getAppDownload =
        await requestDownloadUseCase.getDownload();
    expectLater(getAppDownload.value, isNotEmpty);
  });
}
