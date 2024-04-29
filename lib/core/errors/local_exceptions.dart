import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'local_exceptions.freezed.dart';

@freezed
abstract class LocalExceptions with _$LocalExceptions implements Exception {
  const factory LocalExceptions.fileNotFound() = FileNotFound;
  const factory LocalExceptions.permissionDenied() = PermissionDenied;
  const factory LocalExceptions.storageFull() = StorageFull;
  const factory LocalExceptions.unknownError() = UnknownError;

  static LocalExceptions handleException(dynamic error) {
    if (error is FileSystemException) {
      if (error.osError?.errorCode == 2) {
        return const LocalExceptions.fileNotFound();
      } else if (error.osError?.errorCode == 13) {
        return const LocalExceptions.permissionDenied();
      } else if (error.osError?.errorCode == 28) {
        return const LocalExceptions.storageFull();
      }
    }
    return const LocalExceptions.unknownError();
  }

  static LocalExceptions getException(dynamic error) {
    try {
      LocalExceptions localException;

      if (error is FileSystemException) {
        switch (error.osError?.errorCode) {
          case 2:
            localException = const LocalExceptions.fileNotFound();
            break;
          case 13:
            localException = const LocalExceptions.permissionDenied();
            break;
          case 28:
            localException = const LocalExceptions.storageFull();
            break;
          default:
            localException = const LocalExceptions.unknownError();
        }
      } else {
        localException = const LocalExceptions.unknownError();
      }

      return localException;
    } catch (_) {
      return const LocalExceptions.unknownError();
    }
  }

  static String getErrorMessage(LocalExceptions exception) {
    return exception.when(
      fileNotFound: () => 'File not found',
      permissionDenied: () => 'Permission denied',
      storageFull: () => 'Storage full',
      unknownError: () => 'An unknown error occurred',
    );
  }
}
