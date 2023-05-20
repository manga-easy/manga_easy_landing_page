class AppRequestDto {
  String id;
  String name;
  int updateAt;
  String status;
  String description;
  String value;

  AppRequestDto({
    required this.id,
    required this.name,
    required this.updateAt,
    required this.status,
    required this.description,
    required this.value,
  });
}
