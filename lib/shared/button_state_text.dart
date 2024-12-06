import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/providers/count_provider.dart';

//Change StatelessWidget for ConsumerWidget - Widget that consumes the provider.
class ButtonStateText extends ConsumerWidget {
  const ButtonStateText({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(
        countNotifierProvider); //returns the value of the provider's state variable.
    return Text('$count');
  }
}
