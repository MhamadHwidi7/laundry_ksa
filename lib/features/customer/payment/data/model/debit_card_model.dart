import 'package:laundry_app/features/customer/payment/domain/entity/debit_card_entity.dart';

class DebitCardModel extends DebitCardEntity {
  DebitCardModel({
    required super.holderName,
    required super.cardExpDate,
    required super.cardNumber,
    required super.cvvCode,
  });

  static DebitCardModel fromEntity(DebitCardEntity entity) {
    return DebitCardModel(
      holderName: entity.holderName,
      cardNumber: entity.cardNumber,
      cardExpDate: entity.cardExpDate,
      cvvCode: entity.cvvCode,
    );
  }

  DebitCardEntity toEntity() {
    return DebitCardEntity(
      holderName: holderName,
      cardNumber: cardNumber,
      cardExpDate: cardExpDate,
      cvvCode: cvvCode,
    );
  }
}
