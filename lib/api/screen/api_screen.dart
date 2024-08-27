import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:session_code_flutter/api/cubit/api_cubit.dart';

class ApiScreen extends StatelessWidget {
  const ApiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApiCubit, ApiState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Api'),
          ),
          body: state is ApiLoadingState
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemCount: BlocProvider.of<ApiCubit>(context).albums.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(BlocProvider.of<ApiCubit>(context)
                          .albums[index]
                          .title),
                      subtitle: Text(BlocProvider.of<ApiCubit>(context)
                          .albums[index]
                          .id
                          .toString()),
                      leading: Text(BlocProvider.of<ApiCubit>(context)
                          .albums[index]
                          .userId
                          .toString()),
                    );
                  },
                ),
        );
      },
    );
  }
}