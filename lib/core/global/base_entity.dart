import 'package:json_annotation/json_annotation.dart';
part 'base_entity.g.dart';
@JsonSerializable()
class BaseEntity<T> {
  @JsonKey(name: 'message')
  final String message;

  factory BaseEntity.fromJson(Map<String, dynamic> json) =>
      _$BaseEntityFromJson(json);

  BaseEntity({required this.message});

  Map<String, dynamic> toJson() => _$BaseEntityToJson(this);
}
