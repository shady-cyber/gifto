import 'package:flutter/material.dart';

import '../shared/styles/colors.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: splashColor, elevation: 0, automaticallyImplyLeading: false,),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/main_bg.png'),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(image: AssetImage('assets/images/intro1_menu.png')),
              Image(image: AssetImage('assets/images/intro1.png')),
            ],
          ),
        ),
      ),
    );
  }
}
