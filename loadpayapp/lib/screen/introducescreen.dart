import 'package:flutter/material.dart';
import 'package:loadpayapp/screen/letsstartscreen.dart';
import 'package:loadpayapp/utils/appimages.dart';
import 'package:loadpayapp/widget/onBoarding.dart';

class IntroduceScreen extends StatefulWidget {
  const IntroduceScreen({super.key});

  @override
  State<IntroduceScreen> createState() => _IntroduceScreenState();
}

class _IntroduceScreenState extends State<IntroduceScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void _onPageChanged(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: _onPageChanged,
              children: const [
                OnboardingPage(
                  image: AppImage.scedule,
                  title: 'Welcome',
                  description:
                      'Welcome to our app, where you can manage your tasks efficiently.',
                ),
                OnboardingPage(
                  image: AppImage.calendar,
                  title: 'Organize',
                  description: 'Organize your tasks and schedule them easily.',
                ),
                OnboardingPage(
                  image: AppImage.task,
                  title: 'Track',
                  description:
                      'Track your progress and stay on top of your tasks.',
                ),
              ],
            ),
          ),
          _buildPageIndicator(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                Future.delayed(const Duration(seconds: 0), () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                        builder: (ctx) => const LetsStartScreen()),
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
                'Get Started',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPageIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 10.0),
          width: _currentPage == index ? 19.0 : 19.0,
          height: _currentPage == index ? 12.0 : 8.0,
          decoration: BoxDecoration(
              color: _currentPage == index ? Colors.blue : Colors.grey,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(23)),
        );
      }),
    );
  }
}
