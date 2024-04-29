class DeleteDebitCardParams {
  final int id;

  DeleteDebitCardParams({required this.id});

  Map<String, dynamic> toJson() => {
        "id": id,
      };
}
