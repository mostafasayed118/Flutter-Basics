import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:session_code_flutter/api_2/presentation/cubit/chef_cubit.dart';
import 'package:session_code_flutter/api_2/presentation/screen/api_session.dart';

import '../api_1/cubit/api_cubit.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ApiCubit()..fetchApi()),
        BlocProvider(create: (context) => ChefCubit()..deleteChef()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: ApiSession(),
      ),
    );
  }
}
