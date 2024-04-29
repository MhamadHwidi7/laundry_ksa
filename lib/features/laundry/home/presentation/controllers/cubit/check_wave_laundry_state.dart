part of 'check_wave_laundry_cubit.dart';

@freezed
class CheckWaveLaundryState with _$CheckWaveLaundryState {
  const factory CheckWaveLaundryState.idle() = _Idle;
  const factory CheckWaveLaundryState.loading() = _Loading;
  const factory CheckWaveLaundryState.success(BaseEntity baseEntity) = _Success;
  const factory CheckWaveLaundryState.error(NetworkExceptions networkExceptions) =
      _Error;
}
