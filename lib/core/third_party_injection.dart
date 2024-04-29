import 'package:dio/dio.dart';

import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:isar/isar.dart';
import 'package:laundry_app/core/utils/isar_utils.dart';
import 'package:laundry_app/core/utils/shared_preference_utils.dart';
import 'package:laundry_app/features/customer/payment/domain/entity/debit_card_entity.dart';
import 'package:path_provider/path_provider.dart';

@module
abstract class ThirdPartyInjection {
  @singleton
  Dio get dio => Dio();
  @singleton
  InternetConnectionChecker get internetConnectionChecker =>
      InternetConnectionChecker();
  // @singleton
  // Future<Isar> get isar async {
  //   final dir = await getApplicationSupportDirectory();
  //   return await Isar.open(
  //     [DebitCardEntitySchema],
  //     directory: dir.path,
  //   );
  // }
  @singleton
  IsarUtils get isarDb => IsarUtils();
  @singleton
  SharedPreferencesUtils get sharedPreferencesUtils;
}
