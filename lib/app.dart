import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polus_hack/pages/home/bloc/home_cubit.dart';
import 'package:polus_hack/pages/home/home_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<HomeCubit>(
          create: (ctx){
            return HomeCubit();
          },
          child: const HomePage(),
      ),
    );
  }
}
