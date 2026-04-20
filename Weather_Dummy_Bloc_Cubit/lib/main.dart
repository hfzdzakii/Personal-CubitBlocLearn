import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_bloc_cubit/bloc/weather_bloc.dart';
import 'package:weather_bloc_cubit/cubit/weather_cubit.dart';
import 'package:weather_bloc_cubit/data/weather_repository.dart';
import 'package:weather_bloc_cubit/pages/weather_search_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: BlocProvider(
        create: (context) => WeatherBloc(FakeWeatherRepository()),
        child: WeatherSearchPage(),
      ),
    );
  }
}
