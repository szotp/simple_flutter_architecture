import 'package:simple_flutter_architecture/helper.dart';

class AppData {
  final counter = new Property(0);

  void increment() {
    counter.value++;
  }
}
