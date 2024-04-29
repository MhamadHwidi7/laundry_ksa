import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:laundry_app/core/errors/local_exceptions.dart';
import 'package:laundry_app/features/customer/payment/domain/params/add_debit_card_params.dart';
import 'package:laundry_app/features/customer/payment/domain/repository/base_repository.dart';

@singleton
class AddDebitCardUseCase {
  final PaymentBaseRepository _paymentBaseRepository;

  AddDebitCardUseCase({required PaymentBaseRepository paymentBaseRepository})
      : _paymentBaseRepository = paymentBaseRepository;

  Future<Either<LocalExceptions, void>> call(
      AddDebitCardParams addDebitCardParams) async {
    return await _paymentBaseRepository.addDebitCard(addDebitCardParams);
  }
}
