import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:session_code_flutter/state_management_cubit/counter_cubit/counter_cubit.dart';
import 'package:session_code_flutter/state_management_cubit/counter_cubit/counter_state.dart';
import 'package:session_code_flutter/state_management_cubit/dashboard.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: const Center(
          child: Dashboard(),
        ),
        floatingActionButton: BlocBuilder<CounterCubit, CounterStates>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).increment();
                  },
                  child: const Icon(Icons.add),
                ),
                const SizedBox(
                  height: 10,
                ),
                FloatingActionButton(
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).decrement();
                  },
                  child: const Icon(Icons.minimize),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
