import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:laundry_app/core/utils/isar_utils.dart';
import 'package:laundry_app/features/customer/payment/data/model/debit_card_model.dart';
import 'package:laundry_app/features/customer/payment/domain/entity/debit_card_entity.dart';
import 'package:laundry_app/features/customer/payment/domain/params/add_debit_card_params.dart';
import 'package:laundry_app/features/customer/payment/domain/params/delete_debit_card_params.dart';

abstract class PaymentBaseLocalDataSource {
  Future<void> addDebitCard(AddDebitCardParams addDebitCardParams);
  Future<void> deleteDebitCard(DeleteDebitCardParams deleteDebitCardParams);
  Future<List<DebitCardEntity>> getDebitCards();
}

@Singleton(as: PaymentBaseLocalDataSource)
class PaymentLocalDataSource implements PaymentBaseLocalDataSource {
  PaymentLocalDataSource(this._isar);

  final IsarUtils _isar;

  @override
  Future<void> addDebitCard(AddDebitCardParams addDebitCardParams) async {
    final cardModel = DebitCardModel(
      holderName: addDebitCardParams.holderName,
      cardNumber: addDebitCardParams.cardNumber,
      cardExpDate: addDebitCardParams.cardExpDate,
      cvvCode: addDebitCardParams.cvvCode,
    );
    final reservationEntity = cardModel.toEntity();
    await _isar.isarDB.writeTxn(() async {
      await _isar.isarDB.debitCardEntitys.put(reservationEntity);
    });
  }

  @override
  Future<void> deleteDebitCard(
      DeleteDebitCardParams deleteDebitCardParams) async {
    await _isar.isarDB.writeTxn(() async {
      await _isar.isarDB.debitCardEntitys.delete(deleteDebitCardParams.id);
    });
  }

  @override
  Future<List<DebitCardEntity>> getDebitCards() async {
    final cards = await _isar.isarDB.debitCardEntitys.where().findAll();
    return cards;
  }
}
