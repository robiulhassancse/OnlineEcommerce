// import 'package:flutter/material.dart';
//
// class VerifyEmailAddressScreen extends StatelessWidget {
//   const VerifyEmailAddressScreen({
//     super.key,
//     required this.image,
//     required this.title,
//     this.email,
//     required this.description,
//     required this.onPress,
//     this.resendButton,
//     required this.elevatedButtonText,
//     this.resendButtonText,
//   });
//
//   final String title;
//   final String image;
//   final String? email;
//   final String description;
//   final VoidCallback onPress;
//   final VoidCallback? resendButton;
//   final String elevatedButtonText;
//   final String? resendButtonText;
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Image(
//           height: 200,
//           width: 200,
//           image: AssetImage(image),
//         ),
//         const SizedBox(
//           height: 32,
//         ),
//         Text(
//           title,
//           style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,
//         ),
//         const SizedBox(height: 16),
//         Text(
//           email ?? '',
//           style: Theme.of(context).textTheme.bodyLarge,
//         ),
//         const SizedBox(height: 16),
//         Text(
//           description,
//           style: Theme.of(context).textTheme.bodyMedium,
//           textAlign: TextAlign.center,
//         ),
//         const SizedBox(height: 32),
//         SizedBox(
//             width: double.maxFinite,
//             child: ElevatedButton(onPressed: onPress,
//             child: Text(elevatedButtonText))),
//         const SizedBox(height: 24),
//         TextButton(onPressed: resendButton, child: Text(resendButtonText ?? '')),
//       ],
//     );
//   }
// }