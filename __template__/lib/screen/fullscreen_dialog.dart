import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FullscreenDialog extends StatelessWidget {
  const FullscreenDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fullscreen Dialog'),
        automaticallyImplyLeading: false, // Remove the default back button
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            padding: const EdgeInsets.only(right: 16),
            onPressed: () {
              Get.back(); // Close the dialog
            },
          ),
        ],
      ),
      body: const Center(
        child: Text('This is a fullscreen dialog'),
      ),
    );
  }
}
