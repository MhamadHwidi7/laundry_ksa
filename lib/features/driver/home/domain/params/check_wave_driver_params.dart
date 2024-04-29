class CheckWaveDriverParams {
  final String id;

  CheckWaveDriverParams({required this.id});
  Map<String, dynamic> toJson() =>
      {"id": id,};
}
