part of 'log_in_laundry_cubit.dart';

@freezed
class LogInLaundState with _$LogInLaundState {
  const factory LogInLaundState.initial() = _Initial;
  const factory LogInLaundState.loading() = _Loading;
  const factory LogInLaundState.success(LogInLaundryEntity logInLaundryEntity) = _Success;
  const factory LogInLaundState.error(NetworkExceptions networkExceptions) =
      _Error;
}
