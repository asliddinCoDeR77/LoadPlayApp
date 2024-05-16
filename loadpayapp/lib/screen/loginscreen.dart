import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:loadpayapp/screen/registerscreen.dart';
import 'package:loadpayapp/utils/appimages.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  String passwordError = "";
  String emailError = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const Gap(80),
            const Row(
              children: [
                Padding(padding: EdgeInsets.all(12.0)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome back',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    Gap(20),
                    Text(
                      '''Let's Login to Connect your email ''',
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                  ],
                )
              ],
            ),
            const Gap(20),
            SizedBox(
              width: 360,
              child: TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: const Icon(Icons.email),
                  labelText: "name@example.com",
                  hintText: "Email",
                  focusedBorder: InputBorder.none,
                  errorText: emailError.isNotEmpty ? emailError : null,
                  filled: true,
                  fillColor: Colors.grey.shade200,
                ),
              ),
            ),
            const Gap(20),
            SizedBox(
              width: 360,
              child: TextField(
                controller: passwordController,
                obscureText: true,
                obscuringCharacter: "*",
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: const Icon(Icons.key),
                  suffixIcon: const Icon(CupertinoIcons.eye_slash_fill),
                  labelText: "Password",
                  hintText: "Password",
                  focusedBorder: InputBorder.none,
                  errorText: passwordError.isNotEmpty ? passwordError : null,
                  filled: true,
                  fillColor: Colors.grey.shade200,
                ),
              ),
            ),
            const Gap(20),
            const Row(
              children: [
                Padding(padding: EdgeInsets.all(12)),
                Text(
                  '''Forget your password ? ''',
                  style: TextStyle(fontWeight: FontWeight.w300),
                )
              ],
            ),
            const Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('''Don't have an account?'''),
                InkWell(
                  onTap: () {
                    Future.delayed(const Duration(seconds: 0), () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                            builder: (ctx) => const RegisterScreen()),
                      );
                    });
                  },
                  child: const Text(
                    'Sign up here',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  emailError = emailController.text.isEmpty
                      ? "Email cannot be empty"
                      : "";
                  passwordError = passwordController.text.isEmpty
                      ? "Password cannot be empty"
                      : "";
                });

                if (emailError.isEmpty && passwordError.isEmpty) {
                  Future.delayed(
                    const Duration(seconds: 0),
                    () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                            builder: (ctx) => const LoginScreen()),
                      );
                    },
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 160.0,
                  vertical: 22.0,
                ),
                textStyle: const TextStyle(fontSize: 18.0),
              ),
              child: const Text(
                'Log in',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const Gap(15),
            Image.asset(AppImage.logwith),
            const Gap(30),
          ],
        ),
      ),
    );
  }
}
