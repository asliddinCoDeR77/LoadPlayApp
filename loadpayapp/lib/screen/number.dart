import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Coniformnumber extends StatefulWidget {
  const Coniformnumber({super.key});

  @override
  State<Coniformnumber> createState() => _ConiformnumberState();
}

class _ConiformnumberState extends State<Coniformnumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
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
        ],
      ),
    );
  }
}
