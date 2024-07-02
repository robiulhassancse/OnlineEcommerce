import 'package:flutter/material.dart';

class TermsAndConditionCheckBox extends StatelessWidget {
  const TermsAndConditionCheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: true, onChanged: (value) {}),
        RichText(
          text: const TextSpan(children: [
            TextSpan(
              text: 'I agree to ',
              style: TextStyle(color: Colors.grey,fontSize: 16),),
            TextSpan(
                text: 'Privacy Policy ',
                style: TextStyle(
                    color: Colors.black54,
                    decoration: TextDecoration.underline,fontSize: 16)),
            TextSpan(
              text: ' and ',
              style: TextStyle(color: Colors.grey,fontSize: 16),),
            TextSpan(
                text: ' Terms of use ',
                style: TextStyle(
                    color: Colors.black54,
                    decoration: TextDecoration.underline,fontSize: 16)),
          ]),
        )
      ],
    );
  }
}