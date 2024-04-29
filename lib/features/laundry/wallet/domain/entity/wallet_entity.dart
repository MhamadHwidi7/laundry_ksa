import 'package:json_annotation/json_annotation.dart';

part 'wallet_entity.g.dart';

@JsonSerializable()
class WalletLaundryEntity {
  @JsonKey(name: 'lastWeekOrders')
  final int lastWeekOrders;

  @JsonKey(name: 'lastWeekIncome')
  final int lastWeekIncome;

  @JsonKey(name: 'thisMonthOrders')
  final int thisMonthOrders;

  @JsonKey(name: 'thisMonthIncome')
  final double thisMonthIncome;

  @JsonKey(name: 'deliverdOrders')
  final int deliveredOrders;

  WalletLaundryEntity({
    required this.lastWeekOrders,
    required this.lastWeekIncome,
    required this.thisMonthOrders,
    required this.thisMonthIncome,
    required this.deliveredOrders,
  });

  factory WalletLaundryEntity.fromJson(Map<String, dynamic> json) => _$WalletLaundryEntityFromJson(json);

  Map<String, dynamic> toJson() => _$WalletLaundryEntityToJson(this);
}
