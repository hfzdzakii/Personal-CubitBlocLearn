import 'package:counter_app_bloc_cubit/bloc/counter_bloc.dart';
import 'package:counter_app_bloc_cubit/cubit/counter_cubit.dart';
import 'package:counter_app_bloc_cubit/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterCubit()),
        BlocProvider(create: (context) => CounterBloc())
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: .fromSeed(seedColor: Colors.deepPurple),
          ),
          home: const MyHomePage(title: 'Flutter Demo Home Page'),
        ),
    );
  }
}
