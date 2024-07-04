import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_commerce/features/screens/login_screen.dart';
import 'package:online_commerce/features/screens/widgets/list_of_onboard_image.dart';

class PasswordResetScreen extends StatefulWidget {
  const PasswordResetScreen({super.key});

  @override
  State<PasswordResetScreen> createState() =>
      _PasswordResetScreenState();
}

class _PasswordResetScreenState extends State<PasswordResetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: (){
            Get.offAll(()=>const LoginScreen());
          }, icon: const Icon(Icons.close)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              const Image(
                height: 200,
                width: 200,
                image: AssetImage(OnboardImageList.onBoardingImage3),
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                'Password Reset Email Sent',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 16),

              Text(
                'Your Account Security is Our Priority! We\'ve Sent You a Secure Link to Safely Change Your Password and Keep Your Account Protected',
                style:Theme.of(context).textTheme.bodyMedium, textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              SizedBox(width:double.maxFinite,child: ElevatedButton(onPressed: (){
                }, child: const Text('Done'))),
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
