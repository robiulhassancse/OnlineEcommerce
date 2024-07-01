import 'package:flutter/material.dart';
import 'package:online_commerce/theme/theme.dart';
import 'package:online_commerce/utility/app_color.dart';
import 'package:online_commerce/widgets/list_of_onboard_image.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              const Image(
                height: 150,
                width: 150,
                image: AssetImage(OnboardImageList.appLogo),
              ),
              Text(
                'Welcome back,',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                  'Discover Limitless Choices and Unmatched Convenience Something,',
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center),
              const SizedBox(
                height: 10,
              ),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'E-mail',
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Password',
                          prefixIcon: Icon(
                            Icons.password,
                            color: AppColors.primaryColor,
                          ),
                          suffixIcon: const Icon(
                            Icons.remove_red_eye_outlined,
                            color: Colors.grey,
                          )),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(value: true, onChanged: (value) {}),
                            Text(
                              'Remember Me',
                              style: OnlineEcommerceTheme
                                  .lightTheme.textTheme.bodySmall,
                            ),
                          ],
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forget Password',
                            style: OnlineEcommerceTheme
                                .lightTheme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: double.maxFinite,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text('Sign In'),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(
                            onPressed: () {},
                            child: const Text('Create New Account'),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(child: Divider(thickness: 0.5,indent: 5,endIndent: 10,)),
                            Text('Or Sign in With'),
                            Flexible(child: Divider(thickness: 0.5,indent: 10,endIndent: 5,)),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: const Image(
                                  height: 22,
                                  width: 22,
                                  image: AssetImage(
                                    'assets/images/facebook.png',
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 16,),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: const Image(
                                  height: 20,
                                  width: 20,
                                  image: AssetImage(
                                    'assets/images/google.png',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
