

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodtest/services/change_notifier.dart';

class ChangeNotifierProviderPage extends ConsumerWidget {
  const ChangeNotifierProviderPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final listProducts = ref.watch(products).products;

    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 20),
          Center(
            child: Text(
              'ChangeNotifierProvider',
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: listProducts.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(listProducts[index].name),
                  trailing: Text(listProducts[index].price.toString()),
                );
              },
            ),
          ),

          ElevatedButton(
              onPressed: () => ref.read(products).addProduct(Product('Vee', 2)),
              child: const Text('Add Product'))
        
        ],
      ),
    );
  }
}