import 'package:manga_easy_landing_page/src/domain/entities/app_request_entity.dart';

abstract class GetAppDownloadUsecase{
  Future<AppRequestEntity> getDownload();
}