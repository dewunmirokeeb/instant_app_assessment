import 'package:flutter/material.dart';
import 'package:flutter_eval/flutter_eval.dart';
import 'package:flutter_eval/widgets.dart';
import 'package:dart_eval/dart_eval_bridge.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return HotSwapLoader(
      uri:
          "https://github.com/dewunmirokeeb/instant_app_assessment/blob/main/version_xxx.evc?raw=true",
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Instan App Example',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Title'),
      ),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return HotSwap(
      id: '#myapp_main_scaffold_1',
      args: [
        $BuildContext.wrap(context),
        _counter,
        $Function((runtime, target, args) {
          _incrementCounter();
          return null;
        })
      ],
      childBuilder: (context) => const Scaffold(
        body: Center(
          child: SizedBox(
              width: 50, height: 50, child: CircularProgressIndicator()),
        ),
      ),
    );
  }
}
