import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:loadpayapp/screen/loginscreen.dart';
import 'package:loadpayapp/screen/numberverify.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String emailError = "";
  String passwordError = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Gap(40),
          Row(
            children: [
              const Padding(padding: EdgeInsets.all(4)),
              Container(
                height: 30,
                width: 60,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
                child: const Center(
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 17,
                  ),
                ),
              ),
            ],
          ),
          const Gap(10),
          const Row(
            children: [
              Padding(padding: EdgeInsets.all(12.0)),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome back',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
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
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: const Icon(Icons.person),
                labelText: "name",
                hintText: "name",
                focusedBorder: InputBorder.none,
                filled: true,
                fillColor: Colors.grey.shade200,
              ),
            ),
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
          const Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Do you have an account?'),
              InkWell(
                onTap: () {
                  Future.delayed(const Duration(seconds: 0), () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (ctx) => const LoginScreen()),
                    );
                  });
                },
                child: const Text(
                  'Sign In here',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (emailController.text.isEmpty) {
                  emailError = "Email cannot be empty";
                } else if (!isValidEmail(emailController.text)) {
                  emailError = "Invalid email format";
                } else {
                  emailError = "";
                }

                if (passwordController.text.isEmpty) {
                  passwordError = "Password cannot be empty";
                } else if (passwordController.text.length < 6) {
                  passwordError = "Password must be at least 6 characters long";
                } else {
                  passwordError = "";
                }
              });

              if (emailError.isEmpty && passwordError.isEmpty) {
                Future.delayed(
                  const Duration(seconds: 0),
                  () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (ctx) => const NumberVerifyScreen()),
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
              'Sign up',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  bool isValidEmail(String email) {
    String emailRegex = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
    return RegExp(emailRegex).hasMatch(email);
  }
}
