import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:loadpayapp/screen/loginscreen.dart';
import 'package:loadpayapp/screen/registerscreen.dart';
import 'package:loadpayapp/utils/appimages.dart';

class LetsStartScreen extends StatefulWidget {
  const LetsStartScreen({super.key});

  @override
  State<LetsStartScreen> createState() => _LetsStartScreenState();
}

class _LetsStartScreenState extends State<LetsStartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Gap(60),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    '''Let's start your''',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 37),
                  ),
                  Text(
                    '''Schedule activity''',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 37),
                  ),
                  Gap(23),
                  Text(
                    'Welcome to our app, where you can manage your tasks efficiently.',
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                  Text(
                    'Organize your tasks and schedule them easily.',
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          const Gap(1),
          Image.asset(AppImage.scedule),
          const Gap(15),
          ElevatedButton(
            onPressed: () {
              Future.delayed(const Duration(seconds: 0), () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (ctx) => const RegisterScreen()),
                );
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 122.0,
                vertical: 22.0,
              ),
              textStyle: const TextStyle(fontSize: 18.0),
            ),
            child: const Text(
              'Create Account',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const Gap(15),
          Image.asset(AppImage.logwith),
          const Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('You Have Account?'),
              InkWell(
                onTap: () {
                  Future.delayed(const Duration(seconds: 0), () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (ctx) => const LoginScreen()),
                    );
                  });
                },
                child: const Text(
                  'Log in',
                  style: TextStyle(
                      color: Colors.deepPurple, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
