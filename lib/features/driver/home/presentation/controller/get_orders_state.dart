part of 'get_orders_cubit.dart';


@freezed
class GetOrdersState with _$GetOrdersState {
  const factory GetOrdersState.loading() = _Loading;
  const factory GetOrdersState.success(BaseDriverOrdersEntity baseDriverOrdersEntity) = _Success;
  const factory GetOrdersState.error(NetworkExceptions networkExceptions) =
      _Error;
}
