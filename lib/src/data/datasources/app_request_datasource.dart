import 'package:manga_easy_landing_page/src/data/dtos/app_request_dto.dart';

abstract class AppRequestDataSource {
  Future<List<AppRequestDto>> get(String param);
}
