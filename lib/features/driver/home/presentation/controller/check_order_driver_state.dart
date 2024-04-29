part of 'check_order_driver_cubit.dart';

@freezed
class CheckOrderDriverState with _$CheckOrderDriverState {
  const factory CheckOrderDriverState.idle() = _Idle;
  const factory CheckOrderDriverState.loading() = _Loading;
  const factory CheckOrderDriverState.success(BaseEntity baseEntity) = _Success;
  const factory CheckOrderDriverState.error(NetworkExceptions networkExceptions) =
      _Error;
}
