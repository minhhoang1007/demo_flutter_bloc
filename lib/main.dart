import 'package:demo_bloc_2021/screen/home/ui/home_screen.dart';
import 'package:demo_bloc_2021/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'screen/home/bloc/counter_bloc.dart';
import 'simple_bloc_observer.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (_, theme) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: theme,
            debugShowCheckedModeBanner: false,
            // home: HomeScreen(),
            home: BlocProvider(
              create: (_) => CounterBloc(),
              child: HomeScreen(),
            ),
          );
        },
      ),
    );
  }
}
