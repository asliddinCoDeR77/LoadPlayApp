import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:loadpayapp/screen/loginscreen.dart';
import 'package:loadpayapp/screen/number.dart';

class NumberVerifyScreen extends StatefulWidget {
  const NumberVerifyScreen({super.key});

  @override
  State<NumberVerifyScreen> createState() => _NumberVerifyScreenState();
}

class _NumberVerifyScreenState extends State<NumberVerifyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
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
                  'Country of recidance',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                Gap(20),
                Text(
                  '''Add your phone number for verefication number ''',
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
              ],
            )
          ],
        ),
        const Gap(20),
        Row(
          children: [
            Padding(padding: EdgeInsets.all(13)),
            Container(
              width: 90,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Row(
                  children: [
                    Icon(
                      Icons.flag,
                      size: 34,
                    ),
                    Icon(Icons.keyboard_arrow_down_sharp),
                    Text('+62')
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 290,
              child: TextField(
                obscureText: true,
                obscuringCharacter: "*",
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "",
                  hintText: "ID NUMBER",
                  focusedBorder: InputBorder.none,
                  filled: true,
                  fillColor: Colors.grey.shade100,
                ),
              ),
            ),
          ],
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
            Future.delayed(
              const Duration(seconds: 0),
              () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (ctx) => ConfirmPhoneNumber()),
                );
              },
            );
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
            'NEXT',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ]),
    );
  }
}
