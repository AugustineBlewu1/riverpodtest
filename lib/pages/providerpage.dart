
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final Provider<int> numberProvder = Provider((ref) => 42);


class ProviderPage extends ConsumerWidget {
  const ProviderPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final number = ref.watch(numberProvder);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider'),
      ),
      body:  Center(
          child: Text(
            '$number',
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
      
    );
  }
}