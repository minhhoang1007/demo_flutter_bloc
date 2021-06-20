import 'counter_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  /// {@macro counter_bloc}
  CounterBloc() : super(0);
  int numTest = 0;
  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    switch (event) {
      case CounterEvent.decrement:
        yield state - 1;
        numTest = state;
        print(state);
        break;
      case CounterEvent.increment:
        yield state + 1;
        numTest = state;
        print(state);
        break;
      case CounterEvent.error:
        addError(Exception('unsupported event'));
    }
  }
}
