import 'dart:async';
import 'dart:ffi';


class CounterBloc {

  final counterController = StreamController();

  Stream get getCount => counterController.stream;

  void updateCount() {
    Future.delayed(const Duration(seconds: 1));
    counterController.sink.add(1);
  }

  void dispose() {
    counterController.close();
  }

}

final bloc = CounterBloc();