import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_commerce/features/screens/account_successfully_screen.dart';
import 'package:online_commerce/features/screens/widgets/list_of_onboard_image.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              const Image(
                height: 200,
                width: 200,
                image: AssetImage(OnboardImageList.onBoardingImage1),
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                'Verify your email address!',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 16),
                Text('robiul.hassan.cit@gmail.com', style: Theme.of(context).textTheme.bodyLarge,),
              const SizedBox(height: 16),

              Text(
                'Congratulation! Your Account Awaits: Verify Your Email to Start Shopping and Experience a World of Unrivaled Details and Personalized Offers.',
                style:Theme.of(context).textTheme.bodyMedium, textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              SizedBox(width:double.maxFinite,child: ElevatedButton(onPressed: (){
                Get.to(()=> const AccountSuccessFullyScreen());
                }, child: const Text('Continue'))),
              const SizedBox(height: 24),
              TextButton(onPressed: (){}, child: const Text('Resend Email')),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:online_commerce/features/screens/account_successfully_screen.dart';
// import 'package:online_commerce/features/screens/widgets/list_of_onboard_image.dart';
// import 'package:online_commerce/features/screens/widgets/verify_email_address_screen.dart';
//
// class EmailVerificationScreen extends StatefulWidget {
//   const EmailVerificationScreen({super.key});
//
//   @override
//   State<EmailVerificationScreen> createState() =>
//       _EmailVerificationScreenState();
// }
//
// class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(32.0),
//           child: Column(
//             children: [
//               VerifyEmailAddressScreen(
//                 image: OnboardImageList.onBoardingImage1,
//                 title: 'Verify your email address!',
//                 email: 'robiul.hassan.cit@gmail.com',
//                 description:
//                     'Congratulation! Your Account Awaits: Verify Your Email to Start Shopping and Experience a World of Unrivaled Details and Personalized Offers.',
//                 onPress: () {
//                   Get.to(()=> const AccountSuccessFullyScreen());
//                 },
//                 elevatedButtonText: 'Continue',
//                 resendButton: (){},
//                 resendButtonText: 'Resend Code',
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
