import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:counter/bloc/counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int>{

  @override
  Stream<int> mapEventToState(CounterEvent event) async*{
    switch(event){
      case CounterEvent.decrement:
        yield state -1;
        break;
      case CounterEvent.increment:
        yield state + 1;
        break;
    }
  }
}