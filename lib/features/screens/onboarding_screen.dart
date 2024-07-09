import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_commerce/controller/onboarding_controller.dart';
import 'package:online_commerce/features/screens/widgets/home/bottom_dotted_nav.dart';
import 'package:online_commerce/features/screens/widgets/list_of_onboard_image.dart';
import 'package:online_commerce/features/screens/widgets/onboarding_next_button.dart';
import 'package:online_commerce/features/screens/widgets/onboarding_skip_button.dart';
import 'package:online_commerce/features/screens/widgets/onboard_page.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: SafeArea(
        child: GetBuilder<OnBoardingController>(
          builder: (controller) {
            return Stack(
              children: [
                PageView(
                  controller: controller.pageController,
                  onPageChanged: controller.updatePageIndicator,
                  children:  const [
                    OnBoardingPage(
                      image: OnboardImageList.onBoardingImage1,
                      title: OnboardImageList.onBoardingTitle1,
                      subtitle: OnboardImageList.onBoardingSubTitle1,
                    ),
                    OnBoardingPage(
                      image: OnboardImageList.onBoardingImage2,
                      title: OnboardImageList.onBoardingTitle2,
                      subtitle: OnboardImageList.onBoardingSubTitle2,
                    ),
                    OnBoardingPage(
                      image: OnboardImageList.onBoardingImage3,
                      title: OnboardImageList.onBoardingTitle3,
                      subtitle: OnboardImageList.onBoardingSubTitle3,
                    ),
                  ],
                ),
                const OnBoardingSkip(),
                const BottomDotNavigation(),
                const OnBoardNextButton()
              ],
            );
          }
        ),
      ),
    );
  }
}




