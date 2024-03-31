import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart' show Isar;
import 'package:path_provider/path_provider.dart'
    show getApplicationSupportDirectory;

class IsarUtils {
  late Isar _isarDB;

  Isar get isarDB => _isarDB;

  Future<void> initializeIsar() async {
    final dir = await getApplicationSupportDirectory();
    // _isarDB = await Isar.open(
    //   [],
    //   directory: dir.path,
    // );

    if (kDebugMode) {
      print("=======absolute path=========");
      print(dir.absolute);
      print("=============================");
      print(dir);
    }
  }
}
