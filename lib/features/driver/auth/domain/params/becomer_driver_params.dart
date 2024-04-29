class BecomeDriverParams {
  final String phoneNumber;
  final String fullName;
  final List<String> districts;

  BecomeDriverParams({required this.phoneNumber, required this.fullName, required this.districts});

  Map<String, dynamic> toJson() =>
      {"phonenumber": phoneNumber, "fullname": fullName,"districts":districts};
}
