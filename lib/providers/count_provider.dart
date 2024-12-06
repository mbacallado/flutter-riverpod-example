import 'package:riverpod_annotation/riverpod_annotation.dart';

//Mandatory for create the provider generated code.
part 'count_provider.g.dart';

//With this @riverpod decorator, it is inferred that a provider will be created.
@riverpod
class CountNotifier extends _$CountNotifier {
  //initial value.
  @override
  int build() => 0;

  //methods to update the state.
  void increment() => state++;
}
