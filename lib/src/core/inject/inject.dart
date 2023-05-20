import 'package:get_it/get_it.dart';
import 'package:manga_easy_landing_page/src/data/datasources/app_request_datasource.dart';
import 'package:manga_easy_landing_page/src/data/datasources/app_request_datasource_imp.dart';
import 'package:manga_easy_landing_page/src/data/mappers/app_request_mapper.dart';
import 'package:manga_easy_landing_page/src/data/repositories/app_request_repository_imp.dart';
import 'package:manga_easy_landing_page/src/domain/repositories/app_request_repository.dart';
import 'package:manga_easy_landing_page/src/domain/usecases/get_app_download_usecase.dart';
import 'package:manga_easy_landing_page/src/domain/usecases/get_app_download_usecase_imp.dart';
import 'package:manga_easy_landing_page/src/domain/usecases/get_app_version_usecase.dart';
import 'package:manga_easy_landing_page/src/domain/usecases/get_app_version_usecase_imp.dart';
import 'package:manga_easy_landing_page/src/presenter/controller/landing_controller.dart';

class Inject {
  GetIt getIt = GetIt.instance;

  void registerDependencies() {
    //mappers
    getIt.registerFactory(() => AppRequestMapper());
    //datasource
    getIt.registerFactory<AppRequestDataSource>(
        () => AppRequestDataSourceImp(getIt(), getIt()));

    //repositories
    getIt.registerFactory<AppRequestRepository>(
      () => AppRequestRepositoryImp(getIt(), getIt()),
    );

    //usecases
    getIt.registerFactory<GetAppDownloadUsecase>(
        () => GetAppDownloadUsecaseImp(getIt()));

    getIt.registerFactory<GetAppVersionUsecase>(
        () => GetAppVersionUsecaseImp(getIt()));

    //controllers
    getIt.registerFactory<LandingController>(
      () => LandingController(getIt(), getIt()),
    );
  }
}
