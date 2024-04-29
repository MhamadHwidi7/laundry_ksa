import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:laundry_app/core/errors/local_exceptions.dart';
import 'package:laundry_app/features/customer/payment/data/data_source/local_data_source.dart';
import 'package:laundry_app/features/customer/payment/domain/entity/debit_card_entity.dart';
import 'package:laundry_app/features/customer/payment/domain/params/add_debit_card_params.dart';
import 'package:laundry_app/features/customer/payment/domain/params/delete_debit_card_params.dart';
import 'package:laundry_app/features/customer/payment/domain/repository/base_repository.dart';

@Singleton(as: PaymentBaseRepository)
class PaymentRepositoryImpl implements PaymentBaseRepository {
  final PaymentBaseLocalDataSource _paymentBaseLocalDataSource;

  PaymentRepositoryImpl(
      {required PaymentBaseLocalDataSource paymentBaseLocalDataSource})
      : _paymentBaseLocalDataSource = paymentBaseLocalDataSource;
  @override
  Future<Either<LocalExceptions, void>> addDebitCard(
      AddDebitCardParams addDebitCardParams) async {
    try {
      final response =
          await _paymentBaseLocalDataSource.addDebitCard(addDebitCardParams);
      return Right(response);
    } on Exception catch (ex) {
      return Left(LocalExceptions.getException(ex));
    }
  }

  @override
  Future<Either<LocalExceptions, void>> deleteDebitCard(
      DeleteDebitCardParams deleteDebitCardParams) async {
    try {
      final response = await _paymentBaseLocalDataSource
          .deleteDebitCard(deleteDebitCardParams);
      return Right(response);
    } on Exception catch (ex) {
      return Left(LocalExceptions.getException(ex));
    }
  }

  @override
  Future<Either<LocalExceptions, List<DebitCardEntity>>> getDebitCards() async {
    try {
      final response = await _paymentBaseLocalDataSource.getDebitCards();
      return Right(response);
    } on Exception catch (ex) {
      return Left(LocalExceptions.getException(ex));
    }
  }
}
