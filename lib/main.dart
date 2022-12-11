import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodtest/pages/providerpage.dart';

import 'pages/changenotifierproviderpage.dart';
import 'pages/futureproviderpage.dart';
import 'pages/statenotifierproviderpage.dart';
import 'pages/stateproviderpage.dart';
import 'pages/streamproviderpage.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
     
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        '/provider': (context) => const ProviderPage(),
        '/stateprovider': (context) => const StateProviderPage(),
        '/futureprovider': (context) => const FutureProviderPage(),
        '/streamprovider': (context) => const StreamProviderPage(),
        '/statenotifierprovider': (context) => const StateNotifierProviderPage(),
        '/changenotifierprovider': (context) => const ChangeNotifierProviderPage()

      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: ListView(
        children:  [
          ListTile(
            title: const Text('Provider'),
            onTap: () => Navigator.pushNamed(context, '/provider'),
          ),
         const SizedBox(height: 20),
          ListTile(
            title: const Text('State Provider'),
            onTap: () => Navigator.pushNamed(context, '/stateprovider'),
          ),
                   const SizedBox(height: 20),

          ListTile(
            title: const Text('Future Provider'),
            onTap: () => Navigator.pushNamed(context, '/futureprovider'),
          ),
                   const SizedBox(height: 20),

          ListTile(
            title: const Text('Stream Provider'),
            onTap: () => Navigator.pushNamed(context, '/streamprovider'),
          ),
                   const SizedBox(height: 20),

          ListTile(
            title: const Text('State Notifier Provider'),
            onTap: () => Navigator.pushNamed(context, '/statenotifierprovider'),
          
          ),
                   const SizedBox(height: 20),

          ListTile(
            title: const Text('Change Notifier Provider'),
            onTap: () => Navigator.pushNamed(context, '/changenotifierprovider'),
          )
        ],
      )
    );
  }
}
