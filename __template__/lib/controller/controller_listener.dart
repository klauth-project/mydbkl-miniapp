import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '__NAME___controller.dart';

class __TITLE__Listener extends StatelessWidget {
  final Widget Function(Map<String, dynamic>) builder;

  const __TITLE__Listener({super.key, required this.builder});

  @override
  Widget build(BuildContext context) {
    final __TITLE__Controller ssoController = Get.find<__TITLE__Controller>();

    return Obx(() {
      return builder({'isEnabled': ssoController.isEnabled.value});
    });
  }
}
