part of 'become_driver_cubit.dart';

@freezed
class BecomeDriverState with _$BecomeDriverState {
  const factory BecomeDriverState.initial() = _Initial;
  const factory BecomeDriverState.loading() = _Loading;
  const factory BecomeDriverState.success(BecomeDriverEntity becomeDriverEntity) = _Success;
  const factory BecomeDriverState.error(NetworkExceptions networkExceptions) =
      _Error;
}
