// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_driver_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WalletDriverEntity _$WalletDriverEntityFromJson(Map<String, dynamic> json) =>
    WalletDriverEntity(
      todayDoneWaves: json['todayDoneWaves'] as int,
      yesterdayDoneWaves: json['yesterdayDoneWaves'] as int,
      thisMonthDoneWaves: json['thisMonthDoneWaves'] as int,
      thisMonthSpentHours: json['thisMonthSpentHours'] as int,
    );

Map<String, dynamic> _$WalletDriverEntityToJson(WalletDriverEntity instance) =>
    <String, dynamic>{
      'todayDoneWaves': instance.todayDoneWaves,
      'yesterdayDoneWaves': instance.yesterdayDoneWaves,
      'thisMonthDoneWaves': instance.thisMonthDoneWaves,
      'thisMonthSpentHours': instance.thisMonthSpentHours,
    };
