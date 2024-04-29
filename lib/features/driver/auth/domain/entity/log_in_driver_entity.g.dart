// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_in_driver_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LogInDriverEntity _$LogInDriverEntityFromJson(Map<String, dynamic> json) =>
    LogInDriverEntity(
      laundryId: json['id'] as String,
      token: json['token'] as String,
    );

Map<String, dynamic> _$LogInDriverEntityToJson(LogInDriverEntity instance) =>
    <String, dynamic>{
      'id': instance.laundryId,
      'token': instance.token,
    };
