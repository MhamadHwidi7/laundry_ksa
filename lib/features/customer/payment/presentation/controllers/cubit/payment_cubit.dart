import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:laundry_app/core/errors/local_exceptions.dart';
import 'package:laundry_app/features/customer/payment/domain/params/add_debit_card_params.dart';
import 'package:laundry_app/features/customer/payment/domain/params/delete_debit_card_params.dart';
import 'package:laundry_app/features/customer/payment/domain/use_case/add_debit_card_use_case.dart';
import 'package:laundry_app/features/customer/payment/domain/use_case/delete_debit_card_use_case.dart';
import 'package:laundry_app/features/customer/payment/domain/use_case/get_debit_cards_use_case.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_cubit.freezed.dart';
part 'payment_state.dart';

//!this should be @injectable but i make it singleton just for this time and i will change it back later to solve the factoryasync

//* i found the solution that was make error factoryAsync beacuse i was making the injection for the isar in the third party and under the @module
//* i fix it by making isarUtils and make into the third party getter for the isarUtils :)
@injectable
class PaymentCubit extends Cubit<PaymentState> {
  final AddDebitCardUseCase _addDebitCardUseCase;
  final GetDebitCardsUseCase _getDebitCardsUseCase;
  final DeleteDebitCardUseCase _deleteDebitCardUseCase;

  PaymentCubit(
    this._addDebitCardUseCase,
    this._getDebitCardsUseCase,
    this._deleteDebitCardUseCase,
  ) : super(const PaymentState.initial());

  Future<void> emitAddNewDebit(AddDebitCardParams addDebitCardParams) async {
    emit(const PaymentState.loading());
    final response = await _addDebitCardUseCase.call(addDebitCardParams);
    response.fold(
      (l) => emit(PaymentState.error(l)),
      (r) => emit(const PaymentState.success()),
    );
  }

  Future<void> emitDeleteDebitCard(
    DeleteDebitCardParams deleteDebitCardParams,
  ) async {
    emit(const PaymentState.loading());
    final response = await _deleteDebitCardUseCase.call(deleteDebitCardParams);
    response.fold(
      (l) => emit(PaymentState.error(l)),
      (r) => emit(const PaymentState.success()),
    );
  }

  Future<void> emitGetDebitCards() async {
    emit(const PaymentState.loading());
    final response = await _getDebitCardsUseCase.call();
    response.fold(
      (l) => emit(PaymentState.error(l)),
      (r) => emit(const PaymentState.success()),
    );
  }
}
