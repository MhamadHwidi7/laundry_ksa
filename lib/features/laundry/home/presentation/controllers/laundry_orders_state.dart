part of 'laundry_orders_cubit.dart';

@freezed
class LaundryOrdersState with _$LaundryOrdersState {
  const factory LaundryOrdersState.loading() = _Loading;
  const factory LaundryOrdersState.success(BaseLaundryOrderEntity baseLaundryOrderEntity) = _Success;
  const factory LaundryOrdersState.error(NetworkExceptions networkExceptions) =
      _Error;
}
