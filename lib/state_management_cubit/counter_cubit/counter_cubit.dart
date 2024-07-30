import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:session_code_flutter/state_management_cubit/counter_cubit/counter_state.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterInitial());
  int countPlus = 0;
  int countMinus = 0;

  void increment() {
    countPlus++;
    emit(CounterPlusState());
  }

  void decrement() {
    countMinus--;
    emit(CounterMinusState());
  }
}
