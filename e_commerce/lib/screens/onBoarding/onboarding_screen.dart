import 'package:e_commerce/screens/navigation/navigation_screen.dart';
import 'package:e_commerce/screens/onBoarding/widgets/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  static const String id = "onboarding_screen";

  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 80),
        child: PageView(
          onPageChanged: (index) {
            setState(() => isLastPage = index == 2);
          },
          controller: controller,
          children: [
            OnBoardingPage(
              color: Colors.pink.shade50,
              urlImage: "assets/page1.png",
              title: "Best Prices",
              subtitle: "Every day is a Black Friday in STORY",
            ),
            OnBoardingPage(
              color: Colors.green.shade50,
              urlImage: "assets/page2.png",
              title: "Easier Than Ever",
              subtitle: "Shopping with STORY comfy and easy",
            ),
            OnBoardingPage(
              color: Colors.blue.shade50,
              urlImage: "assets/page3.png",
              title: "Shop Together",
              subtitle: "Family and Friends are Here, Chat with them and ask their opinions",
            ),
          ],
        ),
      ),
      bottomSheet: isLastPage
          ? TextButton(
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.teal.shade700,
                minimumSize: const Size.fromHeight(80),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              onPressed: () async {
                Navigator.of(context).pushReplacementNamed(NavigationScreen.id);
              },
              child: Text(
                "Get Started",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            )
          : Container(
              height: 80,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () => controller.jumpToPage(2),
                    child: Text("SKIP", style: TextStyle(fontSize: 18),),
                    style: TextButton.styleFrom(primary: Colors.teal.shade700, ),
                  ),
                  Center(
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: 3,
                      effect: WormEffect(
                        spacing: 16,
                        dotColor: Colors.black26,
                        activeDotColor: Colors.teal.shade700,
                      ),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        controller.nextPage(
                            duration: Duration(milliseconds: 400),
                            curve: Curves.easeInOut);
                      },
                      child: Text("NEXT", style: TextStyle(fontSize: 18),),
                    style: TextButton.styleFrom(primary: Colors.teal.shade700, ),
                  ),
                ],
              ),
            ),
    );
  }
}
