import 'package:manga_easy_landing_page/src/data/datasources/app_request_datasource.dart';
import 'package:manga_easy_landing_page/src/data/mappers/app_request_mapper.dart';
import 'package:manga_easy_landing_page/src/domain/entities/app_request_entity.dart';
import 'package:manga_easy_landing_page/src/domain/repositories/app_request_repository.dart';

class AppRequestRepositoryImp implements AppRequestRepository {
  final AppRequestDataSource resquestData;
  final AppRequestMapper _requestMapper;

  AppRequestRepositoryImp(this.resquestData, this._requestMapper);

  @override
  Future<List<AppRequestEntity>> get(String param) async {
    final request = await resquestData.get(param);
    final result = request.map((e) => _requestMapper.toEntity(e)).toList();
    return result;
  }
}
