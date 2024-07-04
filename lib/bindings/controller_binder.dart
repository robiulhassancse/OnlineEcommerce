import 'package:get/get.dart';
import 'package:online_commerce/controller/main_bottom_nav_controller.dart';
import 'package:online_commerce/controller/onboarding_controller.dart';

class ControllerBinder extends Bindings{
  @override
  void dependencies() {
    Get.put(OnBoardingController());
    Get.put(MainBottomNavBarController());
  }

}