class ResultEntity {
  final String status;
  final String message;
  final int total;
  final List<Map<String, dynamic>> data;

  ResultEntity({
    required this.status,
    required this.message,
    required this.total,
    required this.data,
  });
  ResultEntity.fromJson(Map<String, dynamic> json)
      : status = json['status'],
        message = json['message'],
        total = json['total'],
        data = json['data']
            .map<Map<String, dynamic>>((e) => Map<String, dynamic>.from(e))
            .toList();

  Map<String, dynamic> toJson(ResultEntity recommendation) {
    return {
      'status': recommendation.status,
      'message': recommendation.message,
      'total': recommendation.total,
      'data': recommendation.data,
    };
  }
}
