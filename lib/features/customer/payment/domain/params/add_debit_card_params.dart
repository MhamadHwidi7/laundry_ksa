class AddDebitCardParams {
  final int cardNumber;
  final String holderName;
  final DateTime cardExpDate;
  final int cvvCode;

  AddDebitCardParams(
      {required this.cardNumber,
      required this.holderName,
      required this.cardExpDate,
      required this.cvvCode});
  Map<String, dynamic> toJson() => {
        "card_number": cardNumber,
        "holder_name": holderName,
        "exp_date": cardExpDate,
        "cvv_code": cvvCode,
      };
}
