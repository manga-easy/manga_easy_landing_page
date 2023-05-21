import 'package:client_driver/client_driver.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:manga_easy_landing_page/src/data/datasources/app_request_datasource_imp.dart';
import 'package:manga_easy_landing_page/src/data/mappers/app_request_mapper.dart';

void main() {
  ClientRequest clientDio = ClientDio();

  AppRequestDataSourceImp requestData = AppRequestDataSourceImp(clientDio, AppRequestMapper());

  test('Testando requisição de Api do link para download do app', () async {
    expectLater(await requestData.get('linkDownloadApp'), isNotEmpty);
  });
  test('Testando requisição de Api do link para a versão do app', () async {
    expectLater(await requestData.get('currentVersionApp'), isNotEmpty);
  });
}
