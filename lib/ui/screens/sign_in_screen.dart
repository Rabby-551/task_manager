import 'package:flutter/material.dart';
import 'package:task_manager/widgets/screen_background.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {

    TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: ScreenBackground(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const SizedBox(
                height: 32,
              ),
              Text(
                'Get Started With',
                style:
                    textTheme.displaySmall?.copyWith(fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 24,),
              TextFormField(),
              TextFormField(),
            ],
          ),
        ),
      ),
    );
  }
}
