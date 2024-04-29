import 'package:isar/isar.dart';

part 'debit_card_entity.g.dart';

@collection
class DebitCardEntity {
  DebitCardEntity({
    required this.holderName,
    required this.cardExpDate,
    required this.cardNumber,
    required this.cvvCode,
  });

  Id id = Isar.autoIncrement;
  @Index()
  late String holderName;
  late DateTime cardExpDate;
  late int cardNumber;
  late int cvvCode;
}
