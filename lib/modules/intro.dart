import 'package:flutter/material.dart';
import 'package:gifto/shared/components/widgets/introduction.dart';
import '../shared/styles/colors.dart';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: splashColor, elevation: 0, automaticallyImplyLeading: false,),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 25),
            color: splashColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, '/login');
                  },
                  child: const Icon(Icons.close, color: Colors.black45, size: 18),
                ),
                DotsIndicator(
                  itemCount: 4,
                  currentIndex: _currentPage,
                ),
              ],
            ),
          ),
          //SizedBox(height: 16),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                image: AssetImage('assets/images/main_bg.png'),
              fit: BoxFit.cover),
          ),
            child: PageView(
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: [
                  IntroductionWidget().firstPage(_currentPage, _pageController),
                  IntroductionWidget().secondPage(_currentPage, _pageController),
                  IntroductionWidget().thirdPage(_currentPage, _pageController),
                  IntroductionWidget().fourthPage(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
