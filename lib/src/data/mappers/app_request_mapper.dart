import 'package:manga_easy_landing_page/src/data/dtos/app_request_dto.dart';
import 'package:manga_easy_landing_page/src/domain/entities/app_request_entity.dart';

class AppRequestMapper {
  AppRequestDto fromJson(Map<String, dynamic> json) {
    return AppRequestDto(
      id: json['id'],
      name: json['name'],
      updateAt: json['updateAt'],
      description: json['description'],
      status: json['status'] ?? 0,
      value: json['value'],
    );
  }

  AppRequestEntity toEntity(AppRequestDto dto) {
    return AppRequestEntity(
      id: dto.id,
      name: dto.name,
      updateAt: dto.updateAt,
      description: dto.description,
      status: dto.status,
      value: dto.value,
    );
  }

  Map<String, dynamic> toJson(AppRequestDto version) {
    return {
      'id': version.id,
      'name': version.name,
      'updateAt': version.updateAt,
      'description': version.description,
      'status': version.status,
      'value': version.value,
    };
  }
}
