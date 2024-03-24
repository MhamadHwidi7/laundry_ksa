import 'package:laundry_app/features/customer/auth/domain/entity/register_customer_entity.dart';

class RegisterCustomerModel extends RegisterCustomerEntity {
  RegisterCustomerModel({required super.link, required super.message});

  factory RegisterCustomerModel.fromEntity(RegisterCustomerEntity entity) {
    return RegisterCustomerModel(
      link: entity.link,
      message: entity.message,
    );
  }

  RegisterCustomerEntity toEntity() {
    return RegisterCustomerEntity(
      link: link,
      message: message,
    );
  }
}
