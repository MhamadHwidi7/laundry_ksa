import 'package:json_annotation/json_annotation.dart';
part 'log_in_entity.g.dart';

@JsonSerializable()
class LogInDriverEntity {
  @JsonKey(name: "id")
  final String driverId;
  @JsonKey(name: "token")
  final String token;
  LogInDriverEntity({required this.driverId, required this.token});

  factory LogInDriverEntity.fromJson(Map<String, dynamic> json) =>
      _$LogInDriverEntityFromJson(json);

  Map<String, dynamic> toJson() => _$LogInDriverEntityToJson(this);
}
