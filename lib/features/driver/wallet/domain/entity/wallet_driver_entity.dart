import 'package:json_annotation/json_annotation.dart';

part 'wallet_driver_entity.g.dart';

@JsonSerializable()
class WalletDriverEntity {
  @JsonKey(name: 'todayDoneWaves')
  final int todayDoneWaves;

  @JsonKey(name: 'yesterdayDoneWaves')
  final int yesterdayDoneWaves;

  @JsonKey(name: 'thisMonthDoneWaves')
  final int thisMonthDoneWaves;

  @JsonKey(name: 'thisMonthSpentHours')
  final int thisMonthSpentHours;

  WalletDriverEntity({
    required this.todayDoneWaves,
    required this.yesterdayDoneWaves,
    required this.thisMonthDoneWaves,
    required this.thisMonthSpentHours,
  });

  factory WalletDriverEntity.fromJson(Map<String, dynamic> json) => _$WalletDriverEntityFromJson(json);

  Map<String, dynamic> toJson() => _$WalletDriverEntityToJson(this);
}
