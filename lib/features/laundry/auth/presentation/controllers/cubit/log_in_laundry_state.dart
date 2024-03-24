part of 'log_in_laundry_cubit.dart';

@freezed
class LogInLaundryState with _$LogInLaundryState {
  const factory LogInLaundryState.initial() = _Initial;
  const factory LogInLaundryState.loading() = _Loading;
  const factory LogInLaundryState.success() = _Success;
  const factory LogInLaundryState.error(NetworkExceptions networkExceptions) =
      _Error;
}
