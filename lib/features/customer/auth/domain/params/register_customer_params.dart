class RegisterCustomerParams {
  final String fullName;

  final String email;
  final String password;

  RegisterCustomerParams(this.fullName,
      {required this.email, required this.password});
  Map<String, dynamic> toJson() =>
      {"fullname": fullName, "email": email, "password": password};
}
