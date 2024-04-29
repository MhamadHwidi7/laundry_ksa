class EndPoints {
  static const String baseUrl = 'https://laundry-qqgp.onrender.com/api';
  static const String logInLaundry = '$baseUrl/auth/login';
  static const String logInDriver = '$baseUrl/auth/login';
  ///todo
    static const String becomeDriver = '$baseUrl/driver/becomeDriver';

  static const String logInCustomer = '$baseUrl/auth/login';
  static const String registerCustomer = '$baseUrl/auth/login';
  ///TODO:wait the backend to send the api
    static const String forgetPasswordCustomer = '$baseUrl/auth/login';
    static const String laundryOrders = '$baseUrl/order/laundry';
        static const String statistcsLaundry = '$baseUrl/laundry/statistcs';
        static const String statistcsDriver = '$baseUrl/driver/statistcs';

        static const String getOrders = '$baseUrl/order/wave/driver';
        static const String checkOrderDriver = '$baseUrl/order/driver/check';
        static const String checkWaveByDriver = '$baseUrl/order/wave/check';
        static const String checkWaveLaundry = '$baseUrl/order/laundry/check';

}
