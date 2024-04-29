// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseEntity<T> _$BaseEntityFromJson<T>(Map<String, dynamic> json) =>
    BaseEntity<T>(
      message: json['message'] as String,
    );

Map<String, dynamic> _$BaseEntityToJson<T>(BaseEntity<T> instance) =>
    <String, dynamic>{
      'message': instance.message,
    };
