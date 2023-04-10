import 'package:client_driver/client_driver.dart';

class ToggleDatasource {
  final DriverHttp _clientDriver;
  final String path = 'toggle/search';
  final String url = 'http://micro-config.lucas-cm.com.br';
  final String version = 'v1';
  final String params = 'name=currentVersionApp';

  ToggleDatasource(this._clientDriver);

  Future get dio {
    var result = _clientDriver.get(path: '$url/$version/$path/$params');
    return result;
  }
}
