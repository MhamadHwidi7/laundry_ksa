// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_in_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LogInDriverEntity _$LogInDriverEntityFromJson(Map<String, dynamic> json) =>
    LogInDriverEntity(
      driverId: json['id'] as String,
      token: json['token'] as String,
    );

Map<String, dynamic> _$LogInDriverEntityToJson(LogInDriverEntity instance) =>
    <String, dynamic>{
      'id': instance.driverId,
      'token': instance.token,
    };
