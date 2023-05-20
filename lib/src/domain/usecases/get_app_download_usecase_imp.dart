import 'package:manga_easy_landing_page/src/domain/entities/app_request_entity.dart';
import 'package:manga_easy_landing_page/src/domain/repositories/app_request_repository.dart';
import 'package:manga_easy_landing_page/src/domain/usecases/get_app_download_usecase.dart';

class GetAppDownloadUsecaseImp implements GetAppDownloadUsecase {
  final AppRequestRepository requestRepository;

  GetAppDownloadUsecaseImp(this.requestRepository);

  @override
  Future<List<AppRequestEntity>> getDownload() async {
    return await requestRepository.get("linkDownloadApp");
  }
}
