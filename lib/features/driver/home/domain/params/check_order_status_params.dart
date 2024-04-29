class CheckOrderStatusDriverParams {
  final String waveId;
  final bool check;

  CheckOrderStatusDriverParams({required this.waveId, required this.check});
  Map<String, dynamic> toJson() =>
      {"waveId": waveId, "check": check};
}
