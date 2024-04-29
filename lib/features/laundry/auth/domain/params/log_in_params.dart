class LogInLaundryParams {
  final String phoneNumber;
  final String password;

  LogInLaundryParams({required this.phoneNumber, required this.password});
  Map<String, dynamic> toJson() =>
      {"phonenumber": phoneNumber, "password": password};
}
