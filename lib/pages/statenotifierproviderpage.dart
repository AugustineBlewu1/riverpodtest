

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodtest/services/state_notifierchanges.dart';

class StateNotifierProviderPage extends ConsumerWidget {
  const StateNotifierProviderPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final caer = ref.watch(stateNotifierProvider);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...caer.map((e) => Text(e.toString())),
            ElevatedButton(
                onPressed: () => ref.read(stateNotifierProvider.notifier).add('Cafe'),
                child: const Text('Add')),
            ElevatedButton(
                onPressed: () => ref.read(stateNotifierProvider.notifier).remove('Cafe'),
                child: const Text('Remove')),
                
          ],
        ),
      ),
    );
  }
}