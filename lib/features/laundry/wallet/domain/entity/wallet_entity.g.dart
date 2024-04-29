// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WalletLaundryEntity _$WalletLaundryEntityFromJson(Map<String, dynamic> json) =>
    WalletLaundryEntity(
      lastWeekOrders: json['lastWeekOrders'] as int,
      lastWeekIncome: json['lastWeekIncome'] as int,
      thisMonthOrders: json['thisMonthOrders'] as int,
      thisMonthIncome: (json['thisMonthIncome'] as num).toDouble(),
      deliveredOrders: json['deliverdOrders'] as int,
    );

Map<String, dynamic> _$WalletLaundryEntityToJson(
        WalletLaundryEntity instance) =>
    <String, dynamic>{
      'lastWeekOrders': instance.lastWeekOrders,
      'lastWeekIncome': instance.lastWeekIncome,
      'thisMonthOrders': instance.thisMonthOrders,
      'thisMonthIncome': instance.thisMonthIncome,
      'deliverdOrders': instance.deliveredOrders,
    };
