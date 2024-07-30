import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:session_code_flutter/state_management_cubit/counter_cubit/counter_cubit.dart';
import 'package:session_code_flutter/state_management_cubit/counter_cubit/counter_state.dart';

class Counter2 extends StatelessWidget {
  const Counter2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: SizedBox(
        width: 150,
        height: 150,
        child: Center(
          child: BlocConsumer<CounterCubit, CounterStates>(
            listener: (context, state) {
              if (state is CounterMinusState) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Decremented'),
                  ),
                );
              }
            },
            builder: (context, state) {
              return Text(
                  '${BlocProvider.of<CounterCubit>(context).countMinus}',
                  style: const TextStyle(fontSize: 30));
            },
          ),
        ),
      ),
    );
  }
}
