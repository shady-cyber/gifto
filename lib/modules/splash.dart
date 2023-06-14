import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/splash_bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TweenAnimationBuilder(
              onEnd: () {
                Navigator.pushNamed(context, '/intro');
              },
                tween: Tween<double>(begin: 0.0, end: 100),
                duration: const Duration(seconds: 2),
                builder: (BuildContext context, double size, Widget? child) {
                  return Image(
                      image: const AssetImage('assets/images/gift.png'),
                      width: size,
                      height: size);
                }),
            //  Image(image: AssetImage('assets/images/gift.png')),
            const Image(image: AssetImage('assets/images/mainlogo.png')),
          ],
        )),
      ),
    );
  }
}
