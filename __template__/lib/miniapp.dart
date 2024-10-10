library __NAME__;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'component/start_button.dart';
import 'controller/controller_listener.dart';
import 'controller/__NAME___controller.dart';
import 'routes.dart';

class __TITLE__ {
  __TITLE__() {
    initialize();
  }

  static Future<void> initialize() async {
    await GetStorage.init();
    Get.put(__TITLE__Controller());
  }

  static Map<String, dynamic> configs() {
    return {
      'headerColor': Colors.white,
    };
  }

  static Widget listener(
      {required Widget Function(Map<String, dynamic>) builder}) {
    return __TITLE__Listener(builder: builder);
  }

  static Widget startButton(BuildContext context) {
    return StartButton(context: context);
  }

  static bool isEnabled() {
    return Get.find<__TITLE__Controller>().isEnabled.value;
  }

  static List<GetPage> routes() {
    return pageRoutes;
  }
}
