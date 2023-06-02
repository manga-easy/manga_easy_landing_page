import 'package:manga_easy_landing_page/src/domain/entities/app_request_entity.dart';
import 'package:manga_easy_landing_page/src/domain/usecases/get_app_download_usecase.dart';
import 'package:manga_easy_landing_page/src/domain/usecases/get_app_version_usecase.dart';

class LandingController {
  final GetAppDownloadUsecase _getAppDownload;
  final GetAppVersionUsecase _getAppVersion;

  LandingController(this._getAppDownload, this._getAppVersion);

  Future<String> getVersion() async {
    var getAppVersion = await _getAppVersion.getVersion();
    print(getAppVersion.value);
    return getAppVersion.value;
  }

  Future<String> getDownload() async {
    AppRequestEntity getAppDownload = await _getAppDownload.getDownload();
    return getAppDownload.value;
  }
}
