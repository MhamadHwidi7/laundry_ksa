import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:laundry_app/core/errors/local_exceptions.dart';
import 'package:laundry_app/features/customer/payment/domain/entity/debit_card_entity.dart';
import 'package:laundry_app/features/customer/payment/domain/repository/base_repository.dart';

@singleton
class GetDebitCardsUseCase {
  final PaymentBaseRepository _paymentBaseRepository;

  GetDebitCardsUseCase({required PaymentBaseRepository paymentBaseRepository})
      : _paymentBaseRepository = paymentBaseRepository;

  Future<Either<LocalExceptions, List<DebitCardEntity>>> call() async {
    return await _paymentBaseRepository.getDebitCards();
  }
}
