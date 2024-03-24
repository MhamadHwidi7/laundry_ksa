import 'package:json_annotation/json_annotation.dart';

part 'log_in_customer_entity.g.dart';

@JsonSerializable()
class LogInCustomerEntity {
  @JsonKey(name: "id")
  final String id;
  @JsonKey(name: "role")
  final String role;
  @JsonKey(name: "token")
  final String token;

  LogInCustomerEntity(
      {required this.id, required this.role, required this.token});

  factory LogInCustomerEntity.fromJson(Map<String, dynamic> json) =>
      _$LogInCustomerEntityFromJson(json);

  Map<String, dynamic> toJson() => _$LogInCustomerEntityToJson(this);
}
