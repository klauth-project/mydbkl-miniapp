import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'fullscreen_dialog.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Home Screen'),
            const SizedBox(width: 20),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/__NAME__/second');
              },
              child: const Text('Go to Second Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(
                  () => const FullscreenDialog(),
                  fullscreenDialog: true,
                );
              },
              child: const Text('Fullscreen Dialog'),
            ),
          ],
        ),
      ),
    );
  }
}
