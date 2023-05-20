import 'package:client_driver/client_driver.dart';
import 'package:manga_easy_landing_page/src/core/request/result_entity.dart';
import 'package:manga_easy_landing_page/src/data/datasources/app_request_datasource.dart';
import 'package:manga_easy_landing_page/src/data/dtos/app_request_dto.dart';
import 'package:manga_easy_landing_page/src/data/mappers/app_request_mapper.dart';

class AppRequestDataSourceImp implements AppRequestDataSource {
  final ClientRequest _clientDriver;
  final String path = 'toggle';
  final String url = 'http://micro-config.lucas-cm.com.br';
  final String version = 'v1';
  final String params = 'name';
  final AppRequestMapper _mapper;

  AppRequestDataSourceImp(this._clientDriver, this._mapper);

  @override
  Future<List<AppRequestDto>> get(String param) async {
    final response = await _clientDriver.get(
      path: '$url/$version/$path/search?$params=$param',
    );
    final result = ResultEntity.fromJson(response.data);

    return result.data.map((e) => _mapper.fromJson(e)).toList();
  }
}
