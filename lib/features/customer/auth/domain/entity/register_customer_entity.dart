import 'package:json_annotation/json_annotation.dart';

part 'register_customer_entity.g.dart';

@JsonSerializable()
class RegisterCustomerEntity {
  @JsonKey(name: "link")
  final String link;
  @JsonKey(name: "message")
  final String message;

  RegisterCustomerEntity({required this.link, required this.message});

  factory RegisterCustomerEntity.fromJson(Map<String, dynamic> json) =>
      _$RegisterCustomerEntityFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterCustomerEntityToJson(this);
}
