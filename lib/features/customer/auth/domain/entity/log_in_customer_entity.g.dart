// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_in_customer_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LogInCustomerEntity _$LogInCustomerEntityFromJson(Map<String, dynamic> json) =>
    LogInCustomerEntity(
      id: json['id'] as String,
      role: json['role'] as String,
      token: json['token'] as String,
    );

Map<String, dynamic> _$LogInCustomerEntityToJson(
        LogInCustomerEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'role': instance.role,
      'token': instance.token,
    };
