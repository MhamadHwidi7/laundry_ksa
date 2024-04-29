import 'package:dartz/dartz.dart';
import 'package:laundry_app/core/errors/local_exceptions.dart';
import 'package:laundry_app/features/customer/payment/domain/entity/debit_card_entity.dart';
import 'package:laundry_app/features/customer/payment/domain/params/add_debit_card_params.dart';
import 'package:laundry_app/features/customer/payment/domain/params/delete_debit_card_params.dart';

abstract class PaymentBaseRepository {
  Future<Either<LocalExceptions, void>> addDebitCard(
      AddDebitCardParams addDebitCardParams);
  Future<Either<LocalExceptions, void>> deleteDebitCard(
      DeleteDebitCardParams deleteDebitCardParams);
  Future<Either<LocalExceptions, List<DebitCardEntity>>> getDebitCards();
}
