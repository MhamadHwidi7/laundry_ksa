part of 'check_wave_driver_cubit.dart';

@freezed
class CheckWaveDriverState with _$CheckWaveDriverState {
  const factory CheckWaveDriverState.idle() = _Idle;
  const factory CheckWaveDriverState.loading() = _Loading;
  const factory CheckWaveDriverState.success(BaseEntity baseEntity) = _Success;
  const factory CheckWaveDriverState.error(NetworkExceptions networkExceptions) =
      _Error;
}
