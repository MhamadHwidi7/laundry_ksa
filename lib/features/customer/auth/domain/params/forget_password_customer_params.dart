class ForgetPasswordCustomerParams {
  final String email;

  ForgetPasswordCustomerParams({required this.email});

  Map<String, dynamic> toJson() => {"email": email};
}
