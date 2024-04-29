// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_in_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LogInLaundryEntity _$LogInLaundryEntityFromJson(Map<String, dynamic> json) =>
    LogInLaundryEntity(
      laundryId: json['id'] as String,
      token: json['token'] as String,
    );

Map<String, dynamic> _$LogInLaundryEntityToJson(LogInLaundryEntity instance) =>
    <String, dynamic>{
      'id': instance.laundryId,
      'token': instance.token,
    };
