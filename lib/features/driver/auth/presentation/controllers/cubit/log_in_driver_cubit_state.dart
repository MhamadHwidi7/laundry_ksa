part of 'log_in_driver_cubit.dart';

@freezed
class LogInDriverState with _$LogInDriverState {
  const factory LogInDriverState.initial() = _Initial;
  const factory LogInDriverState.loading() = _Loading;
  const factory LogInDriverState.success() = _Success;
  const factory LogInDriverState.error(NetworkExceptions networkExceptions) =
      _Error;
}
