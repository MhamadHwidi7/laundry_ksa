import 'package:json_annotation/json_annotation.dart';
part 'log_in_driver_entity.g.dart';

@JsonSerializable()
class LogInDriverEntity{
  @JsonKey(name: "id")
  final String laundryId;
  @JsonKey(name: "token")
  final String token;
  LogInDriverEntity({required this.laundryId, required this.token});

  factory LogInDriverEntity.fromJson(Map<String, dynamic> json) => _$LogInDriverEntityFromJson(json);

  Map<String, dynamic> toJson() => _$LogInDriverEntityToJson(this);
}