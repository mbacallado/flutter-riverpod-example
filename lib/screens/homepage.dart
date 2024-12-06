import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/providers/count_provider.dart';
import 'package:riverpod_test/shared/button_state_text.dart';

//Change StatefulWidget for ConsumerStateWidget.
class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  ConsumerState<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            ButtonStateText() //Custom Widget
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ref
            .read(countNotifierProvider.notifier)
            .increment, //read the (notifier) provider for use the methods for update state.
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
