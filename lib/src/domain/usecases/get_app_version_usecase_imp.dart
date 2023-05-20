import 'package:manga_easy_landing_page/src/domain/entities/app_request_entity.dart';
import 'package:manga_easy_landing_page/src/domain/repositories/app_request_repository.dart';
import 'package:manga_easy_landing_page/src/domain/usecases/get_app_version_usecase.dart';

class GetAppVersionUsecaseImp implements GetAppVersionUsecase {
  final AppRequestRepository requestRepository;

  GetAppVersionUsecaseImp(this.requestRepository);

  @override
  Future<List<AppRequestEntity>> getVersion() async {
    return await requestRepository.get("currentVersionApp");
  }
}
