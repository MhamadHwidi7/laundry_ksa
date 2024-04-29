import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:laundry_app/core/errors/local_exceptions.dart';
import 'package:laundry_app/features/customer/payment/domain/params/delete_debit_card_params.dart';
import 'package:laundry_app/features/customer/payment/domain/repository/base_repository.dart';

@singleton
class DeleteDebitCardUseCase {
  final PaymentBaseRepository _paymentBaseRepository;

  DeleteDebitCardUseCase({required PaymentBaseRepository paymentBaseRepository})
      : _paymentBaseRepository = paymentBaseRepository;

  Future<Either<LocalExceptions, void>> call(
      DeleteDebitCardParams deleteDebitCardParams) async {
    return await _paymentBaseRepository.deleteDebitCard(deleteDebitCardParams);
  }
}
