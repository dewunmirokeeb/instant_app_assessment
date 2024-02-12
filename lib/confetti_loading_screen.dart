import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';
import 'package:http/http.dart' as http;

class ConfettiLoadingScreen extends StatefulWidget {
  const ConfettiLoadingScreen({super.key});

  @override
  State<ConfettiLoadingScreen> createState() => _ConfettiLoadingScreenState();
}

class _ConfettiLoadingScreenState extends State<ConfettiLoadingScreen> {
  final ConfettiController _confettiController = ConfettiController();
  bool showLoader = true;
  toggleShowLoader() {
    showLoader = false;
    _confettiController.play();
    setState(() {});
  }

  Future<void> _downloadConfettiPackage() async {
    try {
      final response =
          await http.get(Uri.parse('https://pub.dev/api/packages/confetti'));
      if (response.statusCode == 200) {
        final packageInfo = json.decode(response.body);
        final latestVersion = packageInfo['latest']['version'];
        if (kDebugMode) {
          print('Downloaded Confetti package version: $latestVersion');
          print(packageInfo["content"]);
        }
      } else {
        if (kDebugMode) {
          print('Error downloading Confetti package: ${response.statusCode}');
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error downloading Confetti package: $e');
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _loadConfetti();
  }

  Future<void> _loadConfetti() async {
    await _downloadConfettiPackage();
    toggleShowLoader();
  }

  @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Confetti Instant App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (showLoader) const CircularProgressIndicator(),
            const SizedBox(height: 16),
            if (!showLoader) const Text("Welcome"),
            ConfettiWidget(
              confettiController: _confettiController,
              blastDirectionality: BlastDirectionality.explosive,
              shouldLoop: true,
              colors: const [
                Colors.red,
                Colors.green,
                Colors.blue,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
