import 'package:organic_counter/model/counter_notifier.dart';
import 'package:organic_injector/organic_injector.dart';

class AppConfig{

  AppConfig(){
    Injector.instance.mapToValue(CounterNotifier, new CounterNotifier());
  }
}