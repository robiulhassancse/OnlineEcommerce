// import 'package:flutter/material.dart';
// import 'package:online_commerce/features/screens/email_verification_screen.dart';
// import 'package:online_commerce/features/screens/widgets/list_of_onboard_image.dart';
// import 'package:online_commerce/features/screens/widgets/verify_email_address_screen.dart';
//
// class AccountSuccessFullyScreen extends StatefulWidget {
//   const AccountSuccessFullyScreen({super.key});
//
//   @override
//   State<AccountSuccessFullyScreen> createState() =>
//       _AccountSuccessFullyScreenState();
// }
//
// class _AccountSuccessFullyScreenState extends State<AccountSuccessFullyScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(32.0),
//           child: Column(
//             children: [
//               SizedBox(height: 80,),
//               VerifyEmailAddressScreen(
//                   image: OnboardImageList.onBoardingImage2,
//                   title: 'Your account successfully created!',
//                   description: 'Welcome to Your Ultimate Shopping Destination: Your Account is Created.Unleash the Joy of Seamless Online Shopping!',
//                   onPress: (){},
//                   elevatedButtonText: 'Continue'),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:online_commerce/features/screens/widgets/list_of_onboard_image.dart';

class AccountSuccessFullyScreen extends StatefulWidget {
  const AccountSuccessFullyScreen({super.key});

  @override
  State<AccountSuccessFullyScreen> createState() =>
      _AccountSuccessFullyScreenState();
}

class _AccountSuccessFullyScreenState extends State<AccountSuccessFullyScreen> {
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
                image: AssetImage(OnboardImageList.onBoardingImage2),
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                'Your account successfully created!',
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                'Welcome to Your Ultimate Shopping Destination: Your Account is Created.Unleash the Joy of Seamless Online Shopping!',
                style:Theme.of(context).textTheme.bodyMedium, textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              SizedBox(width:double.maxFinite,child: ElevatedButton(onPressed: (){}, child: const Text('Continue'))),

            ],
          ),
        ),
      ),
    );
  }
}
