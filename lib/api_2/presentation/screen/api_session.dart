import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:session_code_flutter/api_2/presentation/cubit/chef_cubit.dart';
import 'package:session_code_flutter/api_2/presentation/cubit/chef_state.dart';

class ApiSession extends StatelessWidget {
  const ApiSession({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChefCubit, ChefState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Api Session'),
          ),
          body: const Center(
            child: Text('Api Session'),
          ),
        );
      },
    );
  }
}
