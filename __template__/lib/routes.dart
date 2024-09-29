import 'package:get/get.dart';
import './screen/home_screen.dart';
import './screen/second_screen.dart';

List<GetPage> pageRoutes = [
  GetPage(
    name: '/__NAME__',
    page: () => const HomeScreen(),
  ),
  GetPage(
    name: '/__NAME__/second',
    page: () => const SecondScreen(),
  ),
];
