import 'package:laundry_app/features/customer/auth/domain/entity/log_in_customer_entity.dart';

class LogInCustomerModel extends LogInCustomerEntity {
  LogInCustomerModel(
      {required super.id, required super.role, required super.token});

  LogInCustomerEntity toEntity() {
    return LogInCustomerEntity(id: id, role: role, token: token);
  }

  factory LogInCustomerModel.fromEntity(LogInCustomerEntity customer) {
    return LogInCustomerModel(
      id: customer.id,
      role: customer.role,
      token: customer.token,
    );
  }
}
