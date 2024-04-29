import 'package:json_annotation/json_annotation.dart';
part 'become_driver_entity.g.dart';

@JsonSerializable()
class BecomeDriverEntity{
  @JsonKey(name: "id")
  final String driverId;

  factory BecomeDriverEntity.fromJson(Map<String, dynamic> json) => _$BecomeDriverEntityFromJson(json);

  BecomeDriverEntity({required this.driverId});

  Map<String, dynamic> toJson() => _$BecomeDriverEntityToJson(this);
}