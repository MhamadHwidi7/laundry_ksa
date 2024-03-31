import 'package:dio/dio.dart';

import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:laundry_app/core/utils/isar_utils.dart';

@module
abstract class ThirdPartyInjection {
  @singleton
  Dio get dio => Dio();
  @singleton
  InternetConnectionChecker get internetConnectionChecker =>
      InternetConnectionChecker();
  @singleton
  IsarUtils get isarDb => IsarUtils();
}
