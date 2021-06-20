import 'package:demo_bloc_2021/screen/home/bloc/counter_bloc.dart';
import 'package:demo_bloc_2021/screen/home/bloc/counter_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../theme_cubit.dart';

class HomeScreen extends StatelessWidget {
  // CounterBloc blochome = CounterBloc();
  // int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Bloc Flutter"),
      ),
      body: BlocBuilder<CounterBloc, int>(
        builder: (_, count) {
          return _bodyHome(count);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        backgroundColor: Colors.blue,
        elevation: 5,
        splashColor: Colors.grey,
        onPressed: () {
          context.read<CounterBloc>().add(CounterEvent.increment);
          // blochome.add(CounterEvent.increment);
          // number = blochome.numTest;
        },
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: Column(
      //   crossAxisAlignment: CrossAxisAlignment.end,
      //   mainAxisAlignment: MainAxisAlignment.end,
      //   children: <Widget>[
      //     Padding(
      //       padding: const EdgeInsets.symmetric(vertical: 5.0),
      //       child: FloatingActionButton(
      //         child: const Icon(Icons.add),
      //         onPressed: () =>
      //             context.read<CounterBloc>().add(CounterEvent.increment),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.symmetric(vertical: 5.0),
      //       child: FloatingActionButton(
      //         child: const Icon(Icons.remove),
      //         onPressed: () =>
      //             context.read<CounterBloc>().add(CounterEvent.decrement),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.symmetric(vertical: 5.0),
      //       child: FloatingActionButton(
      //         child: const Icon(Icons.brightness_6),
      //         onPressed: () => context.read<ThemeCubit>().toggleTheme(),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.symmetric(vertical: 5.0),
      //       child: FloatingActionButton(
      //         backgroundColor: Colors.red,
      //         child: const Icon(Icons.error),
      //         onPressed: () =>
      //             context.read<CounterBloc>().add(CounterEvent.error),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }

  Widget _bodyHome(int numb) {
    return Container(
      child: Center(
        child: Text(
          "$numb",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
