import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _currentIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);

  final List<Widget> _onBoardingCardItems = [
    const OnBoardingCard(),
    const OnBoardingCard(),
    const OnBoardingCard(),
  ];

  void animateTo(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 100),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            PageView(
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              onPageChanged: (int index) {
                animateTo(index);
                setState(() {
                  _currentIndex = index;
                });
              },
              children: _onBoardingCardItems,
            ),
            Positioned(
              bottom: size.height * 0.089,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                    _onBoardingCardItems.length,
                    (index) => OnBoardingDots(
                      isSelected: _currentIndex == index,
                      onPressed: () {
                        animateTo(index);
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: size.height * 0.060,
              right: 20,
              child: OnBoardingButton(
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
