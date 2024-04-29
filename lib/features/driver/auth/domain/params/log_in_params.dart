class LogInDriverParams {
  final String phoneNumber;
  final String password;

  LogInDriverParams({required this.phoneNumber, required this.password});
  Map<String, dynamic> toJson() =>
      {"phonenumber": phoneNumber, "password": password};
}
