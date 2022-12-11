import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodtest/models/news_model.dart';
import 'package:riverpodtest/services/http.dart';

final futureprovider = FutureProvider.autoDispose<NewsModel>((ref) {
  final service = ref.watch(apiServiceProvider);
  return service.getNews();
});

class FutureProviderPage extends ConsumerWidget {
  const FutureProviderPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () => ref.refresh(futureprovider.future),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            Center(
              child: Text(
                'FutureProvider',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            const SizedBox(height: 20),
            ref.watch(futureprovider).when(
                data: (data) => Column(
                      children: [
                        Text(
                          'Activity: ${data.activity}',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Text(
                          'Type: ${data.type}',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Text(
                          'Participants: ${data.participants}',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Text(
                          'Price: ${data.price}',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        
                        Text(
                          'Accessibility: ${data.accessibility}',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ],
                    ),
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (e, s) => Center(child: Text(e.toString()))),
          
          ],
        ),
      ),
    );
  }
}
