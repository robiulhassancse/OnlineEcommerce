import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:online_commerce/features/screens/home_screen.dart';
import 'package:online_commerce/features/screens/login_screen.dart';
import 'package:online_commerce/features/screens/main_bottom_nav_screen.dart';

class OnBoardingController extends GetxController{
  static OnBoardingController get instance => Get.find();

  final pageController =PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(index)=> currentPageIndex.value = index;

  void dotNavigation(index){
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }
  void nextPage(){
    if(currentPageIndex.value ==2){
      Get.offAll(()=>const MainBottomNavScreen());
    }else{
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }
  void skipPage(){
    currentPageIndex.value =2;
    pageController.jumpToPage(2);
  }
}