class LogInCustomerParams {
  final String email;
  final String password;

  LogInCustomerParams({required this.email, required this.password});
  Map<String, dynamic> toJson() => {"email": email, "password": password};
}
