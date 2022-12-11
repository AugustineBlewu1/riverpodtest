

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodtest/services/stream_service.dart';

final stremProviderhere = StreamProvider.autoDispose<int>((ref) {
  final stream =  ref.watch(streamServiveProvider).getStream();
  return stream;
} 
  

);


class StreamProviderPage extends ConsumerWidget {
  const StreamProviderPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 20),
          Center(
            child: Text(
              'StreamProvider',
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          const SizedBox(height: 20),
          ref.watch(stremProviderhere).when(
              data: (data) => Text(
                    '$data',
                    style: Theme.of(context).textTheme.headline6,
                  ),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (e, s) => Center(child: Text(e.toString()))),
        ],
        
      ),
    );
  }
}