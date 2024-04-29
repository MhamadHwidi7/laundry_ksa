import 'package:json_annotation/json_annotation.dart';
part 'log_in_entity.g.dart';

@JsonSerializable()
class LogInLaundryEntity{
  @JsonKey(name: "id")
  final String laundryId;
  @JsonKey(name: "token")
  final String token;
  LogInLaundryEntity({required this.laundryId, required this.token});

  factory LogInLaundryEntity.fromJson(Map<String, dynamic> json) => _$LogInLaundryEntityFromJson(json);

  Map<String, dynamic> toJson() => _$LogInLaundryEntityToJson(this);
}